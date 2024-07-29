import { useForm } from 'react-hook-form'
import React, { useState, useEffect } from 'react'
import moment from 'moment'
import DatePicker from 'react-datepicker'
import 'react-datepicker/dist/react-datepicker.css'
import styles from './ReservationEdit.module.css' // 引入 CSS 模組
import axios from 'axios'
import Link from 'next/link'
import 'bootstrap/dist/css/bootstrap.min.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faFaceSmileWink } from '@fortawesome/free-solid-svg-icons'

export default function ReservationEdit({
  id,
  setSelectedReservationId,
  fetchReservations,
}) {
  console.log('Editing reservation with ID:', id)
  const [formState, setFormState] = useState({
    id: 0,
    numberOfPeopleId: null,
    numberOfPeople: '0人',
    selectedDate: null,
    menuSelect: '請選擇用餐方式(必選)',
    tableSelect: 0,
    selectedTableType: '0 人桌',
    selectedTime: '請選擇時間(必選)',
    textAreaInput: '',
  })
  const [isOpen, setIsOpen] = useState(false)
  const [isButtonDisabled, setIsButtonDisabled] = useState(true)
  const [whiteSquareVisible, setWhiteSquareVisible] = useState(false)
  const [whiteSquareVisible2, setWhiteSquareVisible2] = useState(false)
  const [overLayVisible, setOverLayVisible] = useState(false)

  const numbers = [
    { id: 1, type: '1人' },
    { id: 2, type: '2人' },
    { id: 3, type: '3人' },
    { id: 4, type: '4人' },
    { id: 5, type: '5人' },
    { id: 6, type: '6人' },
    { id: 7, type: '7人' },
    { id: 8, type: '8人' },
    { id: 9, type: '9人' },
    { id: 10, type: '10人' },
    { id: 11, type: '11人' },
    { id: 12, type: '12人' },
  ]

  const handleNumberClick = (number) => {
    setFormState({
      ...formState,
      numberOfPeopleId: number.id,
      numberOfPeople: number.type,
    })
  }

  const tables = [
    { id: 1, type: '12人桌' },
    { id: 2, type: '4人桌' },
    { id: 3, type: '4人桌' },
    { id: 4, type: '4人桌' },
    { id: 5, type: '4人桌' },
    { id: 6, type: '4人桌' },
    { id: 7, type: '4人桌' },
    { id: 8, type: '2人桌' },
    { id: 9, type: '2人桌' },
  ]

  const handleTableClick = (id, type) => {
    setFormState({
      ...formState,
      tableSelect: id,
      selectedTableType: type,
    })
  }

  const times = [
    { value: '11:30', label: '11:30' },
    { value: '12:00', label: '12:00' },
    { value: '12:30', label: '12:30' },
    { value: '13:00', label: '13:00' },
    { value: '17:30', label: '17:30' },
    { value: '18:00', label: '18:00' },
    { value: '18:30', label: '18:30' },
    { value: '19:00', label: '19:00' },
    { value: '19:30', label: '19:30' },
    { value: '20:00', label: '20:00' },
  ]

  const handleTimeChange = (event) => {
    setFormState({
      ...formState,
      selectedTime: event.target.value,
    })
  }

  const handleTodayClick = () => {
    //轉換格式
    setFormState({
      ...formState,
      selectedDate: moment().format('YYYY-MM-DD'),
    })
    console.log(typeof selectedDate)
    setIsOpen(false)
  }

  const handleTomorrowClick = () => {
    setFormState({
      ...formState,
      selectedDate: moment().add(1, 'days').format('YYYY-MM-DD'),
    })
    console.log(typeof selectedDate)
    setIsOpen(false)
  }

  const handleDateChange = (date) => {
    if (moment(date).day() === 1) {
      alert('很抱歉,星期一為公休日，都不對外開放預約。請選擇其他日期。')
      setFormState({
        ...formState,
        selectedDate: null,
      })
    } else {
      setFormState({
        ...formState,
        selectedDate: moment(date).format('YYYY-MM-DD'),
      })
      console.log(formState.selectedDate)
      setIsOpen(false)
    }
  }
  const handleButtonClick = () => {
    setFormState({
      ...formState,
      selectedDate: null,
    })
    setIsOpen(true)
    console.log(isOpen)
  }
  const handleMenuChange = (event) => {
    setFormState({
      ...formState,
      menuSelect: event.target.value,
    })
  }
  const handleTextAreaInput = (event) => {
    setFormState({
      ...formState,
      textAreaInput: event.target.value,
    })
    console.log(formState.textAreaInput)
  }
  const onSubmit = (data) => {
    console.log(data)
  }
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm()
  useEffect(() => {
    if (
      formState.numberOfPeopleId > 0 &&
      formState.selectedDate &&
      formState.menuSelect !== '請選擇用餐方式(必選)' &&
      formState.selectedTime !== '請選擇時間(必選)' &&
      formState.tableSelect > 0
    ) {
      setIsButtonDisabled(false)
    } else {
      setIsButtonDisabled(true)
    }
  }, [
    formState.numberOfPeopleId,
    formState.selectedDate,
    formState.menuSelect,
    formState.selectedTime,
    formState.tableSelect,
  ])
  const handleSubmitButtonClick = async () => {
    try {
      const response = await axios.put(
        `http://localhost:3001/reserve/ReservationEdit/${id}`,
        formState
      )
      console.log('Reservation updated:', response.data)
      setWhiteSquareVisible(false)
      setWhiteSquareVisible2(true)
    } catch (error) {
      console.error('Error updating reservation:', error)
    }
  }
  const handleConfirmButtonClick = () => {
    setWhiteSquareVisible(true)
    setOverLayVisible(true)
    console.log(overLayVisible)
  }
  const handleReturnButtonClick = () => {
    setWhiteSquareVisible(false)
    setOverLayVisible(false)
    console.log(overLayVisible)
  }
  const handleReturnHomeButton = () => {
    setWhiteSquareVisible2(false)
    setOverLayVisible(false)
    setSelectedReservationId(null)
    fetchReservations()
  }
  return (
    <div className="container">
      <button onClick={() => setSelectedReservationId(null)}>返回</button>
      <section className="mb-4">
        <div className={`${styles.reservationPhoto}`}>
          <img src="/images/reserve/2.png" className="img-fluid" alt="..." />
        </div>
      </section>
      <main>
        <div className={`${styles.numberouter}`}>
          <div>
            <i className="bi bi-person-fill">預約人數: </i>
            <span id="peoplecount">{formState.numberOfPeople}</span>
          </div>
        </div>
        <div className={`${styles.numberdiv}`}>
          <ul className={`${styles.number}`}>
            {numbers.map((number) => (
              <li
                key={number.id}
                className={
                  formState.numberOfPeopleId === number.id ? styles.active : ''
                }
                onClick={() => handleNumberClick(number)}
                numberid={number.id}
              >
                {number.type}
              </li>
            ))}
          </ul>
        </div>
        <div className="d-flex justify-content-around border-bottom border-top mb-3">
          <div className="p-2" id="selectedDate">
            選擇的日期:{formState.selectedDate}
          </div>
          <div className="p-2" id="selectedMethod">
            選擇的用餐方式:{formState.menuSelect}
          </div>
          <div className="p-2" id="selectedDate">
            選擇的時間: {formState.selectedTime}
          </div>
        </div>
        <div className={`${styles.central}`}>
          <div className={`d-flex flex-column mb-3 ${styles.leftButton}`}>
            <button
              type="button"
              className={`btn btn-light p-3 mb-3 ${
                formState.selectedDate &&
                moment(formState.selectedDate).isSame(moment(), 'day')
                  ? styles.active
                  : ''
              }`}
              onClick={handleTodayClick}
            >
              今天
            </button>
            <button
              type="button"
              className={`btn btn-light p-3 mb-3 ${
                formState.selectedDate &&
                moment(formState.selectedDate).isSame(
                  moment().add(1, 'days'),
                  'day'
                )
                  ? styles.active
                  : ''
              }`}
              onClick={handleTomorrowClick}
            >
              明天
            </button>
            <label htmlFor="reservationDateTime">選擇預約日期:</label>
            <button
              type="button"
              className={`btn btn-light p-3 mb-3 DateTimebutton ${
                isOpen ? styles.active : ''
              }`}
              onClick={handleButtonClick}
            >
              選擇預約日期：<i className="bi bi-calendar-date-fill"></i>
            </button>
            <form action="" onSubmit={handleSubmit(onSubmit)}>
              <label htmlFor="reservationDateTime" />
              {isOpen && (
                <DatePicker
                  selected={formState.selectedDate}
                  onChange={handleDateChange}
                  dateFormat="yyyy-MM-dd"
                  inline
                />
              )}
            </form>
          </div>
          <div className={`d-flex flex-column mb-3 mt-3 ${styles.rightSelect}`}>
            <div>
              <form method="post" action="" onSubmit={handleSubmit(onSubmit)}>
                <select
                  id="menuSelect"
                  name="menuSelect"
                  className={`form-select mt-4 mb-3 `}
                  aria-label="Default select example"
                  value={formState.menuSelect}
                  onChange={handleMenuChange}
                  required
                >
                  <option selected disabled>
                    請選擇用餐方式(必選)
                  </option>
                  <option value="現場單點">現場單點</option>
                  <option value="合菜料理">合菜料理</option>
                  <option value="無菜單料理">無菜單料理</option>
                </select>
                {errors.menuSelect && (
                  <p className="text-danger">請選擇用餐方式(必選)</p>
                )}
              </form>
            </div>
            <div>
              <form
                method="post"
                action="連線傳送資料.php"
                onSubmit={handleSubmit(onSubmit)}
              >
                <select
                  id="timeSelect"
                  name="timeSelect"
                  className={`form-select mb-3 mt-3`}
                  aria-label="Large select example"
                  value={formState.selectedTime}
                  onChange={handleTimeChange}
                  required
                >
                  <option selected disabled>
                    請選擇時間(必選)
                  </option>
                  {times.map((time, index) => (
                    <option key={index} value={time.value}>
                      {time.label}
                    </option>
                  ))}
                </select>
                {errors.menuSelect && (
                  <p className="text-danger">請選擇時間(必選)</p>
                )}
              </form>
            </div>
          </div>
        </div>
        <div className={`${styles.tablesouter}`}>
          <div>
            <i className="bi bi-house-door">桌型: </i>
            <span id="numbercount">{formState.selectedTableType}</span>
          </div>
        </div>
        <div className={`${styles.tablesdiv}`}>
          <ul className={styles.tablesChairs}>
            {tables.map((table) => (
              <li
                key={table.id}
                className={
                  formState.tableSelect === table.id ? styles.active : ''
                }
                onClick={() => handleTableClick(table.id, table.type)}
                tableid={table.id}
              >
                {table.type}
              </li>
            ))}
          </ul>
        </div>
        <div className={`${styles.reservetextarea}`}>
          <span>
            <i className="bi bi-pencil-square">備註:</i>
          </span>
          <div className="form-floating py-2 ">
            <textarea
              className="form-control"
              placeholder="Leave a comment here"
              id="floatingTextarea2"
              style={{ height: '100px' }}
              onChange={handleTextAreaInput}
            ></textarea>
            <label htmlFor="floatingTextarea2">留下任何你想說的~</label>
          </div>
          <div className={`${styles.confirmButtondiv}`}>
            <button
              type="submit"
              id="confirmButton"
              className="btn btn-warning shadow mb-3 mt-3 px-5"
              onClick={handleConfirmButtonClick}
              disabled={isButtonDisabled}
              style={{
                background: isButtonDisabled
                  ? 'linear-gradient(to right, rgba(0, 0, 0, 0.5), rgba(231, 175, 47, 1))'
                  : 'yellow',
                color: 'black',
              }}
            >
              {isButtonDisabled ? '尚未填寫完成' : '送出'}
            </button>
          </div>
        </div>
      </main>
      {overLayVisible && (
        <div id="overlay" className={`${styles.overlay}`}></div>
      )}
      {whiteSquareVisible && (
        <div id="whiteSquare" className={`${styles.square3}`}>
          <h4 className="text-center mt-3">確認您的預約資訊</h4>
          <div className="d-flex justify-content-between">
            <div className="lh-lg mx-3">
              桌型:
              <br />
              人數:
              <br />
              日期:
              <br />
              時間:
              <br />
              用餐方式:
              <br />
              備註:
            </div>
            <div className="lh-lg mx-3">
              <span id="text1">{formState.selectedTableType}</span>
              <br />
              <span id="text2">{formState.numberOfPeople}</span>
              <br />
              <span id="text3">{formState.selectedDate}</span>
              <br />
              <span id="text4">{formState.selectedTime}</span>
              <br />
              <span id="text5">{formState.menuSelect}</span>
              <br />
              <span id="text6">{formState.textAreaInput}</span>
            </div>
          </div>
          <div className="d-flex flex-column mb-3">
            <button
              type="submit"
              id="submitButton"
              className="btn btn-warning w-50 mx-auto my-2"
              onClick={handleSubmitButtonClick}
            >
              確認送出
            </button>
            <button
              type="button"
              id="returnButton"
              className="btn btn-light w-50 mx-auto  returnButton"
              onClick={handleReturnButtonClick}
            >
              上一頁
            </button>
          </div>
        </div>
      )}
      {whiteSquareVisible2 && (
        <div id="whiteSquare2" className={`${styles.square3}`}>
          <h4 className="text-center mt-3  align-items-center">
            修改成功
            <FontAwesomeIcon
              icon={faFaceSmileWink}
              className=" mx-1"
              height={21}
            />
          </h4>
          <div className="d-flex justify-content-between">
            <div className="lh-lg mx-3">
              桌型:
              <br />
              人數:
              <br />
              日期:
              <br />
              時間:
              <br />
              用餐方式:
              <br />
              備註:
            </div>
            <div className="lh-lg mx-3">
              <span id="text7">{formState.selectedTableType}</span>
              <br />
              <span id="text8">{formState.numberOfPeople}</span>
              <br />
              <span id="text9">{formState.selectedDate}</span>
              <br />
              <span id="text10">{formState.selectedTime}</span>
              <br />
              <span id="text11">{formState.menuSelect}</span>
              <br />
              <span id="text12">{formState.textAreaInput}</span>
            </div>
          </div>
          <div className="d-flex flex-column mb-3">
            <button
              type="button"
              id="returnHomeButton"
              className={`btn btn-warning w-50 mx-auto mt-3 ${styles.returnHomeButton}`}
              onClick={handleReturnHomeButton}
            >
              <Link href="/ReservationGet">返回</Link>
            </button>
          </div>
        </div>
      )}
    </div>
  )
}
