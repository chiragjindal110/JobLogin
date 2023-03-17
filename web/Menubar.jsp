<%-- 
    Document   : Menubar
    Created on : 22-Jul-2022, 8:48:06 pm
    Author     : Chirag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
  <style>
.menubar1
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

.menubar_button
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
.menubar_button:hover
{
    background-color: #FFAC1C;
    transition-duration: 0.7s;
    font-weight:500;
    color: black;
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
  </style>
    </head>
    <body>
        <div class="menubar1">
            <ul>
                <li><a href="index.jsp" class="menubar_button">Home</a></li>
                <li><a href="index.jsp" class="menubar_button">Search Jobs</a></li>
                <li><a href="index.jsp" class="menubar_button">Internships</a></li>
                <li><a href="Blogs.jsp" class="menubar_button">Blogs</a></li>
                <li><a href="index.jsp" class="menubar_button">About Us</a></li>
            </ul>
        </div>
    </body>
</html>
