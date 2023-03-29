<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Confirm</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<h1>Ban co chac muon xoa mat hang nay?</h1>
<div style="display: flex; gap: 15px; flex-direction: column">
    <div>
        Ma mat hang: <c:out value="${product.ma}" />
    </div>
    <div>
        Ten mat hang: <c:out value="${product.ten}" />
    </div>
    <div>
        Loai mat hang: <c:out value="${product.loai}" />
    </div>
</div>
</body>
<form style="display: flex; gap: 15px; margin-top: 20px" action="delete?action=confirm&productCode=${product.ma}" method="post">
    <button type="submit">Yes</button>
    <button type="submit" formaction="delete?action=cancel">No</button>
</form>
</html>
