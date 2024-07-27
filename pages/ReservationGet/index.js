import React, { useState, useEffect } from 'react'
import {
  Table,
  Loader,
  Button,
  Steps,
  Heading,
  IconButton,
  Panel,
} from 'rsuite'
import 'rsuite/dist/rsuite.min.css'

import ArrowDownLineIcon from '@rsuite/icons/ArrowDownLine'
import ArrowUpLineIcon from '@rsuite/icons/ArrowUpLine'
import axios from 'axios'
import 'bootstrap/dist/css/bootstrap.min.css'
import styles from './ReservationGet.module.css'
import Navbar from '@/components/layout/mudanlow-layout/navbar'
import Footer from '@/components/layout/mudanlow-layout/footer'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faPenToSquare, faTrash } from '@fortawesome/free-solid-svg-icons'
import ReservationEdit from '../ReservationEdit'
import ReservationPay from '../ReservationPay'
import toast, { Toaster } from 'react-hot-toast'

const { Column, HeaderCell, Cell } = Table

export default function ReserveGet() {
  const [reservations, setReservations] = useState([])
  const [selectedReservationId, setSelectedReservationId] = useState(null)
  const [loading, setLoading] = useState(true)
  const [drawerOpen, setDrawerOpen] = useState(false)
  const [selectedReservation, setSelectedReservation] = useState(null)
  const [expandedRowKeys, setExpandedRowKeys] = useState([])
  const [memberId, setMemberId] = useState('')

  useEffect(() => {
    const memberId = localStorage.getItem('memberId')
    if (memberId) {
      setMemberId(memberId)
    }
  }, [])
  useEffect(() => {
    fetchReservations()
  }, [memberId])

  const fetchReservations = async () => {
    try {
      const response = await axios.get(
        `http://localhost:3001/reserve/reservations/${memberId}`
      )
      const reservationsWithSteps = response.data.map((reservation) => ({
        ...reservation,
        currentStep: reservation.status, 
      }))
      setReservations(reservationsWithSteps)
      setLoading(false)
    } catch (error) {
      console.error('Error fetching reservations:', error)
      setLoading(false)
    }
  }

  const deleteReservation = async (id) => {
    try {
      const response = await axios.delete(
        `http://localhost:3001/reserve/reservationDelete/${id}`
      )
      if (response.data) {
        fetchReservations()
        toast.success('刪除成功')
      } else {
        console.error('Error: Did not receive expected response data.')
        toast.error('刪除失敗!!')
      }
    } catch (error) {
      console.error('Error deleting reservation:', error)
    }
  }

  const handleEditClick = (id) => {
    setSelectedReservationId(id)
  }

  const handlePayClick = (reservation) => {
    setSelectedReservation(reservation)
    setDrawerOpen(true)
    console.log(reservation.id)
  }

  const handleStepChange = (id, newStep) => {
    updateReservationStep(id, newStep)
    setExpandedRowKeys((prevExpandedRowKeys) =>
      prevExpandedRowKeys.includes(id)
        ? prevExpandedRowKeys
        : [...prevExpandedRowKeys, id]
    )
  }

  const updateReservationStep = async (id, step) => {
    const updatedReservations = reservations.map((reservation) =>
      reservation.id === id
        ? { ...reservation, currentStep: step }
        : reservation
    )
    setReservations(updatedReservations)
    try {
      await axios.put(`http://localhost:3001/reserve/updateStatus/${id}`, {
        status: step,
      })
    } catch (error) {
      console.error('Error updating reservation status:', error)
    }
  }

  const ExpandCell = ({ rowData, expandedRowKeys, onChange, ...props }) => (
    <Cell {...props} style={{ padding: 5 }}>
      <IconButton
        appearance="subtle"
        onClick={() => {
          onChange(rowData)
        }}
        icon={
          expandedRowKeys.includes(rowData.id) ? (
            <ArrowUpLineIcon />
          ) : (
            <ArrowDownLineIcon />
          )
        }
      />
    </Cell>
  )

  const renderRowExpanded = (rowData) => {
    return (
      <Panel className={`${styles.renderRowPanel}`}>
        <Steps
          current={rowData.currentStep}
          style={{
            marginBottom: '20px',
            maxWidth: '1024px',
            minWidth: '1024px',
          }}
        >
          <Steps.Item title="已完成預約" />
          <Steps.Item title="尚未支付訂金" />
          <Steps.Item title="已完成結帳" />
        </Steps>
      </Panel>
    )
  }

  const handleExpand = (rowData) => {
    const nextExpandedRowKeys = expandedRowKeys.includes(rowData.id)
      ? expandedRowKeys.filter((key) => key !== rowData.id)
      : [...expandedRowKeys, rowData.id]
    setExpandedRowKeys(nextExpandedRowKeys)
  }

  return (
    <div>
      {loading && <Loader center content="我在努力中 > <" size="lg" backdrop />}
      {!loading && selectedReservationId === null && (
        <>
          <div className={`${styles.getTableList}`}>
            <Heading level={3} style={{ marginBlock: '15px' }}>
              尚未完成的預約
            </Heading>
            <Table
              height={550}
              width={1280}
              data={reservations}
              rowKey="id"
              expandedRowKeys={expandedRowKeys}
              onRowClick={(rowData) => handleExpand(rowData)}
              renderRowExpanded={renderRowExpanded}
            >
              <Column width={60} align="center" fixed>
                <HeaderCell>
                  <ArrowDownLineIcon />
                </HeaderCell>
                <ExpandCell
                  dataKey="id"
                  expandedRowKeys={expandedRowKeys}
                  onChange={handleExpand}
                />
              </Column>
              <Column width={80}>
                <HeaderCell>會員ID</HeaderCell>
                <Cell dataKey="member_id" />
              </Column>
              <Column width={80}>
                <HeaderCell>姓名</HeaderCell>
                <Cell dataKey="member_name" />
              </Column>
              <Column width={120}>
                <HeaderCell>手機</HeaderCell>
                <Cell dataKey="mobile" />
              </Column>
              <Column width={80}>
                <HeaderCell>人數</HeaderCell>
                <Cell dataKey="numberOfPeople" />
              </Column>
              <Column width={150}>
                <HeaderCell>用餐方式</HeaderCell>
                <Cell dataKey="menuSelect" />
              </Column>
              <Column width={150}>
                <HeaderCell>日期</HeaderCell>
                <Cell dataKey="selectedDate" />
              </Column>
              <Column width={100}>
                <HeaderCell>時間</HeaderCell>
                <Cell dataKey="selectedTime" />
              </Column>
              <Column width={150}>
                <HeaderCell>桌型</HeaderCell>
                <Cell dataKey="selectedTableType" />
              </Column>
              <Column width={150}>
                <HeaderCell>您的備註</HeaderCell>
                <Cell dataKey="textAreaInput" />
              </Column>
              <Column width={120} fixed="right">
                <HeaderCell>修改</HeaderCell>
                <Cell>
                  {(rowData) => (
                    <FontAwesomeIcon
                      icon={faPenToSquare}
                      height={20}
                      className={styles.faPenToSquare}
                      onClick={() => handleEditClick(rowData.id)}
                    />
                  )}
                </Cell>
              </Column>
              <Column width={120} fixed="right">
                <HeaderCell>刪除</HeaderCell>
                <Cell>
                  {(rowData) => (
                    <FontAwesomeIcon
                      icon={faTrash}
                      height={20}
                      className={styles.faTrash}
                      onClick={() => deleteReservation(rowData.id)}
                    />
                  )}
                </Cell>
              </Column>
              <Column width={120} fixed="right">
                <HeaderCell>目前狀態</HeaderCell>
                <Cell style={{ padding: '0px' }}>
                  {(rowData) => (
                    <Button
                      className={`${styles.PayButton}`}
                      color={rowData.currentStep === 3 ? 'red' : 'green'}
                      appearance="primary"
                      size="sm"
                      onClick={() =>
                        rowData.currentStep !== 3 && handlePayClick(rowData)
                      }
                      disabled={rowData.currentStep === 2}
                    >
                      {rowData.currentStep === 3 ? '已結帳' : '前往結帳'}
                    </Button>
                  )}
                </Cell>
              </Column>
            </Table>
            <Toaster />
          </div>
        </>
      )}
      {selectedReservationId !== null && (
        <ReservationEdit
          id={selectedReservationId}
          setSelectedReservationId={setSelectedReservationId}
          fetchReservations={fetchReservations}
        />
      )}
      {drawerOpen && (
        <ReservationPay
          open={drawerOpen}
          setOpen={setDrawerOpen}
          reservation={selectedReservation}
          memberId={memberId}
          // balance={balance}
          onStepChange={handleStepChange}
          onClose={() => setDrawerOpen(false)}
        />
      )}
    </div>
  )
}