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

<t:pageTemplate pageTitle="Photo car add">
    <h1>Add Car Photo</h1>
    <form class="needs-validation" style="margin-top: 150px" novalidate method="POST" enctype="multipart/form-data" action="${pageContext.request.contextPath}/AddCarPhoto">
        <div class="row">
            <div class="col-md-6 mb-3">
              License plate: ${car.licensePlate}
            </div>
        </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="file">Photo</label>
                    <input type="file" name="file" id="file" required>
                    <div class="invalid-feedback">
                        Photo is required.
                    </div>
                </div>
            </div>
            <input type="hidden" name="car_id" value="${car.id}" />
            <hr class="mb-4">
        <button type="submit" class="btn btn-primary btn-lg btn-block">Save</button>
    </form>
</t:pageTemplate>