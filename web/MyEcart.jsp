<%-- 
    Document   : MyEcart
    Created on : Jun 4, 2023, 11:46:04 PM
    Author     : thanl
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            a{
                text-decoration:none;
            }
            table{
                border-collapse: collapse;
            }

        </style>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/css2.css">
        <link rel="stylesheet" href="css/util.css">
    </head>
    <body>
    <center>
        <table border="1px" width="40%">
            <tr>
                <th>No</th>
                <th>Name</th>
                
                <th>Quantity</th>
                
                <th>Price</th>
                <th>Total</th>
                <th>Action</th>

            </tr>

            <c:set var="o" value="${sessionScope.cart}" />
            <c:set var="t" value="0" />
            <c:forEach items="${o.items}" var="z">
                <c:set var="t" value="${t+1}"/>
                <tr>
                    <td>${t}</td>
                    <td>${z.product.name}</td>
                    
                    <td>
                        <form action="MainController">
                            <input name="num" value="1">
                            <button type="submit" name="action" value="Process">+</button>
                        </form>
                        <input type="text" name="num" value="${z.quantity}"/>
                    
                    </td>
                    
                    <td><fmt:formatNumber pattern="##.##" value="${z.price}"/></td>
                    <td><fmt:formatNumber pattern="##.##" value="${z.quantity*z.price}"/></td>
                    <td>
                        <form action="MainController" method="POST">
                            <input type="hidden" name="id" value="${z.product.id}">
                            <button type="submit" name="action" value="Process" style="color: red">REMOVE</button>
                        </form>
                    </td>       
                </tr>



            </c:forEach>
        </table>
    </center>               

    <hr/>
    <h3><a href="ListController"  style="color:red">Countinue to buy</a></h3>
</body>
</html>
