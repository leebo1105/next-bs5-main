import React, { useState, useEffect, useRef } from 'react'
import toast from 'react-hot-toast'
import axiosInstance from '@/services/axios-instance'
import { ProgressBar } from 'react-bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css'
import { color } from 'framer-motion'

// CustomModal 组件
const CustomModal = ({ show, onClose, goECPay }) => {
  if (!show) return null

  return (
    <div style={styles.modal}>
      <div style={styles.modalContent}>
        <h2>已送出訂單</h2>
        <p>請選擇付款方式</p>
        <button style={styles.button} onClick={onClose}>
          現場結帳
        </button>
        <hr />
        <button style={styles.button} onClick={goECPay}>
          線上付款
        </button>
      </div>
    </div>
  )
}

const SlidingPanel = ({
  cart,
  removeFromCart,
  cartTotalPrice,
  handleOrderSubmit,
}) => {
  const [isOpen, setIsOpen] = useState(false) // 默认为false
  const [showModal, setShowModal] = useState(false)
  const [order, setOrder] = useState({})
  const [isLoading, setIsLoading] = useState(true)
  const [result, setResult] = useState({ returnCode: '', returnMessage: '' })
  const [startY, setStartY] = useState(0) // 用于检测拖动开始位置
  const [isDragging, setIsDragging] = useState(false) // 用于标记是否正在拖动
  const [lotteryChance, setLotteryChance] = useState('')

  const panelRef = useRef(null)
  const scrollToBottomRef = useRef(null)

  const togglePanel = (event) => {
    event.stopPropagation()
    setIsOpen((prev) => !prev)
  }

  const handleClickOutside = (event) => {
    if (panelRef.current && !panelRef.current.contains(event.target)) {
      setIsOpen(false)
    }
  }

  const handleKeyPress = (event) => {
    if (event.key === 'Enter' || event.key === ' ') {
      togglePanel(event)
    }
  }

  const createOrder = async () => {
    try {
      const res = await axiosInstance.post('/qrcode/ecpay', {
        amount: cartTotalPrice,
        products: cart.map((item) => ({
          id: item.id,
          name: item.name,
          quantity: item.quantity,
          price: item.price,
        })),
      })

      if (res.data.status === 'success') {
        setOrder(res.data.data.order)
        // toast.success('已成功建立訂單');
      }
    } catch (error) {
      console.error('Error creating order:', error)
      toast.error('建立訂單失敗')
    }
  }

  const goECPay = () => {
    if (window.confirm('確認要導向至ECPay進行付款?')) {
      window.location.href = `http://localhost:3005/api/qrcode-ecpay/payment?orderId=${order.orderId}`
    }
  }

  const handleConfirm = async (transactionId) => {
    try {
      const res = await axiosInstance.get(
        `/line-pay/confirm?transactionId=${transactionId}`
      )
      if (res.data.status === 'success') {
        toast.success('付款成功')
      } else {
        toast.error('付款失敗')
      }
      setResult(res.data.data || { returnCode: '', returnMessage: '' })
    } catch (error) {
      console.error('Error confirming transaction:', error)
      toast.error('交易確認失敗')
    } finally {
      setIsLoading(false)
    }
  }

  useEffect(() => {
    // 设置一个模拟的交易ID和订单ID
    // 可以根据需要进行更改
    const transactionId = new URLSearchParams(window.location.search).get(
      'transactionId'
    )
    const orderId = new URLSearchParams(window.location.search).get('orderId')

    if (transactionId && orderId) {
      handleConfirm(transactionId)
    } else {
      setIsLoading(false)
    }
  }, [])

  useEffect(() => {
    const next2000 = Math.ceil(cartTotalPrice / 2000) * 2000
    const difference = next2000 - cartTotalPrice
    const timesReached2000 = Math.floor(cartTotalPrice / 2000)

    if (cartTotalPrice < 2000) {
      setLotteryChance(`還差 ${2000 - cartTotalPrice} 獲得一個抽獎機會！`)
    } else {
      setLotteryChance(
        `可以抽獎 ${timesReached2000} 次，再消費 ${difference} 多一次抽獎機會！`
      )
    }
  }, [cartTotalPrice])

  useEffect(() => {
    if (isOpen) {
      document.addEventListener('click', handleClickOutside)
      // 滚动到面板底部
      scrollToBottom()
    } else {
      document.removeEventListener('click', handleClickOutside)
    }

    return () => {
      document.removeEventListener('click', handleClickOutside)
    }
  }, [isOpen])

  // 滚动到最底部
  const scrollToBottom = () => {
    if (scrollToBottomRef.current) {
      // 添加平滑滚动效果
      scrollToBottomRef.current.scrollIntoView({
        behavior: 'smooth',
        block: 'end',
      })
    }
  }

  // 处理拖动开始事件
  const handleMouseDown = (event) => {
    setStartY(event.clientY)
    setIsDragging(true)
  }

  // 处理拖动结束事件
  const handleMouseUp = (event) => {
    if (isDragging) {
      const endY = event.clientY
      const distance = endY - startY

      // 如果拖动距离超过一定阈值，则切换面板的打开状态
      if (distance > 50) {
        togglePanel(event)
      }
      setIsDragging(false)
    }
  }

  // 计算进度条的百分比
  const calculateProgress = () => {
    return (cartTotalPrice % 2000) / 20
  }

  return (
    <div>
      <button onClick={togglePanel} style={styles.button}>
        <h5>查看購物車</h5>
      </button>
      <div
        ref={panelRef}
        style={{
          ...styles.panel,
          transition: 'transform 0.8s ease',
          transform: isOpen ? 'translateY(0)' : 'translateY(100%)',
        }}
        onClick={(e) => e.stopPropagation()}
        role="button"
        tabIndex="0"
        onKeyPress={handleKeyPress}
        onMouseDown={handleMouseDown} // 添加 mouseDown 事件处理
        onMouseUp={handleMouseUp} // 添加 mouseUp 事件处理
        // onMouseMove={handleMouseMove}  // 添加 mouseMove 事件处理
      >
        <h3>購物車詳情</h3>
        <div style={styles.header}>
          <button
            type="button"
            style={styles.headerButton}
            id="submit-order"
            onClick={() => {
              handleOrderSubmit()
              createOrder()
              setShowModal(true)
            }}
          >
            <h6 className="my-0">送出訂單</h6>
          </button>
          <button
            type="button"
            style={styles.headerButton}
            onClick={togglePanel}
          >
            <h6 className="my-0">修改訂單</h6>
          </button>

          <div style={styles.cartTotalPrice}>
            總金額: NT$ <span>{cartTotalPrice}</span>
          </div>
        </div>

        {/* 使用 react-bootstrap 的 ProgressBar 组件 */}
        <ProgressBar
          now={calculateProgress()}
          label={lotteryChance}
          variant={cartTotalPrice >= 2000 ? 'success' : 'secondary'}
        />

        <ul className="list-group" style={styles.listGroup}>
          {cart.map((item, index) => (
            <li
              className="list-group-item"
              style={styles.listGroupItem}
              key={index}
            >
              <div style={styles.itemName}>{item.name}</div>
              <div>
                NT$ {item.price} × {item.quantity}
              </div>
              <button
                className="btn btn-outline-danger btn-sm ml-2"
                onClick={() => removeFromCart(item.name, item.price)}
              >
                移除
              </button>
            </li>
          ))}
        </ul>

        <div ref={scrollToBottomRef} style={styles.emptyDiv}></div>
        <CustomModal
          show={showModal}
          goECPay={goECPay}
          onClose={() => setShowModal(false)}
        />
      </div>
    </div>
  )
}

