import React from 'react'

export default function Remove() {
  const handleRemove = () => {
    localStorage.removeItem('one')
    localStorage.removeItem('one2')
    localStorage.removeItem('one3')
  }
  return (
    <>
      <button
        onClick={handleRemove}
        className="btn btn-danger m-5
      "
      >
        移除卡路里的儲存庫資料
      </button>
    </>
  )
}
