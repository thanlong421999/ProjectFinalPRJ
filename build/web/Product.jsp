<%-- 
    Document   : Product
    Created on : Jul 7, 2023, 9:38:05 AM
    Author     : thanl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
        <link rel="stylesheet" href="css/css2.css">

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/tooplate-moso-interior.css" rel="stylesheet">

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">



        <style>


a{color: white}
        </style>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="fonts/font-awesome-4.7.0/">
        <script src="https://kit.fontawesome.com/8f65a29f5e.js" crossorigin="anonymous"></script>
    </head>
    <body>

<center> 
    <table>
        <thead>
            <tr>
                <th style="text-align: center">ID</th>
                <th style="text-align: center">NAME</th>
                <th style="text-align: center">COUNT</th>
                <th style="text-align: center">PRICE</th>
                <th style="text-align: center">DESCRIBE</th>

                <th style="text-align: center"></th>

            </tr>
        <tbody>
            <c:forEach items="${data}" var="i" varStatus="loop">
            <form action="MainController" method="POST">
                <tr>
                    <td style="text-align: center" height="50.5px"width="50px">${i.id}</td>
                    <td style="text-align: center" height="50.5px" width="200px">${i.name}</td>
                    <td style="text-align: center" height="50.5px" width="80px">${i.count}</td>
                    <td style="text-align: center" height="50.5px"width="100px">${i.price}</td>
                    <td style="text-align: center" height="50.5px" ><img src="${i.link}" height="70px"></td>
                    <td style="text-align: center"  height="50.5px" width="110px">
                        <form action="MainController" method="POST">
                            <button type="submit" value="Cart" name="action">ADD CART</button>
                            
                        </form>
                        </td>


                    </tr>
                </form>
            </c:forEach>
            </tbody>
            </thead>
        </table>
    </center>



    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>
