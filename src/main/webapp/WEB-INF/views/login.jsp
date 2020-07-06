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
    <title>Toeic | Online</title>
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
                <div class="col-lg-6 col-12">
                    <img src="/web/img/login/logo-login.jpg" alt="">
                </div>
                <div class="col-lg-6 col-12">
                    <div class="info-login">
                        <h2>Đăng Nhập Tài Khoản</h2>
                        <p>Đăng nhập tài khoản để dùng các chức năng của website.</p>
                    </div>
                    <div class="login_fast">
                        <div class="text">Đăng nhập nhanh với</div>
                        <div class="row">
                            <div class="col-md-6 col-6">
                                <button type="submit" class="btn gmail"><i class="fa fa-google-plus" aria-hidden="true"></i>Gmail</button>
                            </div>
                            <div class="col-md-6 col-6">
                                <button type="submit" class="btn facebook"><i class="fa fa-facebook-official" aria-hidden="true"></i>Facebook</button>
                            </div>
                        </div>
                    </div>
                    <div class="login-page">
                        <form action="/login" class="needs-validation" method="post">
                            <div class="form-group">
                                <label for="username">Username:</label>
                                <input type="text" class="form-control" id="username" placeholder="Nhập username" name="username" />
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Hãy điền đầy đủ thông tin vào trường trên.</div>
                            </div>
                            <div class="form-group">
                                <label for="password">Mật Khẩu:</label>
                                <input type="password" class="form-control" id="password" placeholder="Nhập mật khẩu" name="password" />
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Hãy điền đầy đủ thông tin vào trường trên.</div>
                            </div>
                            <button type="submit" class="btn btn-primary">Đăng Nhập</button>
                        </form>
                        <div class="signup_info">
                            <a href="/registration">Bạn chưa có tài khoản?</a>
                        </div>
                        <div class="forget_info">
                            <a href="/forgotPassword">Quên mật khẩu</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="/web/assets/js/jquery.min.js"></script>
    <script src="/web/assets/js/popper.min.js"></script>
    <script src="/web/assets/js/bootstrap.min.js"></script>
    <!-- Custom JS Login -->
    <script src="/web/js/login.js"></script>
</body>

</html>