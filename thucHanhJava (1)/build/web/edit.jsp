<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Edit</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <h1>Product </h1>
        <form action="edit" method="post" style="display: flex; flex-direction: column; gap:10px; align-items: start">

            <div>
                <label for="code">Ma mat hang:</label>
                <input type="text"  id="ma" name="ma" value="${ma != null ? ma : ""}"/>
            </div>
            <div>
                <label for="ten">Ten mat hang:</label>
                <input type="text" id="ten" name="ten" value="${ten != null ? ten : ""}"/>
            </div>
            <div>
                <label for="gianhap">Gia nhap:</label>
                <input type="text" id="gianhap" name="gianhap" value="${gianhap != null ? gianhap : ""}"/>
            </div>
            <div>
                <label for="giaban">Gia ban: </label>
                <input type="text" id="giaban" name="giaban" value="${giaban != null ? giaban : ""}"/>
            </div>
            <div>
                <label for="loai">Loai mat hang:</label>
                <input type="text" id="loai" name="loai" value="${loai != null ? loai : ""}"/>
            </div>
            <c:if test="${error != null}">
                <div style="color: red">${error}</div>
            </c:if>
            <c:choose>
                <c:when test="${isUpdate}">
                    <button type="submit" formaction="edit?action=update&productCode=${ma}">Cap nhat</button>
                </c:when>
                <c:otherwise>
                    <button type="submit" formaction="edit?action=create">Them mat hang</button>
                </c:otherwise>
            </c:choose>
        </form>
        <a href="${pageContext.request.contextPath}/products">Quan ly mat hang</a>
        <a href="${pageContext.request.contextPath}/index.jsp">Trang chu</a><!-- comment -->

    </body>
</html>
