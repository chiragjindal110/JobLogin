<%-- 
    Document   : index.jsp
    Created on : 22-Jul-2022, 8:44:18 pm
    Author     : Chirag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css"/>
        <style>
            .search1 {
  background-image: linear-gradient(92.88deg, #455EB5 9.16%, #5643CC 43.89%, #673FD7 64.72%);
  border-radius: 8px;
  border-style: none;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  flex-shrink: 0;
  font-family: "Inter UI","SF Pro Display",-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen,Ubuntu,Cantarell,"Open Sans","Helvetica Neue",sans-serif;
  font-size: 16px;
  font-weight: 500;
  height: 6rem;
  padding: 1rem 2.6rem;
  text-align: center;
  text-shadow: rgba(0, 0, 0, 0.25) 0 3px 8px;
  transition: all .5s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  margin-top: 2rem;
  margin-bottom: 5rem;
  margin-left:33rem;
  
}

.search1:hover {
  box-shadow: rgba(80, 63, 205, 0.5) 0 1px 30px;
  transition-duration: .1s;
}
        </style>
    </head>
    <body>
        <div class="container">
        <jsp:include page="Header.jsp"/>
        <jsp:include page="Menubar.jsp"/>
        <div class="Main_area">
            <h1 style="font-size: 4rem; text-align:center; color: black;">
                Explore your dream Job through India's No.1 Job portal
            </h1>
            <input class="input" type="text" placeholder="Search by Technology">
            <input class="input" type="text" placeholder="Search by Location">
            <button class="search1">Search</button>
        </div>
        </div>
        <div class="companies">
            
        </div>
        <jsp:include page="Footer.jsp"/>
        
        
    </body>
</html>
