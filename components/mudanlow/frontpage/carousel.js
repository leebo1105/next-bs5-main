import React, { useState, useEffect, useRef } from 'react'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import {
  faChevronLeft,
  faChevronRight,
} from '@fortawesome/free-solid-svg-icons'
import Link from 'next/link'

export default function FrontPageCarousel() {
  const cardsContainerRef = useRef(null)
  const [currentIndex, setCurrentIndex] = useState(0)
  const totalCards = 5
  const [isDragging, setIsDragging] = useState(false)
  const [startX, setStartX] = useState(0)
  const [currentTranslate, setCurrentTranslate] = useState(0)

  const handleNext = () => {
    setCurrentIndex((prevIndex) => (prevIndex + 1) % totalCards)
  }

  const handlePrev = () => {
    setCurrentIndex((prevIndex) => (prevIndex - 1 + totalCards) % totalCards)
  }

  const handleMouseDown = (e) => {
    setIsDragging(true)
    setStartX(e.clientX)
  }

  const handleMouseMove = (e) => {
    if (!isDragging) return
    const deltaX = e.clientX - startX
    setCurrentTranslate(deltaX)
  }

  const handleMouseUp = () => {
    if (!isDragging) return
    if (currentTranslate > 50) {
      handlePrev()
    } else if (currentTranslate < -50) {
      handleNext()
    }
    setIsDragging(false)
    setCurrentTranslate(0)
  }

  useEffect(() => {
    const cardsContainer = cardsContainerRef.current

    if (!cardsContainer) return

    const radius = 200 // 圓柱體的半徑
    const angle = (2 * Math.PI) / totalCards

    const cards = cardsContainer.querySelectorAll('.ImgCard')

    cards.forEach((card, index) => {
      const theta =
        (index - currentIndex) * angle +
        (currentTranslate / window.innerWidth) * angle
      const x = radius * Math.sin(theta)
      const z = radius * (Math.cos(theta) - 1) // 調整z軸位移，減少前後落差
      const scale = 0.8 + 0.2 * Math.cos(theta) // 使縮放比例更平滑

      card.style.transform = `translateX(${x}px) translateZ(${z}px) scale(${scale})`
      card.style.zIndex = Math.round(scale * 5) // 調整z-index範圍到0到5之間
      card.style.opacity = scale
      card.style.transition = isDragging ? 'none' : 'transform 0.5s ease-in-out'
    })

    const handleMouseUpWindow = () => {
      if (isDragging) {
        handleMouseUp()
      }
    }

    window.addEventListener('mouseup', handleMouseUpWindow)
    window.addEventListener('mousemove', handleMouseMove)

    return () => {
      window.removeEventListener('mouseup', handleMouseUpWindow)
      window.removeEventListener('mousemove', handleMouseMove)
    }
  }, [currentIndex, currentTranslate, isDragging])

  return (
    <>
      <section
        id="trending-products"
        className="section-secondary-color carouselSection background1 py-5"
      >
        <div className="row d-flex justify-content-center flex-lg-row">
          <div className="col-lg-3 col-md-12 col-sm-12 col text-center">
            <h2 className="display-4 lxgw-wenkai-mono-tc-bold">餐點介紹</h2>
            <div className="container-fluid text-center text-dark py-5 lxgw-wenkai-mono-tc-regular fs-5">
              我們餐廳提供豐富多樣的美食選擇，從精緻的開胃小菜到美味的主菜和甜品，每道菜品均選用新鮮食材，精心烹製。無論是傳統風味還是創新料理，都能滿足您的味蕾。邀請您來享受一場美食盛宴。
            </div>
          </div>
          <div className="col-lg-7 col-md-12 col-sm-12">
            <div className="container-fluid d-flex justify-content-center position-relative">
              <div
                ref={cardsContainerRef}
                className="cardCarousel d-flex justify-content-center position-relative"
                onMouseDown={handleMouseDown}
                onMouseMove={handleMouseMove}
                onMouseUp={handleMouseUp}
                onMouseLeave={handleMouseUp}
              >
                <FontAwesomeIcon
                  icon={faChevronLeft}
                  width={70}
                  className="preBtn"
                  onClick={handlePrev}
                />
                {[...Array(totalCards)].map((_, index) => (
                  <div
                    key={index}
                    className={`ImgCard ${
                      index === currentIndex ? 'highlight' : ''
                    }`}
                  >
                    <div className="imageContainer">
                      <img
                        src={`/images/carousel/${index + 1}.jpg`}
                        alt={`Slide ${index + 1}`}
                        className="carouselImage"
                      />
                    </div>
                    <Link href="/menu">
                      <button className="carouselBtn">查看菜單</button>
                    </Link>
                  </div>
                ))}
                <FontAwesomeIcon
                  icon={faChevronRight}
                  width={70}
                  className="nextBtn"
                  onClick={handleNext}
                />
              </div>
            </div>
          </div>
        </div>
      </section>
      <style jsx>{`
        .cardCarousel {
          --card-width: 600px;
          --card-height: 400px;
          z-index: 0;
          position: relative;
          margin: 0 auto;
          width: 100%;
          height: var(--card-height);
          perspective: 1000px;
          transition: filter 0.3s ease;
          user-select: none;
          cursor: grab;
        }

        .cardCarousel.smoothReturn {
          transition: all 0.2s ease;
        }

        .cardCarousel .ImgCard {
          backdrop-filter: blur(10px);
          width: var(--card-width);
          height: var(--card-height);
          text-align: center;
          padding: 1em;
          position: absolute;
          color: rgba(0, 0, 0, 0.5);
          transition: transform 0.5s ease-in-out, opacity 0.5s ease-in-out;
          box-shadow: 0px 5px 5px 0px rgba(0, 0, 0, 0.3);
          border-radius: 1em;
          display: flex;
          flex-direction: column;
          align-items: center;
          justify-content: center;
          transform-style: preserve-3d;
        }

        .imageContainer {
          width: 100%;
          height: 100%;
          background-size: cover;
          border-radius: 1em;
        }

        .carouselImage {
          width: 100%;
          height: 100%;
          object-fit: cover;
        }

        .cardCarousel:active {
          cursor: grabbing;
        }

        .carouselBtn {
          position: absolute;
          bottom: 30px;
          left: 45%;
          background-color: #465952;
          color: #ffffff;
          font-size: 24px;
          border-radius: 10px;
          padding: 2px 4px;
          cursor: pointer;
        }

        @media (min-width: 1440px) {
          .cardCarousel {
            --card-width: 600px;
            --card-height: 400px;
            perspective: 1000px;
          }
          .carouselBtn {
            position: absolute;
            bottom: 30px;
            background-color: #465952;
            color: #ffffff;
            font-size: 24px;
            border-radius: 10px;
            padding: 2px 4px;
            cursor: pointer;
          }
        }

        @media (max-width: 1880px) {
          .cardCarousel {
            --card-width: 60%;
            perspective: 400px;
          }
          .carouselBtn {
            height: 50px;
          }
        }
        @media (max-width: 1440px) {
          .cardCarousel {
            --card-width: 70%;
            perspective: 300px;
          }
          .carouselBtn {
            height: 50px;
            font-size: 20px;
          }
        }

        @media (max-width: 1200px) {
          .cardCarousel {
            --card-width: 70%;
            perspective: 300px;
          }
        }

        @media (max-width: 1024px) {
          .cardCarousel {
            --card-width: 60%;
            perspective: 300px;
          }
        }
        @media (max-width: 992px) {
          .cardCarousel {
            --card-width: 60%;
            perspective: 300px;
          }
        }

        @media (max-width: 768px) {
          .cardCarousel {
            --card-width: 60%;
            perspective: 300px;
          }
        }

        @media (max-width: 576px) {
          .cardCarousel {
            --card-width: 80%;
            perspective: 100px;
          }
          .carouselBtn {
            height: 40px;
            font-size: 16px;
          }
        }
      `}</style>
    </>
  )
}
