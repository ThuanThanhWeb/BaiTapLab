<%-- 
    Document   : register
    Created on : May 16, 2021, 8:44:43 PM
    Author     : Hoang Anh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Đăng ký</title>
        <link rel="stylesheet" type="text/css" href="CSS/base.css" />
        <link rel="stylesheet" type="text/css" href="CSS/main.css" />
        <link rel="stylesheet" type="text/css" href="CSS/grid.css" />
        <link rel="stylesheet" type="text/css" href="CSS/responsive.css" />
        <link rel="stylesheet" href="fonts/fontawesome-free-5.14.0/css/all.min.css" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
        <meta charset="UTF-8">
    </head>

    <body>
        <!--Modal layout-->
        <div class="app">
            <div class="modal">
                <div class="modal__overlay"></div>

                <div class="modal__body">
                    <!-- Register Form -->
                    <form id="register-form" class="auth-form" action="register" method="POST">
                        <div class="auth-form__container">
                            <div class="auth-form__header">
                                <div class="auth-form__heading">Đăng ký</div>
                            </div>

                            <div class="auth-form__groups">
                                <div class="auth-form__group">
                                    <input id="name" name="name" value="${name}" rules="required|min:6" type="text" class="auth-form__input" placeholder="Tên của bạn" />
                                    <span class="form-message" style="color: red;"></span>
                                </div>
                                <div class="auth-form__group">
                                    <input id="email" name="user" value="${user}" rules="required|min:6" type="text" class="auth-form__input" placeholder="Tài khoản của bạn" />
                                    <span class="form-message" style="color: red;"></span>
                                </div>
                                <div class="auth-form__group">
                                    <input id="password" name="pass" value="${pass}" rules="required|min:6" type="password" class="auth-form__input" placeholder="Mật khẩu của bạn" />
                                    <span class="form-message" style="color: red;"></span>
                                </div>
                                <div class="auth-form__group">
                                    <input id="password_confirmation" value="${repass}" name="repass" rules="required|min:6" type="password" class="auth-form__input" placeholder="Nhập lại mật khẩu của bạn" />
                                    <span class="form-message" style="color: red;"></span>
                                </div>
                                <p style="color: red;">${mess_pass}</p>
                                <p style="color: red;">${mess_user}</p>
                            </div>

                            <div class="auth-form__aside">
                                <p class="auth-form__policy-text">
                                    Bằng việc đăng ký, bạn đã đồng ý với Thuận Thành Shop
                                    <a href="" class="auth-form__text-link">Điều khoản dịch vụ</a> &
                                    <a href="" class="auth-form__text-link">Chính sách bảo mật</a>
                                </p>

                                <div class="auth-form__switch-wrapper">
                                    <span class="auth-form__switch-text">Bạn đã có tài khoản?</span>
                                    <a href="./login.jsp" class="auth-form__switch-btn">Đăng nhập</a>
                                </div>
                            </div>

                            <div class="auth-form__controls">
                                <button class="btn auth-form__controls-back"><a href="home.jsp">TRỞ LẠI</a></button>
                                <button class="btn btn--primary">ĐĂNG KÝ</button>
                            </div>
                        </div>


                        <div class="auth-form__socials">
                            <a href="" class="auth-form__socials--facebook btn btn--size-s btn--with-icon">
                                <i class="auth-form__socials-icon fab fa-facebook-square"></i>
                                <span class="auth-form__socials-title">
                                    Kết nối với Facebook
                                </span>
                            </a>
                            <a href="" class="auth-form__socials--google btn btn--size-s btn--with-icon">
                                <i class="auth-form__socials-icon fab fa-google"></i>
                                <span class="auth-form__socials-title">
                                    Kết nối với Google
                                </span>
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>


    <script src="./Javascript/general-bugs.js"></script>
    <script src="./Javascript/validator.js"></script>
    <script>
        Validator('#register-form', {
        });
    </script>

</html>
