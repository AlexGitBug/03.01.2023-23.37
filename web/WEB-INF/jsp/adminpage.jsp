<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Admin Page</title>
</head>
<body>

<%@include file="header.jsp" %>

<form action="/adminpage" method="post" enctype="multipart/form-data">
  <label><br>
    <br>
    Список всех комнат:
    <ul><c:forEach var="room" items="${requestScope.roomlist}">
      <li>
        <img width="252" height="252" src="${pageContext.request.contextPath}/users/users${room.image}" alt="No image"><br>
        <a href="/room?id=${room.id}">Описание(номер комнаты, статус): ${room.number} - ${room.status} - ${room.image}</a>
      </li>
    </c:forEach>
    </ul>
  </label><br>
  <div>
    <a href="${pageContext.request.contextPath}/addroom">
      <button type="submit">addroom</button>
    </a>
  </div>
</form>

<%@include file="footer.jsp" %>

</body>
</html>