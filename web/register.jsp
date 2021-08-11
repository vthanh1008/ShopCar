<%-- 
    Document   : register
    Created on : Oct 21, 2020, 9:02:53 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Boostrap CSS -->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css"/>
        <link rel="shorcut icon" href="assets/images/logomercedes.svg"/>
        <title>Mercedes-Benz by SomeOne</title>
    </head>
    <body>
        <div class="formm">
            <form action="register" method="post">
                <label>Hello Guest , Registnation</label>

                <div class="form-group row">
                    <label for="example-text-input" class="col-2 col-form-label">Account</label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="acc" id="example-text-input">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="example-text-input" class="col-2 col-form-label">Name</label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="name" id="example-text-input">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="example-password-input" class="col-2 col-form-label">Password</label>
                    <div class="col-10">
                        <input class="form-control" type="password" name="pass" id="example-password-input">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="example-email-input" class="col-2 col-form-label">Email</label>
                    <div class="col-10">
                        <input class="form-control" type="email" name="email" id="example-email-input"  pattern="^([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x22([^\x0d\x22\x5c\x80-\xff]|\x5c[\x00-\x7f])*\x22)(\x2e([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x22([^\x0d\x22\x5c\x80-\xff]|\x5c[\x00-\x7f])*\x22))*\x40([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x5b([^\x0d\x5b-\x5d\x80-\xff]|\x5c[\x00-\x7f])*\x5d)(\x2e([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x5b([^\x0d\x5b-\x5d\x80-\xff]|\x5c[\x00-\x7f])*\x5d))*$">
                    </div>
                </div>


                <label>${mesright!=null?mesright:""}</label>
                <label>${meswrong!=null?meswrong:""}</label>
                <button style="background-color: white;color: #282828" type="submit" class="btn btn-primary">Đăng kí</button>
                <button style="background-color: white;color: #282828" class="btn btn-primary">
                    <a style="text-decoration: none;color: #000000" href="login.jsp"/>
                    Trở lại đăng nhập</button>
            </form>
        </div>
        <style>
            * {
                box-sizing: border-box;
                margin: 0;padding: 0;
                  font-family: 'Literata', serif;
            }
            .formm {
                min-height: 100vh;
                display: flex;
                margin: 0;
                background: #000000;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to top, #434343, #000000);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to top, #434343, #000000); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            }
            .form-group label{
                   color: white;
                display: block;
                margin-right: 2px;
            }
            .form-group col-10{
                margin-left: 10px;
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
