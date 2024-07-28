import React, { useState, useEffect } from 'react'
import styles from './messageboard.module.scss'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faStar, faCircleXmark } from '@fortawesome/free-solid-svg-icons'

export default function MessageBoard() {
  const [rating, setRating] = useState(0)
  const [hoverRating, setHoverRating] = useState(0)
  const [formData, setFormData] = useState({ value: '', content: '' })
  const [comments, setComments] = useState([])
  const [expandedComment, setExpandedComment] = useState(null)
  const maxHeight = 400
  const minHeight = 100

  const handleRatingChange = (e) => {
    setRating(Number(e.target.value))
    console.log('Rating changed to:', e.target.value)
  }

  const handleInputChange = (e) => {
    const { name, value } = e.target
    setFormData({ ...formData, [name]: value })
    console.log('Form input changed:', name, value)
  }

  const sendData = async (e) => {
    e.preventDefault()
    console.log('Submitting form with data:', formData, 'Rating:', rating)

    const fd = new FormData()
    fd.append('value', rating)
    fd.append('content', formData.content)

    try {
      const response = await fetch(
        'http://localhost:3005/api/message-board/add',
        {
          method: 'POST',
          body: fd,
        }
      )
      console.log('Response received:', response)
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`)
      }
      const data = await response.json()
      console.log('API Response:', data)

      if (data.success) {
        alert('成功送出！')
        setFormData({ value: '', content: '' })
        setRating(0)
        await getComments(true) // 確保最新資料被抓取並設置高亮
      } else {
        console.log('資料新增失敗')
      }
    } catch (ex) {
      console.log('fetch() 發生錯誤, 回傳的 JSON 格式是錯的')
      console.log(ex)
    }
  }

  const getComments = async (highlightNewest = false) => {
    try {
      const response = await fetch(
        'http://localhost:3005/api/message-board/api'
      )
      console.log('Fetching comments. Response:', response)
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`)
      }
      const data = await response.json()
      console.log('Fetched Comments:', data)

      if (!data.comments) {
        throw new Error(
          'Unexpected response structure: ' + JSON.stringify(data)
        )
      }

      if (data.success) {
        const commentsWithPosition = data.comments.map((comment, index) => ({
          ...comment,
          position: generateRandomPosition(),
          zIndex: 1, // 默認 zIndex 為 1
          highlight: highlightNewest && index === 0, // 如果需要高亮則高亮最新的評論
        }))
        console.log(
          'Updated comments with positions and highlight:',
          commentsWithPosition
        )
        setComments(commentsWithPosition)
        // 如果有需要高亮的評論，設置定時器移除高亮效果
        if (highlightNewest) {
          setTimeout(() => {
            setComments((prevComments) =>
              prevComments.map((comment) =>
                comment.highlight ? { ...comment, highlight: false } : comment
              )
            )
            console.log('Highlight removed after 5 seconds')
          }, 5000) // 動畫時間設為5秒
        }
      } else {
        console.log('獲取評論失敗')
      }
    } catch (ex) {
      console.log('fetch() 發生錯誤, 回傳的 JSON 格式是錯的')
      console.log(ex)
    }
  }

  const generateRandomPosition = () => {
    const top = Math.random() * (maxHeight - minHeight) + minHeight
    const left = Math.random() * (window.innerWidth - 50)
    console.log('Generated random position:', { top, left })
    return { top, left }
  }

  const handleDragStart = (e, index) => {
    e.dataTransfer.setData('text/plain', index)
    console.log('Drag started for comment index:', index)
  }

  const handleDrop = (e) => {
    const index = e.dataTransfer.getData('text/plain')
    const newComments = [...comments]
    const top = e.clientY - 50
    const left = e.clientX - 100
    newComments[index].position = { top, left }
    setComments(newComments)
    console.log('Comment dropped at new position:', { top, left })
  }

  const handleDragOver = (e) => {
    e.preventDefault()
    console.log('Drag over event')
  }

  const handleExpandComment = (comment) => {
    setExpandedComment(comment)
    console.log('Comment expanded:', comment)
  }

  const handleCloseComment = () => {
    setExpandedComment(null)
    console.log('Comment closed')
  }

  useEffect(() => {
    console.log('Component mounted, fetching comments')
    getComments()
  }, [])

  return (
    <>
      <section
        className={`container-fluid py-5 ${styles.commentSection}`}
        onDragOver={handleDragOver}
        onDrop={handleDrop}
      >
        <h2 className="display-4 frontTitle2 mt-5">留言板</h2>
        <div
          className={`row gx-4 gx-lg-5 mt-5 justify-content-center ${styles.messageBoard} flex-column align-items-center`}
        >
          <div className="col-lg-8 col-xl-7 text-center mb-3">
            <h2>寫下你想說的話吧~</h2>
          </div>
          <div className="col-lg-8 col-xl-7 text-center mb-3">
            <form id="message" onSubmit={sendData}>
              <h4>評分:</h4>
              <div className={styles.score}>
                {[1, 2, 3, 4, 5].map((score) => (
                  <React.Fragment key={score}>
                    <input
                      type="radio"
                      name="value"
                      id={`score${score}`}
                      value={score}
                      onChange={handleRatingChange}
                      className={styles.radioInput}
                    />
                    <label
                      className={styles.star}
                      htmlFor={`score${score}`}
                      onMouseEnter={() => setHoverRating(score)}
                      onMouseLeave={() => setHoverRating(0)}
                    >
                      <FontAwesomeIcon
                        icon={faStar}
                        style={{
                          color:
                            hoverRating >= score || rating >= score
                              ? '#FFD43B'
                              : '#dcdcdc',
                        }}
                        height={30}
                      />
                    </label>
                  </React.Fragment>
                ))}
              </div>
              <div className="mb-3">
                <h4 className="form-label" htmlFor="textContent">
                  輸入內容:
                </h4>
                <textarea
                  className="form-control"
                  id="textContent"
                  name="content"
                  rows="5"
                  value={formData.content}
                  onChange={handleInputChange}
                ></textarea>
              </div>
              <button className="btn btn-light" type="submit">
                送出
              </button>
            </form>
          </div>
        </div>
        {comments.map((comment, index) => (
          <div
            className={`${styles.comments} ${
              comment.highlight ? styles.highlight : ''
            }`}
            key={comment.c_id}
            draggable
            onDragStart={(e) => handleDragStart(e, index)}
            style={{
              top: comment.position.top,
              left: comment.position.left,
              zIndex: comment.highlight ? 1000 : 1, // 新生成的評論 zIndex 設為 1000
            }}
            onClick={() => handleExpandComment(comment)}
          >
            <div className="text-light text-center fs-5">
              很棒!您是第{comment.c_id}個留言的人!
            </div>
            <label className="text-light">評分:</label>
            <div className={`${styles.commentStar} text-center`}>
              {[1, 2, 3, 4, 5].map((i) => (
                <FontAwesomeIcon
                  icon={faStar}
                  key={i}
                  style={{ color: i <= comment.value ? '#FFD43B' : '#dcdcdc' }}
                  height={30}
                />
              ))}
            </div>
            <label className="text-light">內容:</label>
            <div className={styles.commentContent}>{comment.content}</div>
            <div className="text-light">留言時間: {comment.created_at}</div>
          </div>
        ))}

        {expandedComment && (
          <div className={styles.expandedComment}>
            <button className={styles.closeButton} onClick={handleCloseComment}>
              <FontAwesomeIcon icon={faCircleXmark} height={30} />
            </button>
            <div className="text-light text-center fs-5 mt-2">
              很棒!您是第{expandedComment.c_id}個留言的人!
            </div>
            <label className="text-light">評分:</label>
            <div className={`${styles.commentStar} text-center`}>
              {[1, 2, 3, 4, 5].map((i) => (
                <FontAwesomeIcon
                  icon={faStar}
                  key={i}
                  style={{
                    color: i <= expandedComment.value ? '#FFD43B' : '#dcdcdc',
                  }}
                  height={30}
                />
              ))}
            </div>
            <label className="text-light">內容:</label>
            <div className={styles.commentContent}>
              {expandedComment.content}
            </div>
            <div className="text-light">
              留言時間: {expandedComment.created_at}
            </div>
          </div>
        )}
      </section>
    </>
  )
}
