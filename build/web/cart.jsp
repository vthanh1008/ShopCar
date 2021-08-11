<%-- 
    Document   : cart
    Created on : Oct 29, 2020, 9:00:32 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shorcut icon" href="assets/images/logomercedes.svg"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Crimson+Pro&family=Literata">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <!-- Boostrap CSS -->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css"/>
        <!-- Font awesom CSS -->
        <link rel="stylesheet" type="text/css" href="assets/css/all.min.css"/>
        <!-- Header CSS -->
        <link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
        <link rel="shorcut icon" href="assets/images/logomercedes.svg"/>
        <title>Mercedes-Benz by SomeOne</title>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light fixed-top">
                <div class="container">
                    <a href="#"><img src="assets/images/logomercedes.svg"></a>
                    <a class="navbar-brand logo" href="products">
                        Mercedes-Benz<br>by SomeOne</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                            <li class="nav-item ">
                                <a class="nav-link" href="products">Trang Chủ</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="products#portfolio">Sản Phẩm</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="products">Liên lạc</a>
                            </li>
                            <li class="nav-item ">
                                <!--gio hang-->
                                <c:choose>
                                    <c:when test="${sessionScope.cart eq null}">
                                        <a href="cart.jsp" class="fas fa-shopping-cart" style="font-size: 20px;text-decoration: none;color: white;margin-top: 10px;"></a>
                                    </c:when>    
                                    <c:otherwise>
                                        <div>
                                            <a href="cart.jsp" class="fas fa-shopping-cart" style="font-size: 20px;text-decoration: none;color: white;margin-top: 10px">
                                                <span style="border: 1px solid white;border-radius: 10px;padding:0 8px 0 8px;font-size: 14px;position: absolute;    margin: -7px 0px 0px -7px; ">
                                                    ${sessionScope.cart.size()}</span></a>
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                            </li>
                            <!--Taikhoan-->
                            <c:choose>
                                <c:when test="${sessionScope.account eq null}">
                                    <li class="nav-item ">
                                        <a class="nav-link" href="login.jsp">Đăng nhập</a>
                                    </li>
                                    <a style="color: #202326;background-color: white;text-align: center;border-radius: 15px
                                       " class="nav-link" >Chào khách</a>
                                </c:when>    
                                <c:when test="${sessionScope.account.account == 'admin'}">
                                    <li class="nav-item ">
                                        <a class="nav-link" href="logout">Đăng xuất</a>
                                    </li>
                                    <a style="color: #202326;background-color: white;text-align: center;border-radius: 15px" 
                                       class="nav-link" href="crudservlet">Chào admin</a>
                                </c:when>  
                                <c:otherwise>
                                    <li class="nav-item ">
                                        <a class="nav-link" href="logout">Đăng xuất</a>
                                    </li>
                                    <a style="color: #202326;background-color: white;text-align: center;border-radius: 15px
                                       " class="nav-link" >Chào ${sessionScope.account.account}</a>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                </div> <!-- het container -->
            </nav> <!-- hết nav -->
        </header>

        <div class="container" style="background: white;height: 900px">
            <div style="margin-top: 130px;"></div>

            <c:choose>
                <c:when test="${sessionScope.cart.size() eq 0||sessionScope.cart eq null}">
                    <div style="display: grid;justify-content: center;">
                        <img src="assets/images/GLS_1.png">
                        <p style="font-size: 20px;text-align: center;opacity: 0.8">Giỏ hàng của bạn còn trống</p>
                        <a style="text-align: center;text-decoration: none;color: white;background-color: #000000" href="products#portfolio">Mua hàng</a>
                    </div>
                </c:when>    
                <c:otherwise>
                    <!--remove all-->
                    <div style="display: flex;background-color: whitesmoke;margin: 0px 11px 15px 8px;padding: 20px 0 0 0px">
                        <p style="font-size: 25px;margin-left: 25px">Sản phẩm</p>
                        <p style="font-size: 25px;margin-left: 340px;">Đơn giá</p>
                        <p style="font-size: 25px;margin-left: 100px">Số lượng</p>
                        <p style="font-size: 25px;margin-left: 135px">Số tiền</p>
                        <p style="font-size: 25px;margin-left: 70px">Thao tác</p>
                    </div>
                    <c:forEach items="${sessionScope.cart}" var="cart">
                        <div class="p-2 bd-highlight" style="height: 163px;width: 300px;display: block;">
                            <div class="link-amount" style="width: 1200px;display: flex;background-color: whitesmoke">
                                <!--anh-->
                                <img style="width: 300px;height: 150px" src="assets/images/${cart.productImage}"/>
                                <!--id to name-->
                                <div style="font-size: 20px;margin: 40px 0 0 40px;">
                                    <a style="color: #000000;text-decoration: none;margin-right: 40px;"
                                       href="product-detail?id=${cart.productId}"> ${cart.productName}</a>
                                    <!--price product-->
                                    <c:set var="price" value="${cart.productPrice}"/>
                                    <fmt:formatNumber type="number" maxIntegerDigits="11" value="${price}" /> đ
                                    <br>   
                                </div>
                                <!--So luong va nut + --->
                                <div style="display: inline-flex;margin:40px 40px 70px 50px;font-size: 20px;border: 1px solid #000000">
                                    <!-- Dau - -->
                                    <a style="border-right:1px solid #000000;text-decoration: none;color: #000000;padding: 3px 13px 0 14px;"
                                       href="updatecart?action=1&id=${cart.productId}">-</a>
                                    <!--Soluong +--->
                                    <div style="width: 70px;text-align: center;padding-top: 4px;" >
                                        ${cart.amount}</div>
                                    <!--Dau +-->
                                    <a style="border-left: 1px solid #000000;text-decoration: none;color: #000000;padding: 3px 12px 4px 10px;"
                                       href="updatecart?action=2&id=${cart.productId}">+</a>
                                </div>
                                <!--Price amount-->
                                <div style="font-size: 20px;margin: 40px 0 0 40px;">
                                    <c:set var="price" value="${cart.productPrice}"/>
                                    <fmt:formatNumber type="number" maxIntegerDigits="11" value="${price*cart.amount}" /> đ
                                    <br>
                                </div>
                                <!--Delete-->
                                <div style="font-size: 20px;margin: 40px 0 0 40px;">
                                    <a style="color: #000000;text-decoration: none;"href="updatecart?action=3&id=${cart.productId}">Delete</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach> 
                    <div style="display: flex;justify-content: flex-end;font-size: 23px;">
                        <p style="margin: 15px 75px 0 0;">Tổng tiền hàng</p> 
                        <span style="margin: 15px 5px 0 0">
                            <c:set var="total" value="${0}"/>
                            <c:forEach items="${sessionScope.cart}" var="cart">
                                <!--Tong tien-->
                                <c:set var="total" value="${total + cart.amount*cart.productPrice}" />

                            </c:forEach>
                            <fmt:formatNumber type="number" maxIntegerDigits="11" value="${total}" /> đ
                        </span>
                        <!--Thanh toan-->
                        <div style="margin: 20px 90px 20px 14px;">
                            <a style="background-color: #000000;border: 10px solid #000000;text-decoration: none;color: white" 
                               href="">Thanh toán</a>
                        </div>

                    </div>

                    <div>
                        <a style="background-color: #000000;border: 10px solid #000000;text-decoration: none;color: white"
                           href="products">Quay lại trang chủ</a>
                        <a style="background-color: #000000;border: 10px solid #000000;text-decoration: none;color: white"
                           href="removeall">Xóa tất cả sản phẩm</a>
                    </div>
                    <!--check out-->
                </c:otherwise>
            </c:choose>
        </div>
        <section class="footer"  >
            <div class="container">
                <div class="row-2" >
                    <div class="title">
                        <a href="#" style="color: #999999;font-size: 30px;
                           padding: 10px 50px;text-decoration: none;display: block;text-align: center" />
                        Mercedes-Benz by SomeOne  
                    </div>

                </div>
            </div>
        </section>


    </body>
</html>
