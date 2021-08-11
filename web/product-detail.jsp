<%-- 
    Document   : product-detail
    Created on : Oct 13, 2020, 8:52:16 PM
    Author     : Admin
--%>

<%@page import="entity.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
    <head>
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

        <!-- Header -->
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
                                    <a style="color: #202326;background-color: white;text-align: center;border-radius: 15px" 
                                       class="nav-link" >Chào khách</a>
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
                                    <a style="color: #202326;background-color: white;text-align: center;border-radius: 15px;width: 100px;
                                       " class="nav-link" >Chào ${sessionScope.account.account}</a>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                </div> <!-- het container -->
            </nav> <!-- hết nav -->
        </header>
        <!--home-->

        <div class="container" style="background: white;display: flex;height: 900px">
            <div style="margin-top: 130px;"></div>
            <div class="imgdetail" style=" padding: 40px;display: inline-block;margin-top:200px;background-color: white">
                <img src="assets/images/${requestScope.product.images}" />
            </div>
            <div  style="display: inline-block;margin-top: 200px;margin-left: 40px;">
                <p style="color: white;font-size: 15px;">${sessionScope.account.account}</p>
                <h1 style="font-weight: bold;font-size: 20px;">Thông số sản phẩm</h1>

                <ul style="list-style-type:disc">
                    <li>Tên sản phẩm: ${requestScope.product.name}</li>

                    <li>Miêu tả: ${requestScope.product.description}</li>
                        <c:if test="${requestScope.product.statusId eq 1}">
                        <li>Trạng thái: Còn hàng</li>
                        </c:if>
                        <c:if test="${requestScope.product.statusId eq 2}">
                        <li>Trạng thái: Hết hàng</li>
                        </c:if>
                        <c:if test="${requestScope.product.statusId eq 3}">
                        <li>Trạng thái: Mới </li>
                        </c:if>
                        <c:if test="${requestScope.product.statusId eq 4}">
                        <li>Trạng thái: Khuyến Mãi </li>
                        </c:if>
                </ul>
                <c:set var="amount" value="${requestScope.product.price}" />

                <h1 style="font-weight: bold;font-size: 25px;" >
                    Giá thị trường: <fmt:formatNumber type="number" maxIntegerDigits="11" value="${amount}" /> đ
                </h1> 
                <c:if test="${requestScope.product.statusId eq 4}">
                    <div style="border-top: 2.5px solid red;margin: -22px 482px 19px -9px;"></div>
                    <h1 style="font-weight: bold;font-size: 25px;" >
                        Giá khuyến mãi: <fmt:formatNumber type="number" maxIntegerDigits="11" value="${amount * 0.9}" /> đ
                    </h1> 
                </c:if>
                <div style="background-color: #000000;border: 10px solid #000000;position: absolute;">
                    <a style="text-decoration: none;color: white"  class="cart-label"
                       href="add-to-cart?id=${requestScope.product.id}"/> Add to cart
                </div>

            </div>
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
