<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All my orders</title>
</head>
<body>
<%@ include file="header.jsp" %>
<h1>All my orders</h1>
<ul>
  <c:forEach var="userorderlist" items="${requestScope.userorderlist}">
    <li>
      <a href="${pageContext.request.contextPath}/userorderlist?id=${userorderlist.id}">
          ${userorderlist.beginTimeOfTheOrder} - ${userorderlist.endTimeOfTheOrder}
      </a>

    </li>
  </c:forEach>
</ul>

  <form action="${pageContext.request.contextPath}/mainpage" method="post">
    <button type="submit">Main page</button>
</form>

</body>
</html>