<%-- 
    Document   : admin
    Created on : Nov 1, 2020, 9:55:25 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charse
              t=UTF-8"/>
        <!-- Boostrap CSS -->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css"/>
        <!-- Font awesom CSS -->
        <link rel="stylesheet" type="text/css" href="assets/css/all.min.css"/>
        <!-- Header CSS -->
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
        <script src="js/pagger.js" type="text/javascript"></script>
        <link rel="shorcut icon" href="assets/images/logomercedes.svg"/>
        <link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
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
                            <li class="nav-item ">
                                <a class="nav-link" href="logout">Đăng xuất</a>
                            </li>
                            <a style="color: #202326;background-color: white;text-align: center;border-radius: 15px
                               " class="nav-link" >Chào admin</a>
                        </ul>
                    </div>
                </div> <!-- het container -->
            </nav> <!-- hết nav -->
        </header>
        <div class="container" style="background: white;display: flex;height: 1200px">
            <div style="margin-top: 130px;"></div>
            <table class="table-bordered"  style="margin-top: 150px;border-radius: 10px; text-align: center;
                   overflow: hidden;
                   box-shadow: 0 0px 40px 0px rgba(0, 0, 0, 0.15);
                   -moz-box-shadow: 0 0px 40px 0px rgba(0, 0, 0, 0.15);
                   -webkit-box-shadow: 0 0px 40px 0px rgba(0, 0, 0, 0.15);
                   -o-box-shadow: 0 0px 40px 0px rgba(0, 0, 0, 0.15);
                   -ms-box-shadow: 0 0px 40px 0px rgba(0, 0, 0, 0.15);">
                <tr style="font-family: Lato-Bold;
                    font-size: 18px;
                    color: #fff;
                    line-height: 1.4;

                    background-color: #6c7ae0;">
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Images</th>
                    <th scope="col">Price</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Type</th>
                    <th scope="col">Brand</th>
                    <th scope="col">Description</th>
                    <th scope="col">Status</th>
                    <th scope="col">Update</th>
                    <th scope="col">Delete</th>
                </tr>
                <tbody>

                    <c:forEach items="${requestScope.listProducts}" var="p">'

                        <tr style="font-family: Lato-Regular;
                            font-size: 15px;
                            color: #808080;
                            line-height: 1.4;">
                            <th scope="row" >${p.id}</th>
                            <td><a href="product-detail?id=${p.id}">
                                ${p.name}</td>
                            <td>
                                <img src="assets/images/${p.images}" width="60" />
                            </td>
                            <c:set var="amount" value="${p.price}" />
                            <td>
                                <fmt:formatNumber type="number" maxIntegerDigits="11" value="${amount}" />
                            </td>
                            <td>${p.quanlity}</td>
                            <td>${p.typeId}</td>
                            <td>${p.brandId}</td>
                            <td>${p.description}</td>
                            <td>${p.statusId}</td>
                            <td><a href="updatetemp?id=${p.id}" />Update</td>

                            <td><a href="deleteproduct?id=${p.id}"/>Delete</td>
                        </tr>
                    </c:forEach>
                </tbody>

                <div style="background-color: #000000">
                    <a style="position: absolute;border: 5px solid #000000;background-color: #000000;color: white;text-decoration: none;
                       margin-top: 100px;" href="insert.jsp">Add new products</a>
                </div>
                <div style="background-color: #000000">

                    <a style="position: absolute;border: 5px solid #000000;background-color: #000000;color: white;text-decoration: none;    margin-left: 250px;
                       margin-top: 100px;" href="profile">Go to Account</a>
                </div>
            </table>
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
