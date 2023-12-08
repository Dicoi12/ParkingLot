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
<t:pageTemplate pageTitle="EditCar">
    <form class="needs-validation" style="margin-top: 150px" novalidate method="POST" action="${pageContext.request.contextPath}/EditCar">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="license_plate">License Plate</label>
                <input type="text" class="form-control" id="license_plate" name="license_plate" placeholder="plate" value="${car.licensePlate}" required>
                <div class="invalid-feedback">
                    License Plate is required!
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="parking_spot">Parking Spot</label>
                <input type="text" class="form-control" id="parking_spot" name="parking_spot" placeholder="Spot" value="${car.parkingSpot}" required>
                <div class="invalid-feedback">
                    Parking Spot is required!
                </div>
            </div>
            <div class="col-md-5">
                <label for="owner_id" class="form-label">Country</label>
                <select class="custom-select d-block w-100" id="owner_id" name="owner_id" required>
                    <option value="">Choose...</option>
                    <c:forEach var="user" items="${users}" varStatus="status">
                        <option value="${user.id}" ${car.ownerName eq user.username? 'selected' : ''}>${user.username} </option>
                    </c:forEach>
                </select>
                <div class="invalid-feedback">
                    Please select a valid owner.
                </div>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
        </div>
        <input type="hidden" name="car_id" value="${car.id}" />
    </form>
</t:pageTemplate>