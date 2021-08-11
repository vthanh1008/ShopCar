<%-- 
    Document   : login
    Created on : Oct 20, 2020, 8:24:13 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Boostrap CSS -->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css"/>
        <link rel="shorcut icon" href="assets/images/logomercedes.svg"/>
        <title>Anh Truong Mercedes-Benz Auto</title>
    </head>
    <body>
        <div class="formm">
               <form action="login" method="post">
            <label>Hello Guest , Log In</label>
            <div class="form-group">
                <label for="exampleInputEmail1">Account</label>
                <input  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="acc">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="pass">
            </div>
            <label style="padding-top: 20px;">${requestScope.meswrong!=null?requestScope.meswrong:""}</label>
            <button style="background-color: white;color: #282828" type="submit" class="btn btn-primary">Login</button>
            <button style="background-color: white;color: #282828" class="btn btn-primary">
                <a style="text-decoration: none;color: #000000" href="register.jsp"/>
                Register</button>
            <button style="background-color: white;color: #282828" class="btn btn-primary">
                <a style="text-decoration: none;color: #000000" href="products"/>
                Quay lại trang chủ</button>
        </form> 
        </div>
    
        <style>
            * {
                box-sizing: border-box;
                margin: 0;padding: 0;
            }
            .formm {
                min-height: 100vh;
                display: flex;
                margin: 0;
                background: #000000;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to top, #434343, #000000);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to top, #434343, #000000); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            }
            .btn-primary{
                margin-left: 27px;
            }
            label{
                color: white;
                display: block;
            }
            form{
                display: table;
                margin: 0 auto;
                margin-top: 200px;
                border-radius:10px;
                background-color: #282828;
                padding: 50px;
            }
        </style>
    </body>
</html>
