import React, { useEffect } from 'react'
import styles from './ReserveCarousel.module.css'

export default function ReserveCarousel() {
  useEffect(() => {
    const disableScrollZoom = (event) => {
      event.preventDefault()
    }

    const iframes = document.querySelectorAll('iframe')

    iframes.forEach((iframe) => {
      iframe.addEventListener('wheel', disableScrollZoom)
    })

    return () => {
      iframes.forEach((iframe) => {
        iframe.removeEventListener('wheel', disableScrollZoom)
      })
    }
  }, [])

  return (
    <main>
      <div className={styles.SplineContainer}>
        <iframe
          src="https://my.spline.design/untitled-af942951130cce33e9c0f72f659506bb/"
          frameborder="0"
          width="100%"
          height="100%"
          title="牡丹樓的3D動畫"
        ></iframe>
      </div>
      <div className={styles.ButtonContainer}>
        <iframe
          src="https://my.spline.design/untitled-0a1e43fdfdfa42bd62812b4035cf447d/"
          frameborder="0"
          width="100%"
          height="100%"
          title="牡丹樓的3D預約按鈕"
        ></iframe>
      </div>
    </main>
  )
}
