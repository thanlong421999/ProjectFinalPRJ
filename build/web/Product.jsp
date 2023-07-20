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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


        <style>


            a{
                color: white
            }
        </style>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="fonts/font-awesome-4.7.0/">
        <script src="https://kit.fontawesome.com/8f65a29f5e.js" crossorigin="anonymous"></script>
    </head>
    <body>

        <!-- Sidebar on click -->
        <nav class="w3-sidebar w3-bar-block w3-white w3-card w3-animate-left w3-xxlarge" style="display:none;z-index:2" id="mySidebar">
            <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-display-topright w3-text-teal">Close
                <i class="fa fa-remove"></i>
            </a>
            <a href="#" class="w3-bar-item w3-button">Link 1</a>
            <a href="#" class="w3-bar-item w3-button">Link 2</a>
            <a href="#" class="w3-bar-item w3-button">Link 3</a>
            <a href="#" class="w3-bar-item w3-button">Link 4</a>
            <a href="#" class="w3-bar-item w3-button">Link 5</a>
        </nav>

        <!-- Navbar -->
        <div class="w3-top">
            <div class="w3-bar w3-theme-d2 w3-left-align">
                <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-hover-white w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
                <a href="ListController" class="w3-bar-item w3-button w3-teal"><i class="fa fa-home w3-margin-right"></i>Home</a>
                <a href="#team" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Team</a>
                <a href="#work" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Work</a>
                <a href="#pricing" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Price</a>
                <a href="#contact" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Contact</a>
                <div class="w3-dropdown-hover w3-hide-small">
                    <button class="w3-button" title="Notifications">Dropdown <i class="fa fa-caret-down"></i></button>     
                    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
                        <a href="#" class="w3-bar-item w3-button">Link</a>
                        <a href="#" class="w3-bar-item w3-button">Link</a>
                        <a href="#" class="w3-bar-item w3-button">Link</a>
                    </div>
                </div>

                <form action="MainController" method="post">


                    <button type="submit" name="action" value="Logout" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-teal" style="
                            display: inline-block;
                            outline: 0;
                            cursor: pointer;
                            border-radius: 6px;
                            border: 2px solid #ff4742;
                            color: #fff;
                            background-color: #ff4742;
                            padding: 8px;
                            box-shadow: rgba(0, 0, 0, 0.07) 0px 2px 4px 0px, rgba(0, 0, 0, 0.05) 0px 1px 1.5px 0px;
                            font-weight: 800;
                            font-size: 16px;
                            height: 42px;
                            :hover{
                                background: 0 0;
                                color: #ff4742;
                            }
                            ">Logout</button>


                </form>
 
            <a href="MyEcart.jsp" class="w3-bar-item w3-button w3-right"> My cart(${size})</a></p>
            </div>
            <div>

            </div>

            <center>
                <div>


                </div>
                <br>
                <br>
                <br>
                <br>
                <div class="search">
                    <form action="MainController" method="POST">
                        <input type="text" 
                               placeholder=" Search Courses"
                               name="name">
                        <button 
                            <button type="submit" name="action" value="Search">
                            <i class="fa fa-search"
                               style="font-size: 18px;">
                            </i>
                        </button>
                    </form>
                </div>
            </center>



            <center> 
                <table border="1px" style="border: white">
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
                                <td style="text-align: center;    padding-top: 28px; padding-bottom: 28px" height="50.5px"width="50px">${i.id}</td>
                                <td style="text-align: center;    padding-top: 28px; padding-bottom: 28px" height="50.5px" width="200px">${i.name}</td>
                                <td style="text-align: center;    padding-top: 28px; padding-bottom: 28px" height="50.5px" width="80px">${i.count}</td>
                                <td style="text-align: center;    padding-top: 28px; padding-bottom: 28px" height="50.5px"width="100px">${i.price}</td>
                                <td style="text-align: center;    padding-top: 28px; padding-bottom: 28px" height="50.5px" ><img src="${i.link}" height="70px" width="103.86px"></td>
                                <td style="text-align: center;    padding-top: 28px; padding-bottom: 28px"  height="0.5px" width="170px">
                                    <form action="MainController" method="POST">
                                        <input name="id" value="${i.id}" hidden="hidden">
                                        <button type="submit" value="Cart" name="action" style="
                                                display: inline-block;
                                                outline: 0;
                                                border: none;
                                                cursor: pointer;
                                                padding: 0 24px;
                                                border-radius: 50px;
                                                min-width: 140px;
                                                height: 50px;
                                                font-size: 18px;
                                                background-color: #fd0;
                                                font-weight: 500;
                                                color: #222;
                                                ">ADD CART</button>
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
