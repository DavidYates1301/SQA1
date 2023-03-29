

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP - Hello World</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <h1>Trang chu</h1>
        <br/>
        <a href="${pageContext.request.contextPath}/products">Quan ly mat hang</a>
        <a href="${pageContext.request.contextPath}/bills">Nhap hang</a><!-- comment -->
    </body>
</html>
