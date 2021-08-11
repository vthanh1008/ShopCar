<%-- 
    Document   : index
    Created on : Oct 7, 2020, 9:05:05 PM
    Author     : Admin
--%>

<%@page import="java.util.Collections"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Products"%>
<%@page import="java.util.List"%>
<%@page import="DAO.AccountDao"%>
<%@page import="entity.Account"%>
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
        <title>Mercedes-Benz by SomeOne</title>
    </head>
    <body>


        <!-- Header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light ">
                <div class="container">
                    <a href="#"><img src="assets/images/logomercedes.svg"></a>

                    <a class="navbar-brand logo" href="#home">
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
                                <a class="nav-link" href="#portfolio">Sản Phẩm</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="#contact">Liên lạc</a>
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
        <!--end header-->

        <!--home-->
        <section class="home" id="home">
            <div class="container">
                <div class="row full-screen">
                    <div class="home-content">
                        <img src="assets/images/background2.png" >
                    </div>
                </div>
            </div>
        </section>
        <!--end home-->

        <!--porfolio-->
        <section class="portfolio" id="portfolio">
            <div class="container">
                <div class="row full-screen">
                    <h1 class="portfolio-title" >Các dòng xe Mercedes-Benz</h1>  



                    <div class="portfolio-button">

                        <div class="btn-group" role="group" aria-label="Basic example">
                            <!--all sp-->

                            <button type="button" class="btn btn-secondary" >
                                <a href="products#portfolio">Tất cả các dòng xe</a>
                            </button>

                            <!--brand filter--> 

                            <c:forEach items="${requestScope.listBrand}" var="b">
                                <button type="button" class="btn btn-secondary">
                                    <a href="brandfilter?id=${b.id}#portfolio">${b.brand}</a>
                                </button>
                            </c:forEach>


                        </div>

                        <!--sort-->
                        <div class="sort" style="display: inline-block;margin-left: 250px;">
                            <span style="margin-right: 30px;">Sắp xếp theo</span>
                            <a style="margin-right: 10px;color: #000000" href="sortasc#portfolio">Tăng dần
                            </a>
                            <a  style="color: #000000" href="sortdesc#portfolio">Giảm dần
                            </a>
                        </div>
                        <div id="toppagger"></div>
                    </div>


                    <!--List sp-->
                    <div style="display: flex;margin-top: 50px;width: 1300px;height: auto" class="portfolio-table">
                        <div class="portfolio-table1" >
                            <!--Left have search and filter kind--> 
                            <form class="form-group" action="productsearch#portfolio" method="GET">
                                <input class="form-control-range" type="text" placeholder="Search" name="name">
                                <button type="submit"  class="btn-sm">
                                    <i class="fas fa-search" style="font-size: 20px"></i>
                                </button>
                            </form>
                            <!--type filter-->

                            <div class="btn-group2" role="group" aria-label="Basic example" style="height: 300px">
                                <c:forEach items="${requestScope.listType}" var="t">
                                    <button type="button" class="btn btn-secondary" 
                                            style="display: flex;width: 260px;background-color:white;border: none">
                                        <img src="assets/images/${t.icon}" width="40px" style="opacity: 0.7">
                                        <div class="link-type">
                                            <a href="typefilter?id=${t.id}#portfolio" 
                                               style="text-decoration: none;color: #000000;opacity: 0.7">${t.type}</a> 
                                        </div>
                                    </button>
                                </c:forEach>
                            </div>
                        </div>
                        <!--sản phẩm detail-->


                        <div class="portfolio-table2" id="table2">
                            <c:forEach items="${requestScope.listProducts}" var="p">
                                <div class="p-2 bd-highlight" style="height: 300px;width: 300px;display: inline-block">
                                    <div class="link-amount">
                                        <img src="assets/images/${p.images}"/>
                                        <!--sp nao giam gia-->
                                        <c:if test="${p.statusId eq 3}">
                                            <h1 style="position: absolute;font-size: 15px;border-radius: 10px;padding: 5px; 
                                                margin-left: 20px;color: red;border: 1px solid #000000">Sale 10%</h1>
                                        </c:if>
                                        <!--next to product detail page-->
                                        <div>
                                            <a href="product-detail?id=${p.id}"/> ${p.name}
                                        </div>

                                        <div class="amount">
                                            <c:set var="amount" value="${p.price}"/>
                                            Giá: <fmt:formatNumber type="number" maxIntegerDigits="11" value="${amount}" />đ
                                            <br>
                                            <c:if test="${p.statusId eq 3}">
                                                <div style="border-top: 1px solid red;margin: -11px 70px 10px 70px;"></div>
                                                Giá khuyến mãi: <fmt:formatNumber type="number" maxIntegerDigits="11" value="${amount*0.9}" />đ
                                            </c:if>
                                        </div>


                                        <div style="background-color: #DDDDDD;border-radius: 10px;opacity: 0.8">
                                            <a  class="cart-label" href="add-to-cart?id=${p.id}"/> Add to cart
                                        </div> 
                                    </div>

                                </div>
                            </c:forEach>  

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--end porfolio-->

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



        <script>
            pagger(${requestScope.pageindex},${requestScope.totalpage}, 2, "toppagger");
        </script>
    </body>



</html>
