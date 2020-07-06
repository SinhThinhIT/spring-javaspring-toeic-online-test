<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- tag-libs -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>New Password</title>
    <meta name="description" content="Toeic Online danh cho moi nguoi" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" href="/web/img/favicon.png" type="image/x-icon" />
    <!-- Custom CSS -->
    <!-- <link rel="stylesheet" href="css/style.css" /> -->
    <link rel="stylesheet" href="/web/css/login-toeic.css">
    <!-- Reset CSS -->
    <link rel="stylesheet" href="/web/css/reset.css" />
    <!-- Fontawesome cdn -->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Boostrap CSS -->
    <link rel="stylesheet" href="/web/assets/css/bootstrap.min.css" />
</head>

<body>
<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<div class="login-toeic">
    <div class="container">
        <div class="row">
<%--            <div class="col-lg-6 col-12">--%>
<%--                <img src="/web/img/login/logo-login.jpg" alt="">--%>
<%--            </div>--%>
            <div class="col-12 col-12">
                <div class="info-login">
                    <h2>Thay đổi mật khẩu mới</h2>
                </div>
                <div class="login-page">
                    <form:form action="/newPassword/" class="needs-validation" modelAttribute="users" method="post">
                        <form:input type="hidden" path="id_user" name="id_user" />
                        <div class="form-group">
                            <label for="pwd">Nhập Mật Khẩu mới:</label>
                            <form:input path="password" type="password" cssClass="form-control" id="pwd" placeholder="Nhập mật khẩu" name="pswd" />
<%--                            <div class="valid-feedback">Valid.</div>--%>
<%--                            <div class="invalid-feedback">${messageConfirm}</div>--%>
                        </div>
<%--                        <div class="form-group">--%>
<%--                            <label for="pwd">Nhập Mật Khẩu mới:</label>--%>
<%--                            <form:input path="confirmPass" type="password" cssClass="form-control" id="pwd" placeholder="Nhập mật khẩu" name="pswd" />--%>
<%--                                &lt;%&ndash;                            <div class="valid-feedback">Valid.</div>&ndash;%&gt;--%>
<%--                                &lt;%&ndash;                            <div class="invalid-feedback">${messageConfirm}</div>&ndash;%&gt;--%>
<%--                        </div>--%>
                        <button type="submit" class="btn btn-primary">Xác nhận</button>
                        <a href="/login" class="back">Quay lại</a>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/web/assets/js/jquery.min.js"></script>
<script src="/web/assets/js/popper.min.js"></script>
<script src="/web/assets/js/bootstrap.min.js"></script>
<%--<!-- Custom JS Login -->--%>
<%--<script src="/web/js/siginup.js"></script>--%>
</body>

</html>