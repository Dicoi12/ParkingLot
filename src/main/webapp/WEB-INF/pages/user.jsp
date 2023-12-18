<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:pageTemplate pageTitle="Users">
  <h1>Welcome to Users</h1>
  <c:if test="${pageContext.request.isUserInRole('WRITE_USERS')}">
    <a href="${pageContext.request.contextPath}/AddUser" class="btn btn-primary brn-lg">Add User</a>
  </c:if>
  <div class="container text-center">
    <c:forEach var="user" items="${users}">
      <div class="row my_7">
        <div class="col">
            ${user.username}
        </div>
        <div class="col">
            ${user.email}
        </div>
      </div>
    </c:forEach>
  </div>
<%--  <h5 class="mt-3">Free parking spots: ${numberOfFreeParkingSpots}</h5>--%>
</t:pageTemplate>
<style>
  .my_7{
    margin-top: 7%;
    margin-bottom: 7%;
  }
</style>
