import React, { useState } from 'react'
import styles from './navbar.module.scss'
import Image from 'next/image'

export default function Navbar() {
  const [isCanvasActive, setIsCanvasActive] = useState(false)
  const [isDropdownActive, setIsDropdownActive] = useState(false)

  const toggleCanvas = () => {
    setIsCanvasActive(!isCanvasActive)
  }

  const toggleDropdown = (e) => {
    e.preventDefault()
    setIsDropdownActive(!isDropdownActive)
  }

  const handleKeyPress = (e, action) => {
    if (e.key === 'Enter' || e.key === ' ') {
      action()
    }
  }
  return (
    <>
      <div className={styles.stickyNavbar}>
        <div className="d-flex">
          <a href="#" data-nav-section="frontpage" className={styles.navLink}>
            主頁
          </a>
          <div className={styles.navItem}>
            <a href="#" data-nav-section="about" className={styles.navLink}>
              關於我們
            </a>
            <div className={styles.dropdownContent}>
              <a href="#">區域介紹</a>
              <a href="#">最新消息</a>
              <a href="#">人才招募</a>
            </div>
          </div>
          <a href="#" data-nav-section="menu" className={styles.navLink}>
            菜單
          </a>
          <a href="#" data-nav-section="shopping" className={styles.navLink}>
            購物專區
          </a>
        </div>
        <div className="logo-link">
          <a href="#" data-nav-section="home">
            <Image
              className={styles.navbarLogo}
              src="/pics/logo-gold.png"
              width={180}
              height={50}
              alt="Logo"
              priority
            />
          </a>
        </div>
        <div className="d-flex">
          <a href="#" data-nav-section="reservation" className={styles.navLink}>
            立即預約
          </a>
          <a href="#" data-nav-section="order" className={styles.navLink}>
            我的訂單
          </a>
          <a href="#" data-nav-section="sign" className={styles.navLink}>
            註冊
          </a>
          <a href="#" data-nav-section="login" className={styles.navLink}>
            登入
          </a>
        </div>
        <div
          className={styles.hamburger}
          onClick={toggleCanvas}
          onKeyDown={(e) => handleKeyPress(e, toggleCanvas)}
          id="hamburger"
        >
          <div className={styles.bar1}></div>
          <div className={styles.bar2}></div>
          <div className={styles.bar3}></div>
        </div>
      </div>
      <div
        className={`${styles.offcanvasContent} ${
          isCanvasActive ? styles.active : ''
        }`}
        id="offcanvas"
      >
        <ul>
          <li>
            <a href="#" className={styles.canvasLink}>
              <div>主頁</div>
            </a>
          </li>
          <li>
            <a
              href="#"
              className={styles.canvasLink}
              id="aboutUsLink"
              onClick={toggleDropdown}
              onKeyPress={(e) => handleKeyPress(e, toggleDropdown)}
              tabIndex={0}
            >
              <div>
                關於我們 <i className="fa-solid fa-caret-down"></i>
                <i className="fa-solid fa-caret-up"></i>
              </div>
            </a>
            <div
              className={`${styles.dropdown} ${
                isDropdownActive ? styles.show : ''
              }`}
              id="aboutUsDropdown"
            >
              <ul className="dropdown-item">
                <li className={styles.dropdownLink}>
                  <a href="#">區域介紹</a>
                </li>
                <li className={styles.dropdownLink}>
                  <a href="#">最新消息</a>
                </li>
                <li className={styles.dropdownLink}>
                  <a href="#">人才招募</a>
                </li>
              </ul>
            </div>
          </li>
          <li>
            <a href="#" className={styles.canvasLink}>
              菜單
            </a>
          </li>
          <li>
            <a href="#" className={styles.canvasLink}>
              購物專區
            </a>
          </li>
          <li>
            <a href="#" className={styles.canvasLink}>
              立即預約
            </a>
          </li>
          <li>
            <a href="#" className={styles.canvasLink}>
              我的訂單
            </a>
          </li>
          <li>
            <a href="#" className={styles.canvasLink}>
              註冊
            </a>
          </li>
          <li>
            <a href="#" className={styles.canvasLink}>
              登入
            </a>
          </li>
        </ul>
      </div>
    </>
  )
}