<%-- 
    Document   : LoginError
    Created on : 27-Jul-2022, 4:06:11 PM
    Author     : Chirag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-image: url(./images/login_image.jpg);  background-repeat: no-repeat;
    background-size: cover;
    background-color: white;">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css">
<!--       -->   <style>
.menubar
{
    width: 93.23rem;
    height: 8rem;
    margin: auto;
    margin-top: 10rem;
    margin-left: 30rem;
    border-color: black;
    position: fixed; 
    border-radius: .5rem;
    background-color: black;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    
}

.menubar_buttons
{
    
    border: 0px;
  height: 8rem;
    border-radius: .5rem;
    color: white;
    padding: 3rem 6rem;
    background-color: black;
    font-size: 1.8rem;
    text-decoration: none;

}
.menubar_buttons:hover
{
    background-color: #FFAC1C;
    transition-duration: 0.7s;
    font-weight:500;
    color: black;
}
.login_div
{
    float: left;
    position: relative;
    margin-top: 27rem;
    width: 39rem;
    margin-left: 15rem;
    text-align: center;
    background-color: #F5F5F5;
    border-radius: 1rem;
    padding: 4rem;
    padding-bottom: 0;
    box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
}

ul {

list-style-type: none;

margin-top: 3rem;

padding: 0;

}

li {

display: inline;
margin: 0;
width: 26rem;

}
.error
{
    margin: 23rem 0 0 27rem;
    position: absolute;
    font-size: 2rem;
    color: red;
    text-decoration: blink;
    transition-delay:0.2s;
}
        </style>
        
<!--         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
     -->
    </head>
    <body>
        <div class="menubar">
            <ul>
                <li><a href="index.jsp" class="menubar_buttons">Home</a></li>
                <li><a href="index.jsp" class="menubar_buttons">Search Jobs</a></li>
                <li><a href="index.jsp" class="menubar_buttons">Internships</a></li>
                <li><a href="Blogs.jsp" class="menubar_buttons">Blogs</a></li>
                <li><a href="index.jsp" class="menubar_buttons">About Us</a></li>
            </ul>
        </div>
        <div class = "error"> <blink>Invalid email and password!!</blink>
        </div>
      
        <div class="login_div">
            <h1 style="font-size: 3rem;">Login Here!!</h1>
            <form method="POST" action="login">
                <input class="input-2"type="email" placeholder="Enter Email" name="email1">
                <input class="input-2"type="password" placeholder="Enter Password" name="pass1">
                <input  style="font-size: 2rem; text-align: left; margin-top: 2rem;" type="checkbox" name="rememberme1" value="rememberme" /> <b style="margin-top: 2rem; font-size: 1.5rem; text-align: left;">Remember Me</b> <br>
                <button style="margin-top:2rem" class="button-36" type='submit'>LogIn</button>
                
            </form>
        </div>
    </body>
</html>
