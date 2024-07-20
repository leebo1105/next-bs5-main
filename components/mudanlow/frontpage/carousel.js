import React, { useState, useEffect, useRef } from 'react'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import {
  faChevronLeft,
  faChevronRight,
} from '@fortawesome/free-solid-svg-icons'

export default function FrontPageCarousel() {
  const cardsContainerRef = useRef(null)
  const [currentIndex, setCurrentIndex] = useState(0)
  const totalCards = 5

  const handleNext = () => {
    setCurrentIndex((prevIndex) => (prevIndex + 1) % totalCards)
  }

  const handlePrev = () => {
    setCurrentIndex((prevIndex) => (prevIndex - 1 + totalCards) % totalCards)
  }

  useEffect(() => {
    const cardsContainer = cardsContainerRef.current

    if (!cardsContainer) return

    class DraggingEvent {
      constructor(target = undefined) {
        this.target = target
      }

      event(callback) {
        let handler

        this.target.addEventListener('mousedown', (e) => {
          e.preventDefault()

          handler = callback(e)

          window.addEventListener('mousemove', handler)
          document.addEventListener('mouseleave', clearDraggingEvent)
          window.addEventListener('mouseup', clearDraggingEvent)

          function clearDraggingEvent() {
            window.removeEventListener('mousemove', handler)
            window.removeEventListener('mouseup', clearDraggingEvent)
            document.removeEventListener('mouseleave', clearDraggingEvent)

            handler(null)
          }
        })

        this.target.addEventListener('touchstart', (e) => {
          handler = callback(e)

          window.addEventListener('touchmove', handler)
          window.addEventListener('touchend', clearDraggingEvent)
          document.body.addEventListener('mouseleave', clearDraggingEvent)

          function clearDraggingEvent() {
            window.removeEventListener('touchmove', handler)
            window.removeEventListener('touchend', clearDraggingEvent)

            handler(null)
          }
        })
      }

      getDistance(callback) {
        const distanceInit = (e1) => {
          let startingX, startingY

          if ('touches' in e1) {
            startingX = e1.touches[0].clientX
            startingY = e1.touches[0].clientY
          } else {
            startingX = e1.clientX
            startingY = e1.clientY
          }

          return (e2) => {
            if (e2 === null) {
              return callback(null)
            } else {
              if ('touches' in e2) {
                return callback({
                  x: e2.touches[0].clientX - startingX,
                  y: e2.touches[0].clientY - startingY,
                })
              } else {
                return callback({
                  x: e2.clientX - startingX,
                  y: e2.clientY - startingY,
                })
              }
            }
          }
        }

        this.event(distanceInit)
      }
    }

    class CardCarousel extends DraggingEvent {
      constructor(container) {
        super(container)

        this.container = container
        this.cards = Array.from(container.querySelectorAll('.ImgCard'))

        this.centerIndex = (this.cards.length - 1) / 2
        this.cardWidth =
          (this.cards[0].offsetWidth / this.container.offsetWidth) * 100
        this.xScale = {}

        window.addEventListener('resize', this.updateCardWidth.bind(this))

        this.build()
        super.getDistance(this.moveCards.bind(this))
      }

      updateCardWidth() {
        this.cardWidth =
          (this.cards[0].offsetWidth / this.container.offsetWidth) * 100
        this.build()
      }

      build(fix = 0) {
        this.cards.forEach((card, i) => {
          const x = i - this.centerIndex
          const scale = this.calcScale(x)
          const scale2 = this.calcScale2(x)
          const zIndex = -Math.abs(i - this.centerIndex)

          const leftPos = this.calcPos(x, scale2)

          this.xScale[x] = card

          this.updateCards(card, {
            x: x,
            scale: scale,
            leftPos: leftPos,
            zIndex: zIndex,
          })
        })
      }

      calcPos(x, scale) {
        let formula

        if (x < 0) {
          formula = (scale * 100 - this.cardWidth) / 2
          return formula
        } else if (x > 0) {
          formula = 100 - (scale * 100 + this.cardWidth) / 2
          return formula
        } else {
          formula = 100 - (scale * 100 + this.cardWidth) / 2
          return formula
        }
      }

      updateCards(card, data) {
        if (data.x !== undefined) {
          card.setAttribute('data-x', data.x)
        }

        if (data.scale !== undefined) {
          card.style.transform = `scale(${data.scale})`

          if (data.scale === 0) {
            card.style.opacity = data.scale
          } else {
            card.style.opacity = 1
          }
        }

        if (data.leftPos !== undefined) {
          card.style.left = `${data.leftPos}%`
        }

        if (data.zIndex !== undefined) {
          if (data.zIndex === 0) {
            card.classList.add('highlight')
          } else {
            card.classList.remove('highlight')
          }

          card.style.zIndex = data.zIndex
        }
      }

      calcScale2(x) {
        let formula

        if (x <= 0) {
          formula = 1 - (-1 / 5) * x
          return formula
        } else if (x > 0) {
          formula = 1 - (1 / 5) * x
          return formula
        }
      }

      calcScale(x) {
        const formula = 1 - (1 / 5) * Math.pow(x, 2)

        if (formula <= 0) {
          return 0
        } else {
          return formula
        }
      }

      checkOrdering(card, x, xDist) {
        const original = parseInt(card.dataset.x)
        const rounded = Math.round(xDist)
        let newX = x

        if (x !== x + rounded) {
          if (x + rounded > original) {
            if (x + rounded > this.centerIndex) {
              newX =
                x + rounded - 1 - this.centerIndex - rounded + -this.centerIndex
            }
          } else if (x + rounded < original) {
            if (x + rounded < -this.centerIndex) {
              newX =
                x + rounded + 1 + this.centerIndex - rounded + this.centerIndex
            }
          }

          this.xScale[newX + rounded] = card
        }

        const temp = -Math.abs(newX + rounded)

        this.updateCards(card, { zIndex: temp })

        return newX
      }

      moveCards(data) {
        let xDist

        if (data !== null) {
          this.container.classList.remove('smooth-return')
          xDist = data.x / 250
        } else {
          this.container.classList.add('smooth-return')
          xDist = 0

          for (let x in this.xScale) {
            this.updateCards(this.xScale[x], {
              x: x,
              zIndex: Math.abs(Math.abs(x) - this.centerIndex),
            })
          }
        }

        this.cards.forEach((card, i) => {
          const x = this.checkOrdering(card, parseInt(card.dataset.x), xDist)
          const scale = this.calcScale(x + xDist)
          const scale2 = this.calcScale2(x + xDist)
          const leftPos = this.calcPos(x + xDist, scale2)

          this.updateCards(card, {
            scale: scale,
            leftPos: leftPos,
          })
        })
      }
    }

    const carousel = new CardCarousel(cardsContainer)

    return () => {
      // Clean-up
    }
  }, [])

  return (
    <section
      id="trending-products"
      className="section-secondary-color carouselSection background1"
    >
      <div className="row d-flex justify-content-center">
        <div className="col-5 text-center">
          <h2 className="display-4 lxgw-wenkai-mono-tc-bold frontTitle">
            餐點介紹
          </h2>
          <div className="text-center frontTitle text-dark py-5 lxgw-wenkai-mono-tc-regular fs-5 ">
            我們餐廳提供豐富多樣的美食選擇，從精緻的開胃小菜到美味的主菜和甜品，每道菜品均選用新鮮食材，精心烹製。無論是傳統風味還是創新料理，都能滿足您的味蕾。邀請您來享受一場美食盛宴。
          </div>
        </div>
        <div className="col-7">
          <div className="container-fluid d-flex justify-content-center position-relative">
            <div
              ref={cardsContainerRef}
              className="cardCarousel d-flex justify-content-center position-relative"
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
                  id={index + 1}
                >
                  <div className="imageContainer"></div>
                  <button className="carouselBtn">查看菜單</button>
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
  )
}
