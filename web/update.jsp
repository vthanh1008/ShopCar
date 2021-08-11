<%-- 
    Document   : update
    Created on : Nov 1, 2020, 10:42:11 PM
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
        
        <div class="container" style="background: white;display: flex;height: 1200px">
            <form style="margin-top: 150px" action="update" method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1">Id</label>
                    <input  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="id1" value="${requestScope.idtemp}" READONLY>
                </div>
                    <%
                        
                    %>
                <div class="form-group">
                    <label for="exampleInputEmail1">Name</label>
                    <input  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="name">
                </div>
                   <div class="form-group">
                    <label for="exampleInputEmail1">Image</label>
                    <input  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="images">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Brand Id</label>
                    <input  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="brandid">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Type Id</label>
                    <input  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="typeid">
                </div>
                
                <div class="form-group">
                    <label for="exampleInputEmail1">Description</label>
                    <input  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="description">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Status Id</label>
                    <input  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="statusid">
                </div>
                <div class="form-group">
                    <label>Quanlity</label>
                    <input  class="form-control"  name="quanlity">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Price</label>
                    <input  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="price">
                </div>
                 <input type="submit" value="Save"/>
            </form> 
         
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
