import React, { useEffect, useRef } from 'react'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

export default function FirstPicture() {
  const aboutUsRef = useRef(null)
  const scrollDownRef = useRef(null)
  const frontpageLogoRef = useRef(null)

  const scrollToSection = (e) => {
    e.preventDefault()
    aboutUsRef.current.scrollIntoView({
      behavior: 'smooth',
      block: 'start',
      inline: 'nearest',
    })
  }

  const handleKeyDown = (e) => {
    if (e.key === 'Enter' || e.key === ' ') {
      scrollToSection(e)
    }
  }

  useEffect(() => {
    const handleScroll = () => {
      const scrollPos = window.scrollY
      const frontpageLogo = frontpageLogoRef.current
      const scrollDown = scrollDownRef.current

      if (frontpageLogo) {
        frontpageLogo.style.opacity = 1 - scrollPos / 300
        frontpageLogo.style.transform = `translateY(${scrollPos}px)`
        frontpageLogo.style.visibility = scrollPos > 300 ? 'hidden' : 'visible'
      }

      if (scrollDown) {
        scrollDown.style.opacity = 1 - scrollPos / 300
        scrollDown.style.visibility = scrollPos > 300 ? 'hidden' : 'visible'
      }
    }

    window.addEventListener('scroll', handleScroll)

    return () => {
      window.removeEventListener('scroll', handleScroll)
    }
  }, [])
  return (
    <>
      <div className="frontpage">
        <div className="frontpage-logo">
          <img src="/pics/logo-gold.png" alt="" />
        </div>
        <div id="scroll-down">
          <FontAwesomeIcon
            icon="fa-solid fa-angles-down"
            onClick={scrollToSection}
            className="arrow animate__animated animate__pulse animate__slow animate__infinite"
            role="button"
            onKeyDown={handleKeyDown}
            tabIndex="0"
          />
        </div>
        <div className="overlay"></div>
        <img
          className="frontpage-img"
          src="images/mudanlow-小圖檔/DSC00618.jpg"
          alt=""
        />
      </div>
      <style jsx>{`
        .frontpage-logo img,
        #scroll-down {
          transition: transform 0.3s ease;
        }
        #scroll-down {
          cursor: pointer;
        }
        .frontpage {
          height: 100vh;
          position: relative;
        }

        .arrow {
          z-index: 8;
          position: absolute;
          color: #fff;
          font-size: 70px;
          top: 60%;
          left: 48.5%;
          transform: translate(-50%, -50%);
        }
        /* 首頁logo */
        .frontpage-logo {
          position: absolute;
          z-index: 8;
          top: 40%;
          left: 50%;
          transform: translate(-50%, -50%);
        }
        .frontpage-logo > img {
          height: 200px;
        }

        .frontpage-img {
          width: 100%;
          height: 100%;
          object-fit: cover;
        }

        .overlay {
          width: 100%;
          height: 100vh;
          background: #000;
          opacity: 0.5;
          position: absolute;
        }
      `}</style>
    </>
  )
}