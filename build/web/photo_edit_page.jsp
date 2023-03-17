<%-- 
    Document   : photo_edit_page
    Created on : 29-Aug-2022, 9:11:24 PM
    Author     : Chirag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                margin: 0;
            }
            .green
            {
                background-color: #088F8F;
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
                height: 85vh;
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
                background-color: #F3F2F2;
                float: right;
                
            }
            .personal_div
            {
                background-image: url('./images/happy.png');
                background-size: cover;
                background-repeat: no-repeat;
                height: 100%;
                width: 30%;
                background-color: #1c4966;
                float: left;
                
            }
            
            .photo
            {
            
                background-image: url("./images/profile_default.jpg");
                background-repeat: no-repeat;
                background-size:cover;
                background-color: white;
                height: 40%;
                width: 30%;
                border: 10px solid #1c4966;
                margin: auto;
                margin-top: 3rem;
            }
            .edit
            {
                font-size: 50px;
                position: absolute;
                top: 270px;
                color: grey;
                left: 920px;
                
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
                
                font-size: 20px;
                width: 25rem;
            }
            input:focus
            {
                outline: none;
                border-bottom: 1.5px solid #1c4966;
            }
            
            .submit
            {
                margin: 15px 0 0 18% ;
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
            .edit_form
            {
                    margin: 0;
            }
            #file_input
            {
                    margin: 20px;
                    width: max-content;
                    border: 0;
            }
            #edit_button
            {
                    margin: 30px 0 0 12%;
                    border: 2px solid black;
                    border-radius: 5px;
                    background-color: white;
                    font-weight: bold;
            }
            #edit_button:hover
            {
                background-color: black;
                color: white;
                transition-duration: 0.5s;
            }
            
        </style>
        
    </head>
<!--    <body>
            <div id="edit1">
                <div class="blue">
                    
                </div>
                
                <div class="photo a" style="background-image:url('profilepics/')""></div>
                    <h1 style="float: left;width: max-content;font-size: 2rem;padding: 0;">Edit Profile Photo</h1>
                    <form  action="photo_edit" method="POST" enctype="multipart/form-data">
                    <input  type="file" name="profilepic">
                    <input  type="submit" value="Edit">
                </form>
            </div>
    </body>-->
<body>
        
        <div class="green"></div>
        <div class="white"></div>
        <div class="container">
            <div class="form_div">
                 <h1 style="margin: 2rem 0 2rem 2rem; color: #1c4966;">Edit profile Photo..</h1>
                <jsp:scriptlet>
                    String pic = (String)session.getAttribute("profilepic");
                </jsp:scriptlet>
                <div class="photo" style="background-image:url('profilepics/<jsp:expression>pic</jsp:expression>')"></div>
               
                <form  action="photo_edit" method="POST" enctype="multipart/form-data">
                    <input  type="file" name="profilepic" style="margin-left:17%">
                    <input  type="submit" value="Edit" class="submit">
                </form>
                
            </div>
            
            
            <div class="personal_div">
                
                
                
            </div>
        </div>
                
    </body>
</html>
