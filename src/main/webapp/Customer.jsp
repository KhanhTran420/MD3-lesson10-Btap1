<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Customer" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/25/2022
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>model.Customer</title>
</head>
<body>
<%!
    List<Customer> customerList = new ArrayList<>();
%>

<%
    customerList.add(new Customer("Tran Quoc Khanh","24/01/1998","Phu Tho","https://afamilycdn.com/150157425591193600/2021/12/9/wahid-0951-1639019085321870264845.jpg"));
    customerList.add(new Customer("Nguyen Anh Tuan","15/06/1998","Quang Ninh","https://suamayruaxe.com/wp-content/uploads/2021/09/meme-la-gi-cung-tim-hieu-ky-hon-ve-no-nhe.jpg"));
    customerList.add(new Customer("Nguyen Thi Anh","06/10/1998","Thanh Hoa","https://anhdep123.com/wp-content/uploads/2021/02/meme-bat-luc.jpg"));
    request.setAttribute("nano",customerList);
%>
<table border="1">
    <tr>
        <td>Name</td>
        <td>DateOfBirth</td>
        <td>Address</td>
        <td>Avatar</td>
    </tr>
    <tr>
        <c:if test="${nano.size()>=3}">
        <p> có nhiều khách hàng <p>
            </c:if>
        <c:forEach var="customer" items="${nano}">
            <tr>
               <td>${customer.name}</td>
               <td>${customer.dateOfBirth}</td>
               <td>${customer.address}</td>
               <td><img src="${customer.img}" width="100" height="100"></td>
            </tr>
        </c:forEach>
    </tr>
</table>

</body>
</html>
