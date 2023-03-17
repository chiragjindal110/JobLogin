<%-- 
    Document   : Upload_resume
    Created on : 31-Aug-2022, 10:52:03 PM
    Author     : Chirag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
            #edit1
            {
                    height: 40%;
                    width: 35%;
                    position: absolute;
                    top: 23%;
                    left: 32%;
                    background-color: white;
                    border-radius: 5px;
                    
                    
            }
            .photo
            {
            
                background-image: url("./images/profile_default.jpg");
                background-repeat: no-repeat;
                background-size:contain;
                background-color: white;
                height: 35%;
                width: 60%;
                border: 4px solid white;
                margin: auto;
                margin-top: 3rem;
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
            <div id="edit1">
                <div class="photo "></div>
                    <h1 style="float: left;width: max-content;font-size: 2rem;padding: 0;">Upload Resume</h1>
                    <form  action="upload_resume" method="POST" enctype="multipart/form-data">
                    <input  type="file" name="uploadresume">
                    <input type="submit" value="Edit">
                </form>
            </div>
    </body>
</html>