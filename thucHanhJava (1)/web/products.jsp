<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Quan ly san pham</title>
        <style type="text/css">
        table, th, td{
            border:1px solid #ccc;
            
            
        }
        table{
            border-collapse:collapse;
            width:100%;
        }
        th, td{
            text-align:left;
            padding:10px;
        }
        tr:hover{
            background-color:#ddd;
            cursor:pointer;
        }
       
        .container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            padding: 20px;
            grid-gap: 20px;
        }
        .tab {
            padding-left: 50px;
        }
    </style>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    

    <body>
        <h1>Tat ca san pham</h1>
        <h1>Hoa Don</h1>
        <div  class="container">
        <table id ="table1" class="table" >
            <tr>
                <th>Ma Mat Hang</th>
                <th>Ten Mat Hang</th>
                <th> Gia Nhap</th>
                <th> Gia Ban</th>
                <th> Loai</th>


            </tr>
            <c:forEach var="product" items="${products}">
                <tr valign="top">
                    <td>${product.ma}</td>
                    <td>${product.ten}</td>
                    <td>${product.gianhap}</td>
                    <td>${product.giaban}</td>
                    <td>${product.loai}</td>

                    <td><a href="<c:url value="/edit?action=update&productCode=${product.ma}"/>">Edit</a>
                        <a style="" href="<c:url value="/delete?productCode=${product.ma}"/>">Delete</a></td>
                </tr>
            </c:forEach>

        </table >
        <table id ="table2" class="table" >
            <tr>
                <th>Ma Mat Hang</th>
                <th>Ten Mat Hang</th>
                <th> Gia Nhap</th>
                <th> Loai</th>
                <th>So luong</th>


            </tr>
            <c:forEach var="product" items="${products}">
                <tr valign="top">
                    <td>${product.ma}</td>
                    <td>${product.ten}</td>
                    <td>${product.gianhap}</td>
                    <td>${product.loai}</td>
                    <td><input type="text" name="cell" style="border:none; width: 70px;"/></td>

                    <td><a href="<c:url value="/edit?action=update&productCode=${product.ma}"/>">Edit</a>
                        <a style="" href="<c:url value="/delete?productCode=${product.ma}"/>">Delete</a></td>
                </tr>
            </c:forEach>

        </table>
    </div>


        <div style="margin-top:10px">
            <a href="<c:url value="/edit?action=create"/>">Them mat hang</a>
            <a href="${pageContext.request.contextPath}/index.jsp">Trang chu</a><!-- comment -->
        </div>
    </body>

