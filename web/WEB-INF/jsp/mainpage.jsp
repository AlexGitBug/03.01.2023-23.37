<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Главная страница/Страница ожидания</title>
</head>
<body>
<%@include file="header.jsp" %>


Вы на главной странице. Спасибо, что с нами<br>

<form action="${pageContext.request.contextPath}/order" method="get">
    <button type="submit">Забронировать комнату</button>
</form>
<form action="/userorderlist" method="get">
    <button type="submit">Список заказов</button>
</form>
</body>
</html>