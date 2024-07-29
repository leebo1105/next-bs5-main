import React, { useState } from 'react'
import { useRouter } from 'next/router'
import styles from './chatbotButton.module.css'
import Link from 'next/link'
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
        跟客服聯絡
      </button>
      <button
        className={`${styles.saveMoneyButton}`}
        onClick={handleSaveMoneyButtonClick}
      >
        我要儲值
      </button>

      {button && <ChatbotClient />}
    </div>
  )
}
