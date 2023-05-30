<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>

<c:forEach items="${appointmentJoined}" var="appointment">
    <div class="content-left-item">
        <p class="time-date" dateMeeting="${appointment.dateMeeting}" startTime="${appointment.starting_time}" endTime = "${appointment.ending_time}"></p>
        <p class="with">Với</p>
        <p class="name">${appointment.host.fullName}</p>
        <input type="hidden" name="date" value="${appointment.dateMeeting}">
        <input type="hidden" name="idAppointmentJoin" value="${appointment.id}">
    </div>
</c:forEach>