<%--
  Created by IntelliJ IDEA.
  User: winko
  Date: 04.12.2023
  Time: 08:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:pageTemplate pageTitle="AddCar">
    <form class="needs-validation" style="margin-top: 150px" novalidate method="POST" action="${pageContext.request.contextPath}/AddUser">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="username">UserName</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="username" value="" required>
            <div class="invalid-feedback">
           Username is required!
            </div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="email">Email</label>
                <input type="text" class="form-control" id="email" name="email" placeholder="Email" value="" required>
                <div class="invalid-feedback">
                   Email is required!
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="email">Password</label>
                <input type="text" class="form-control" id="password" name="password" placeholder="password" value="" required>
                <div class="invalid-feedback">
                    password is required!
                </div>
            </div>
            <div class="col-md-5">
                <label for="user_groups" class="form-label">Groups</label>
                <select class="custom-select d-block w-100" id="user_groups" name="user_groups" multiple>
                    <option value="">Choose...</option>
                   <c:forEach var="user_group" items="${userGroups}" varStatus="status">
                           <option value="${user_group}">${user_group} </option>
                   </c:forEach>
                </select>
                <div class="invalid-feedback">
                    Please select a valid user group.
                </div>
            </div>
            </div>

<button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</t:pageTemplate>