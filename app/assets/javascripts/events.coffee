$(document).ready ->
  $("#calendar").fullCalendar(
    events: '/events.json'
  )
  jQuery ->
    $('#event_start_time').datetimepicker(
      timeOnlyTitle: 'Select Time',
      timeText: 'Time',
      hourText: 'Hour',
      minuteText: 'Minute',
      secondText: 'Second',
      currentText: 'Now',
      closeText: 'Close'
      dateFormat : "dd MM yy"
    )
    $('#event_end_time').datetimepicker(
      timeOnlyTitle: 'Select Time',
      timeText: 'Time',
      hourText: 'Hour',
      minuteText: 'Minute',
      secondText: 'Second',
      currentText: 'Now',
      closeText: 'Close'
      dateFormat : "dd MM yy"
    )

