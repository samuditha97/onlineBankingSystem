<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>

<body>
<div class="abc"  id='navi'>
                    <nav>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="./loan.jsp">Loans</a></li>
                            <li><a href="#">Services</a></li>
                            <li><a href="#">Contact Us</a></li>                    
                        </ul>
                    </nav>
                    <div>
                         <button class="top-right1">Register</button>
                         <button class="top-right2">Login</button>
                    </div>
                </div>
<script type="text/javascript" src="js/jsscript.js"></script>
<div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div class="box">
                    <div class="shape1"></div>
                    <div class="shape2"></div>
                    <div class="shape3"></div>
                    <div class="shape4"></div>
                    <div class="shape5"></div>
                    <div class="shape6"></div>
                    <div class="shape7"></div>
                    <div class="float">
                        <form class="form" action="loginServlet" method="post">
                            <div class="form-group">
                                <label for="username" class="text-white">Username:</label><br>
                                <input type="text" name="uid" id="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-white">Password:</label><br>
                                <input type="password" name="pw" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="login">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </div>
        
        <div class="bs">
        
        <p style="font-size:50px">"we will pave the </p>
        <p style="font-size:50px">way for your dream"</p>     
        </div>
        
        <div class="lg">
        <img  src="images/logo.jpeg">
        </div>
    


</body>
</html>