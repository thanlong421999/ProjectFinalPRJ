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

    </head>
    <body>
        <table border="1px" width="40%">
            <tr>
                <th>No</th>
                <th>name</th>
                <th>quantity</th>
                <th>price</th>
                <th>total</th>
                <th>action</th>

            </tr>

            <c:set var="o" value="${sessionScope.cart}" />
            <c:set var="t" value="0" />
            <c:forEach items="${o.items}" var="z">
                <c:set var="t" value="${t+1}"/>
                <tr>
                    <td>${t}</td>
                    <td>${z.mobile.mobileName}</td>

                    <td>
                        <button><a href="process?num=-1&mobileId=${z.mobile.mobileId}">-</a></button>
                        <input type="text"  value="${z.quantity}"/>
                        <button><a href="process?num=1&mobileId=${z.mobile.mobileId }">+</a></button>
                    </td>


                    <td><fmt:formatNumber pattern="##.#" value="${z.price}"/></td>
                        <td><fmt:formatNumber pattern="##.#" value="${z.quantity*z.price}"/></td>
                        <td>
                            <form action="process" method="post">
                                <input type="hidden" name="mobileId" value="${z.mobile.mobileId}">
                                       <input type="submit" value="Remove item"/>
                            </form>
                        </td>       
                    </tr>



            </c:forEach>
        </table>
                    
        
            <hr/>
            <h3><a href="listMobile">Countinue to buy</a></h3>
    </body>
</html>
