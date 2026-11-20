# Project Brief: PARSU Student Appointment and Queue Management System

## 1. The problem
Students currently need to visit or message different university offices to ask about services, schedules, and requirements. They may wait without knowing whether a request was accepted or when their queue number will be called. Office staff also need one place to review appointment requests and update their status.

## 2. Users and what they need to do

| User role | What they need to do |
|---|---|
| Student | Browse offices and services, choose an available schedule, submit an appointment request, and track status and queue number. |
| Office staff | View requests for their office, confirm or cancel appointments, assign queue numbers, and mark service progress. |
| Administrator | Manage staff access, offices, services, schedules, and system-wide records. |

## 3. The database behind it

**Database name:** `parsu_appointment_queue`  
**Number of tables:** 7

- `students`: student identity, contact, and program information.
- `staff`: office personnel and administrator accounts.
- `offices`: university offices that provide student services.
- `services`: bookable services owned by an office.
- `schedules`: service dates, time windows, and capacities.
- `appointments`: student requests, selected schedules, purposes, and statuses.
- `queue_entries`: queue number and serving/completion timestamps for confirmed appointments.

## 4. Must-have features

1. **Browse** `offices` and `services` to find a suitable university service.
2. **View** open `schedules` and remaining capacity for a selected `service`.
3. **Create** an `appointments` request with a purpose and selected schedule.
4. **Track** an `appointment` status and related `queue_entries` record.
5. **Review** and **update** `appointments` by changing status and assigning `staff` review.
6. **Manage** `offices`, `services`, and `schedules` as an administrator.

## 5. Nice-to-have features

1. Send email or in-app notifications when an appointment status changes.
2. Add live queue estimates and a staff “call next” control.
3. Add downloadable appointment slips with QR codes.

## 6. Similar applications

1. **Google Calendar** – borrow clear schedule selection and confirmation details.
2. **Qminder** – borrow visible queue status and “now serving” communication.
