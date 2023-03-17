<%-- 
    Document   : Resume_builder_details
    Created on : 31-Aug-2022, 10:36:26 PM
    Author     : Chirag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            body{
                margin: 0;
            }
            .green
            {
                background-color: #1c4966;
                height: 50vh;
                width: 100%;
                z-index: -1;
            }
            .white
            {
                background-color: white;
                height: 70vh;
                width: 100%;
                z-index: -1;
            }
            .container
            {
                height: 90vh;
                width: 72vw;
                position:absolute;
                top: 14%;
                left:14%;
                background-color: transparent;
                box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
                
            }
            .form_div
            {
                height: 100%;
                width: 70%;
                background-color: white;
                float: left;
                
            }
            .personal_div
            {
                height: 100%;
                width: 30%;
                background-image: url('./images/experience.jpg');
                float: right;
                background-repeat: no-repeat;
                background-size:cover;
                background-color: white;
                background-position: center;
            }
            
            
            
            .name
            {
                    color: white;
                    margin: 30px 0 0 70px;
            }
            .icon
            {
                    color: white;
                    font-size: 20px;
                    margin: 35px 0 0 65px;
            }
            h3
            {
                width:max-content;
                margin: 0;
                padding: 10px 0 10px 0;
                
            }
            form
            {
                margin: 20px 0px 0 25%;
            }
            input
            {
                margin-bottom: 10px;
                padding: 10px 0;
                border: 0;
                border-bottom: 1px solid #1c4966;
                width: 25rem;
            }
            input:focus
            {
                outline: none;
                border-bottom: 2.5px solid #1c4966;
            }
            
            .submit
            {
                margin: 30px 0 0 18% ;
                padding: 10px;
                border: 2px solid #1c4966;
                border-radius: 5px;
                width: 12rem;
                background-color: transparent;
                color:#1c4966;
                font-weight: bold;
            }
            
            .submit:hover
            {
                background-color: #1c4966;
                color: white; 
            }
            #black
            {
                width: 100vw;
                height: 150vh;
                opacity: 0.7;
                background-color: black;
                position: fixed;
                top: 0;
                display: none;
            }
            #edit1
            {
                    height: 40%;
                    width: 35%;
                    position: absolute;
                    top: 23%;
                    left: 32%;
                    background-color: white;
                    border-radius: 5px;
                    display: none;
                    
            }
            .a
            {
                    margin: 1rem;
                    height: 40%;
                    width: 27%;
                    float: left;
                    
            }
            
           
            
        </style>
        
                    
        
    </head>
    <body>
        
        <div class="green"></div>
        <div class="white"></div>
        <div class="container">
            <div class="form_div">
                <h1 style="margin: 2rem 0 2rem 2rem; color: #1c4966;">Some Additional Details!!</h1>
                <form name="education_form" method="Post" action="">
                    <h3>Carrier Objective *</h3>
                    <input type="text" name="company" placeholder="eg. I want to become Millionare" >
                    <h3>Hobbies *</h3>
                    <input type="text" id="location" name="location" placeholder="eg. Playing cricket" ><br>
                    <h3>Language Proficiency *</h3>
                    <input type="text" name = "years"placeholder="eg. C,C++">
                    <h3>Non-Technical Skills *</h3>
                    <input type="text" name="job_title" id="location" placeholder="eg. Leadership,management" >
                    <h3>Internships  *</h3>
                    <input type="text" name="description" id ="status"placeholder="eg. Impinge Solutions,mohali" >
                    <input class="submit" type="submit" value="Build Resume" >
                </form>
                
            </div>
            
            
            <div class="personal_div"></div>
                
            
        </div>
                
    </body>
</html>
