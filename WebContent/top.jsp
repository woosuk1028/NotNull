<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>

<body>
<div id="wrap">
    <header id="header">
       
        <div class="logo">
            <a href="main.jsp"><img src="images/logo.png"></a>
        </div>
        <hr width = "100%" color = "black">
        
        <nav class="nav-left">
                   <ul>
                       <li><a href="#">Shop</a>
            		<ul class="submenu">
                		<li><a href="productList.me">lamp</a></li>
                		<li><a href="#">mirror</a></li>
                		<li><a href="#">teaset</a></li>
                		<li><a href="#">chair</a></li>
                		<li><a href="#">watch</a></li>
                		<li><a href="#">poster</a></li>
                		<li><a href="#">object</a></li>
            		</ul>
            		</li>
                   </ul>
        </nav>
        <nav class="nav-right">
            <ul>
                <li><a href="loginForm.jsp">Login</a></li>
                <li><a href="#">Order</a></li>
                <li><a href="myAccountForm.jsp">My Account</a></li>
                <li><a href="#">Cart</a></li>
            </ul>
        </nav>
            
    </header>

    </div>
    <script src="script/jquery.min_1.12.4.js"></script>
    <script src="script/custom.js"></script>
</body>
</html>