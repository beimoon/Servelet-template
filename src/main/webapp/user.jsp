<%--
  Created by IntelliJ IDEA.
  User: 86136
  Date: 2022/9/18
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" cellpadding="0" width="800">
<tr align="center">
    <th>序号</th>
    <th>名称</th>
    <th>企业</th>
    <th>介绍</th>
    <th>订单</th>
    <th>状态</th>
    <th>操作</th>
</tr>

    <c:forEach items="${users}" var="user" varStatus="status">
     <tr align="center">
        <td>${status.count}</td>
        <td>${user.brand_name}</td>
        <td>${user.company_name}</td>
        <td>${user.description}</td>
        <td>${user.ordered}</td>
        <c:if test="${brand.status!=1}">
            <td>禁用</td>
        </c:if>
        <c:if test="${brand.status==1}">
            <td>启动</td>
        </c:if>
         <td><a href="#">修改</a><a href="#">删除</a></td>
</tr>

    </c:forEach>
</table>

</body>
</html>
