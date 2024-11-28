<%@ page import="model.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    List<Customer> list = new ArrayList<>();

	list.add(new Customer("Thang", "1999-12-12", "Ha Noi", "pictures/pic1.jpg"));
	list.add(new Customer("Tri", "2002-12-12", "Ha Noi", "pictures/pic2.jpg"));
	list.add(new Customer("Dung", "1994-12-12", "Ha Noi", "pictures/pic3.jpg"));

	request.setAttribute("customerList", list);
%>
<h1>Danh sách khách hàng
</h1>
<br/><br/>
<table>
    <thead>
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${customerList}">
        <tr>
        <td>${customer.name}</td>
        <td>${customer.birthDate}</td>
        <td>${customer.address}</td>
        <td><img src="${customer.imagePath}" alt="Portrait image"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>