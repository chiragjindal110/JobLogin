<%-- 
    Document   : Profile_start
    Created on : 29-Jul-2022, 11:05:48 PM
    Author     : Chirag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
          body
          {
              background-image: url("./images/profile_start_image.webp");
               background-repeat: no-repeat;
    background-size: cover;
    background-color: white;
          }
          .container
          {
              height: 60vh;
              width: 85vh;
              border: 0.3rem solid white;
              border-radius: 0.1rem;
              margin: auto;
              margin-top: 10%;
              text-align: center;
              
          }
          .text
          {
              color: white;
              font-size: 4rem;
              margin-top: 4rem;
          }
          .next
          {
              margin-top: 3rem;
              border: 0.1rem solid white;
              border-radius: 0.4rem;
              background-color: transparent;
              color: white;
              padding: 0.8rem 4rem;
              font-size: 1.5rem;
              font-weight: bold;
          }
          .next:hover
          {
               background-color: white;
              color: black;
              padding: 1rem 6rem;
              transition-delay: 0.1s;
              transition-duration: 0.5s;
          
          
        </style>
    </head>
    <body>
        <div class="container">
            <h1 class="text">Let's Create Your Profile!!</h1>
            <a href='bio_edit.jsp'>
        <button class="next" on>
            Next
        </button>
    </a>
        </div>
    </body>
</html>
