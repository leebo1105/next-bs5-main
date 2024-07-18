import React, { useState } from 'react'
import Link from 'next/link'
import List from '@/components/cart/list'
import { useCart } from '@/hooks/use-cart-state'

const Cart = () => {
  const [showSidebar, setShowSidebar] = useState(false)
  const [cartItems, setCartItems] = useState([])
  const { cart, items, decrement, increment, removeItem, clearCart } = useCart()
  const toggleSidebar = () => {
    setShowSidebar(!showSidebar)
  }

  const addToCart = (product) => {
    const newCartItems = [...cartItems]
    const index = newCartItems.findIndex((item) => item.name === product.name)
    if (index > -1) {
      newCartItems[index].quantity += 1
    } else {
      newCartItems.push({ ...product, quantity: 1 })
    }
    setCartItems(newCartItems)

    // 触发飞入购物车动画
    const cartIcon = document.querySelector('.cart-icon')
    const clone = document.createElement('div')
    clone.className = 'fly-to-cart'
    clone.style.backgroundImage = `url(${product.photo})`
    document.body.appendChild(clone)
    const rect = cartIcon.getBoundingClientRect()
    clone.style.transform = `translate(${rect.left}px, ${rect.top}px)`
    setTimeout(() => {
      document.body.removeChild(clone)
    }, 1000)
  }

  const removeFromCart = (index) => {
    const newCartItems = [...cartItems]
    if (newCartItems[index].quantity > 1) {
      newCartItems[index].quantity -= 1
    } else {
      newCartItems.splice(index, 1)
    }
    setCartItems(newCartItems)
  }

  const calculateTotalPrice = () => {
    return cartItems.reduce(
      (total, item) => total + item.price * item.quantity,
      0
    )
  }

  return (
    <>
      <div
        className={`cart-icon ${showSidebar ? 'open' : ''}`}
        onClick={toggleSidebar}
        onKeyDown={(e) => {
          if (e.key === 'Enter') {
            toggleSidebar()
          }
        }}
        role="button"
        tabIndex={0}
      >
        <div className="icon-wrapper">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="34"
            height="34"
            viewBox="0 0 24 24"
            fill="none"
            stroke="currentColor"
            strokeWidth="2"
            strokeLinecap="round"
            strokeLinejoin="round"
            className="icon icon-tabler-shopping-cart"
          >
            <circle cx="8" cy="19" r="2" />
            <circle cx="17" cy="19" r="2" />
            <path d="M5 6h15l-1.5 9h-15z" />
          </svg>
          <div className="cart-count">{cart.totalItems}</div>
        </div>
      </div>

      <div className={`cart-sidebar ${showSidebar ? 'show' : ''}`}>
        <List />
        <div
          className="close-btn"
          onClick={toggleSidebar}
          onKeyDown={(e) => {
            if (e.key === 'Enter') {
              toggleSidebar()
            }
          }}
          role="button"
          tabIndex={0}
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            className="icon icon-tabler icon-tabler-x"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            strokeWidth="1.5"
            stroke="#000000"
            fill="none"
            strokeLinecap="round"
            strokeLinejoin="round"
          >
            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
            <line x1="18" y1="6" x2="6" y2="18" />
            <line x1="6" y1="6" x2="18" y2="18" />
          </svg>
        </div>
        <div className="cart-items">
          {cartItems.map((item, index) => (
            <div key={index} className="cart-item">
              <span>{item.name}</span>
              <span>{item.quantity}</span>
              <button onClick={() => removeFromCart(index)}>移除</button>
            </div>
          ))}
        </div>
        <div className="cart-total">
          <h5>
            {' '}
            數量: {cart.totalItems} / 總價: {cart.totalPrice}
          </h5>
          <Link href="/cart">
            <button className="checkoutBtn">前往結帳</button>
          </Link>
        </div>
      </div>

      <style global jsx>{`
        .cart-icon {
          position: fixed;
          top: 70px;
          right: 20px;
          width: 60px;
          height: 60px;
          cursor: pointer;
          z-index: 980;
          display: flex;
          justify-content: center;
          align-items: center;
          border-radius: 50%;
          background-color: #ff6f61;
          box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
          transition: transform 0.2s ease-in-out, background-color 0.2s;
        }
        .cart-icon:hover {
          transform: scale(1.1);
          background-color: #ff8b73;
        }
        .icon-wrapper {
          display: flex;
          justify-content: center;
          align-items: center;
          width: 100%;
          height: 100%;
        }
        .cart-count {
          width: 25px;
          height: 25px;
          position: absolute;
          top: -10px;
          right: -5px;
          background: #ff6f61;
          color: white;
          border-radius: 50%;
          padding: 0px 0px 0px 8px;
          font-size: 14px;
          justify-content: center;
          align-items: center;
          box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        .cart-sidebar {
          position: fixed;
          top: 0;
          right: -460px;
          width: 450px;
          height: 100vh;
          background-color: #fff;
          transition: right 0.3s ease;
          box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
          z-index: 900;
          padding-top: 80px;
          padding-bottom: 60px;
          display: flex;
          flex-direction: column;
        }
        .cart-sidebar.show {
          right: 0;
        }
        .cart-items {
          height: calc(100vh - 180px);
          overflow-y: auto;
          padding: 20px;
        }
        .cart-item {
          display: flex;
          justify-content: space-between;
          align-items: center;
          padding: 10px 0;
          border-bottom: 1px solid #eee;
        }
        .cart-total {
          padding: 20px;
          border-top: 1px solid #eee;
          display: flex;
          flex-direction: column;
          align-items: center;
        }
        .close-btn {
          position: absolute;
          top: 10px;
          right: 10px;
          cursor: pointer;
          z-index: 1001;
        }
        .checkoutBtn {
          padding: 10px 20px;
          font-size: 18px;
          border-radius: 5px;
          background-color: #ff6f61;
          color: white;
          border: none;
          cursor: pointer;
          transition: background-color 0.2s;
        }
        .checkoutBtn:hover {
          background-color: #ff8b73;
        }
        .fly-to-cart {
          position: absolute;
          width: 50px;
          height: 50px;
          background-size: cover;
          border-radius: 50%;
          z-index: 1000;
          transition: transform 1s ease-in-out;
        }
      `}</style>
    </>
  )
}

export default Cart
