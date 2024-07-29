import React, { useEffect, useState, useRef } from 'react'
import { useSpring, animated } from 'react-spring'
import Image from 'next/image'
import io from 'socket.io-client'
import styles from './ChatbotClient.module.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import {
  faAngleLeft,
  faAngleRight,
  faCheck,
  faCheckDouble,
  faXmark,
} from '@fortawesome/free-solid-svg-icons'
import toast, { Toaster } from 'react-hot-toast'

const socket = io.connect('http://localhost:3002')

function ChatbotClient() {
  const [room] = useState('room2')
  const [message, setMessage] = useState('')
  const [messages, setMessages] = useState([])
  const [memberId, setMemberId] = useState(0)
  const [isMerchant, setIsMerchant] = useState(false)
  const [typing, setTyping] = useState(false)
  const [lastMessage, setLastMessage] = useState('')
  const [status, setStatus] = useState(null)
  const [isOnlineContainerVisible, setOnlineContainerVisible] = useState(true)
  const [isChatVisible, setChatVisible] = useState(true)
  const [isClosing, setIsClosing] = useState(false)

  const typingAnimation = useSpring({
    opacity: typing ? 1 : 0,
    config: { duration: 2000 },
    reset: true,
  })

  const chatAnimation = useSpring({
    opacity: isChatVisible ? 1 : 0,
    transform: isChatVisible ? 'translateY(0%)' : 'translateY(100%)',
    config: { tension: 220, friction: 30 },
    onRest: () => {
      if (!isChatVisible) {
        setIsClosing(false)
      }
    },
  })

  const formatTimestamp = (timestamp) => {
    const date = new Date(timestamp)
    return date.toLocaleTimeString([], {
      hour: '2-digit',
      minute: '2-digit',
      hour12: false,
    })
  }

  useEffect(() => {
    scrollToBottom()
  }, [messages])

  const messagesEndRef = useRef(null)

  const scrollToBottom = () => {
    if (messagesEndRef.current) {
      messagesEndRef.current.scrollIntoView({ behavior: 'smooth' })
    }
    console.log('scrollToBottom')
  }

  const fetchRecentReservation = async () => {
    try {
      const response = await fetch(
        `http://localhost:3001/reserve/reservationsOrder/${memberId}`
      )
      if (!response.ok) {
        throw new Error('查詢預約資訊失敗')
      }
      const data = await response.json()

      const reservationMessage = `
        <ul>
          <li>預約日期：${data.selectedDate}</li>
          <li>預約時間：${data.selectedTime}</li>
          <li>預約人數：${data.numberOfPeople}</li>
          <li>選擇菜單：${data.menuSelect}</li>
          <li>桌型選擇：${data.selectedTableType}</li>
        </ul>
      `
      const sender = memberId === 1 ? 1 : 2

      setMessages((prevMessages) => [
        ...prevMessages,
        { message: reservationMessage, sender: sender, type: 'system' },
      ])
      scrollToBottom()
    } catch (error) {
      console.error('錯誤查詢最近預約的原因:', error)
      toast.error('您還沒有預約唷~~~')
    }
  }

  const fetchLastMessage = async () => {
    try {
      const response = await fetch('http://localhost:3001/history/lastMessage')
      const data = await response.json()
      if (data && data.lastMessage) {
        setLastMessage(data.lastMessage.message)
        setStatus(data.lastMessage.status)
        console.log(data.lastMessage.status)
      }
      console.log(data.lastMessage)
      console.log('fetchLastMessage')
    } catch (error) {
      console.error('Error fetching last message:', error)
    }
  }

  useEffect(() => {
    const loadHistoryMessages = async () => {
      try {
        const response = await fetch('http://localhost:3001/history')
        if (response.ok) {
          const history = await response.json()
          setMessages(history)

          socket.emit('roomRestart', { room })

          if (history.length > 0) {
            const latestMessage = history[history.length - 1]
            setStatus(latestMessage.isRead === 1 ? 'read' : 'sent')
            setLastMessage(latestMessage.message)

            history.forEach((msg) => {
              if (!msg.isRead && msg.sender !== memberId) {
                socket.emit('messageRead', {
                  room,
                  sender: memberId,
                  id: msg.id,
                })
              }
            })
          }
        } else {
          throw new Error('Failed to load message history')
        }
      } catch (error) {
        console.error('Failed to load message history:', error)
      }
    }

    loadHistoryMessages()

    const storedMemberId = localStorage.getItem('memberId')
    if (storedMemberId) {
      setMemberId(parseInt(storedMemberId))
      setIsMerchant(parseInt(storedMemberId) === 1)
    }

    socket.on('newMessage', async (newMessage) => {
      if (newMessage.sender !== memberId && !newMessage.isRead) {
        socket.emit('messageRead', {
          room,
          sender: memberId,
          id: newMessage.id,
        })
      }

      if (newMessage.sender !== memberId) {
        setMessages((prevMessages) => [
          ...prevMessages,
          {
            ...newMessage,
          },
        ])
      }

      await fetchLastMessage()
      setTyping(false)
    })

    socket.on('newImageMessage', async (imageMessage) => {
      if (imageMessage.sender !== memberId && !imageMessage.isRead) {
        socket.emit('messageRead', {
          room,
          sender: memberId,
          id: imageMessage.id,
        })
      }

      if (imageMessage.sender !== memberId) {
        setMessages((prevMessages) => [
          ...prevMessages,
          {
            ...imageMessage,
          },
        ])
      }

      await fetchLastMessage()
      setTyping(false)
    })

    socket.on('roomRestart', async () => {
      await fetchLastMessage()
    })

    socket.on('typing', (data) => {
      if (data.sender !== memberId) {
        setTyping(true)
        setTimeout(() => setTyping(false), 4000)
      }
    })

    socket.on('messageRead', async (data) => {
      setMessages((prevMessages) =>
        prevMessages.map((msg) =>
          msg.id === data.id ? { ...msg, status: 'read' } : msg
        )
      )
      await fetchLastMessage()
    })
    return () => {
      socket.off('newMessage')
      socket.off('typing')
      socket.off('messageRead')
      socket.off('roomRestart')
      socket.off('newImageMessage')
    }
  }, [memberId])

  const sendMessage = () => {
    if (message.trim() !== '') {
      const messageData = {
        message,
        room,
        sender: memberId,
        isMerchant,
        timestamp: new Date(),
        id: new Date().getTime(),
        isRead: false,
      }

      socket.emit('sendMessage', messageData)
      setMessages((prevMessages) => [
        ...prevMessages,
        {
          ...messageData,
        },
      ])
      setLastMessage(messageData.message)
      setStatus('sent')
      setMessage('')
    }
  }

  const handleImageUpload = async (event) => {
    const file = event.target.files[0]
    if (file) {
      const reader = new FileReader()
      reader.onloadend = () => {
        const imageMessage = {
          message: reader.result, // 使用 base64 圖片數據
          room,
          sender: memberId,
          isMerchant,
          timestamp: new Date(),
          isRead: false,
          type: 'image', // 標記此消息為圖片類型
        }

        // 發送圖片訊息到 Socket.IO
        socket.emit('sendImage', imageMessage)
        setMessages((prevMessages) => [...prevMessages, imageMessage])
        setLastMessage(imageMessage.message)
        setStatus('sent')
      }
      reader.readAsDataURL(file) // 讀取文件
    }
  }

  const handleTyping = () => {
    socket.emit('typing', { room, sender: memberId })
    scrollToBottom()
  }

  const toggleOnlineContainer = () => {
    setOnlineContainerVisible(!isOnlineContainerVisible)
  }

  const closeChat = () => {
    setIsClosing(true)
    setChatVisible(false)
  }

  return (
    <>
      {isChatVisible || isClosing ? (
        <animated.div style={chatAnimation} className={`${styles.outerLayer}`}>
          <div
            className={`${styles.onlineContainer} ${
              isOnlineContainerVisible ? styles.visible : styles.hidden
            }`}
          >
            <div className={styles.userName}>
              <Image
                src={
                  memberId !== 1
                    ? '/images/chatbot/avatar-a.jpg'
                    : '/images/chatbot/avatar-b.jpg'
                }
                alt="Avatar"
                width={40}
                height={40}
                className={styles.avatar}
              />
              <div className={styles.previewMessage}>
                <h5>{`${memberId !== 1 ? '牡丹樓客服' : '岳泓'}`}</h5>
                <div>{lastMessage}</div>
              </div>
            </div>
          </div>
          <div
            className={`${styles.chatContainer} ${
              !isOnlineContainerVisible ? styles.expanded : ''
            }`}
          >
            <div className={styles.chatUserName}>
              <FontAwesomeIcon
                icon={
                  isOnlineContainerVisible == true ? faAngleRight : faAngleLeft
                }
                height={30}
                onClick={toggleOnlineContainer}
                className={styles.faAngleRight}
              />
              <Image
                src={
                  memberId !== 1
                    ? '/images/chatbot/avatar-a.jpg'
                    : '/images/chatbot/avatar-b.jpg'
                }
                alt="Avatar"
                width={40}
                height={40}
                className={styles.avatar2}
              />
              <h6>{`${memberId !== 1 ? '牡丹樓客服' : '岳泓'}`}</h6>
              <button
                onClick={() => fetchRecentReservation()}
                className={styles.reservationsOrder}
              >
                <h6>查詢最近預約</h6>
              </button>
              <FontAwesomeIcon
                icon={faXmark}
                height={30}
                onClick={closeChat}
                className={styles.faXmark}
              />
            </div>
            <div className={styles.messagesContainer}>
              {messages.map((msg, index) => (
                <div
                  key={index}
                  className={`${styles.messageRow} ${
                    msg.sender === memberId
                      ? styles.messageRight
                      : styles.messageLeft
                  }`}
                >
                  <Image
                    src={
                      msg.sender === 1
                        ? '/images/chatbot/avatar-a.jpg'
                        : '/images/chatbot/avatar-b.jpg'
                    }
                    alt="Avatar"
                    width={40}
                    height={40}
                    className={styles.avatar}
                  />
                  <div
                    className={`${styles.message} ${
                      msg.sender === 1
                        ? styles.messageUser
                        : styles.messageMerchant
                    } ${msg.type === 'system' ? styles.system : ''}`}
                  >
                    {msg.type === 'image' ? (
                      <img
                        src={msg.message}
                        alt="Uploaded"
                        className={styles.imageMessage}
                      />
                    ) : (
                      <div dangerouslySetInnerHTML={{ __html: msg.message }} />
                    )}
                  </div>
                  {msg.type !== 'system' && (
                    <div className={styles.timestamp}>
                      {formatTimestamp(msg.timestamp)}
                      {index === messages.length - 1 && (
                        <FontAwesomeIcon
                          icon={status === 'read' ? faCheckDouble : faCheck}
                          className={styles.statusIcon}
                        />
                      )}
                    </div>
                  )}
                </div>
              ))}
              {typing && (
                <animated.div style={typingAnimation}>
                  對方正在輸入中...
                </animated.div>
              )}
              <div ref={messagesEndRef} className={styles.messagesEndRef} />
            </div>
            <div className={styles.messageInputContainer}>
              <input
                type="text"
                placeholder="輸入訊息..."
                value={message}
                onChange={(event) => {
                  setMessage(event.target.value)
                  handleTyping()
                }}
                onKeyDown={(event) => {
                  if (event.keyCode === 13) {
                    sendMessage()
                  }
                }}
                className={styles.messageInput}
              />
              <input
                type="file"
                accept="image/*"
                style={{ display: 'none' }} // 隱藏文件輸入
                id="imageUpload" // 添加 id 以便連結
                onChange={handleImageUpload} // 添加事件處理
              />

              <label htmlFor="imageUpload" className={styles.uploadButton}>
                上傳圖片
              </label>

              <button
                onClick={sendMessage}
                className={styles.sendMessageButton}
              >
                傳送
              </button>
              <Toaster />
            </div>
          </div>
        </animated.div>
      ) : null}
    </>
  )
}

export default ChatbotClient
