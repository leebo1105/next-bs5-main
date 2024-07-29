import React, { useState } from 'react'
import { useRouter } from 'next/router'
import styles from './chatbotButton.module.css'
import Link from 'next/link'
import Image from 'next/image'
import ChatbotClient from '../ChatbotClient'

export default function ChatbotButton() {
  const [button, setButton] = useState(false)
  const router = useRouter()

  const handleButton = () => {
    if (button == false) {
      setButton(true)
    } else {
      setButton(false)
    }
  }
  const handleSaveMoneyButtonClick = () => {
    router.push('/SaveMoneySystem')
  }

  return (
    <div className={`${styles.indexArea}`}>
      <button className={`${styles.chatbotButton}`} onClick={handleButton}>
        <Image
          width={30}
          height={30}
          className={`${styles.chatbotButtonImage}`}
          alt="CreditCard"
          src="/images/chatbot/message.png"
        ></Image>
        聯絡客服
      </button>

      <button
        className={`${styles.saveMoneyButton}`}
        onClick={handleSaveMoneyButtonClick}
      >
        <Image
          width={30}
          height={30}
          alt="CreditCard"
          className={`${styles.saveMoneyButtonImage}`}
          src="/images/chatbot/CreditCard.png"
        ></Image>
        我要儲值
      </button>

      {button && <ChatbotClient />}
    </div>
  )
}