// 样式
const styles = {
  panel: {
    position: 'fixed',
    bottom: 0,
    left: 0,
    width: '100%',
    height: '100%',
    backgroundColor: 'white',
    padding: '20px',
    boxShadow: '0 -2px 10px rgba(0, 0, 0, 0.1)',
    zIndex: 1000,
    overflowY: 'auto', // 使面板可滚动
  },
  header: {
    display: 'flex',
    height: '40px',
    flexDirection: 'row-reverse',
    margin: '0 0 5px 0',
  },
  cartTotalPrice: {
    display: 'flex',
    alignItems: 'center',
  },
  headerButton: {
    borderRadius: '5px',
    margin: '5px',
    backgroundColor: '#0c301f',
    color: 'white',
  },
  button: {
    all: 'unset',
    cursor: 'pointer',
  },
  modal: {
    position: 'fixed',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    background: 'rgba(0, 0, 0, 0.5)',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    zIndex: 1000,
  },
  modalContent: {
    background: '#fff',
    padding: '20px',
    borderRadius: '4px',
    boxShadow: '0 4px 6px rgba(0, 0, 0, 0.1)',
    textAlign: 'center',
  },
  listGroup: {
    padding: '0 0 100px 0',
    margin: '10px 0 0 0',
  },
  listGroupItem: {
    display: 'flex',
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  itemName: {
    width: '40%',
  },
  emptyDiv: {
    height: '1px', // 空白 div 的高度，可以设置为较小的值
  },
}

export default SlidingPanel
