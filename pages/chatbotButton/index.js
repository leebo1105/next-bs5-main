import React, { useState } from 'react'
import styles from './chatbotButton.module.css'
import ChatbotClient from '../ChatbotClient'

export default function ChatbotButton() {
  const [button, setButton] = useState(false)

  const handleButton = () => {
    if (button == false) {
      setButton(true)
    } else {
      setButton(false)
    }
  }

  return (
    <div className={`${styles.indexArea}`}>
      <button className={`${styles.chatbotButton}`} onClick={handleButton}>
        跟客服聯絡
      </button>

      {button && <ChatbotClient />}
    </div>
  )
}
