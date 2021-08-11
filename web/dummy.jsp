<%-- 
    Document   : dummy
    Created on : Oct 14, 2020, 9:38:02 AM
    Author     : sonnt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="../js/pagger.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="toppagger"></div>
        <table border="1px">
            <tr>
                <th>Id</th>
                <th>Name</th>
            </tr>
            <c:forEach items="${requestScope.dummies}" var="d">
                <tr>
                    <td>${d.id}</td>
                    <td>${d.name}</td>
                </tr>
            </c:forEach>
        </table>
        <div id="bottompagger"></div>
        
        <script>
            pagger(${requestScope.pageindex},${requestScope.totalpage},2,"toppagger");
            pagger(${requestScope.pageindex},${requestScope.totalpage},2,"bottompagger");
        </script>
    </body>
</html>
