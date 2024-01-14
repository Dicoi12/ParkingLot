<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:pageTemplate pageTitle="Users">
  <h1>Welcome to Users</h1>
  <form method="POST" action="${pageContext.request.contextPath}/Users">
  <c:if test="${pageContext.request.isUserInRole('WRITE_USERS')}">
    <a href="${pageContext.request.contextPath}/AddUser" class="btn btn-primary brn-lg">Add User</a>
      <button class="btn btn-danger" type="submit">Invoice</button>
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
        <div class="col">
          <input type="checkbox" name="user_ids" value="${user.id}"/>
        </div>
      </div>
    </c:forEach>
  </div>
  </form>
<%--  <h5 class="mt-3">Free parking spots: ${numberOfFreeParkingSpots}</h5>--%>
<c:if test="${not empty invoices}">
  <h2>Invoices</h2>
  <c:forEach var="username" items="${invoices}" varStatus="status">
    ${status.index+1}.${username}
    <br>
  </c:forEach>
</c:if>
</t:pageTemplate>
<style>
  .my_7{
    margin-top: 7%;
    margin-bottom: 7%;
  }
</style>
