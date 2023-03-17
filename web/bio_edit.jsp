<%-- 
    Document   : bio_edit
    Created on : 29-Jul-2022, 11:49:19 PM
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
                background-color: white;
                float: left;
                
            }
            .personal_div
            {
                height: 100%;
                width: 30%;
                background-color: #1c4966;
                float: right;
                
            }
            
            .photo
            {
            
                background-image: url("./images/profile_default.jpg");
                background-repeat: no-repeat;
                background-size:cover;
                background-color: white;
                height: 35%;
                width: 60%;
                border: 4px solid white;
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
                border-bottom: 1px solid #1c4966;
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
        
        <script>
            function display(a,b,c)
            {
                if(document.getElementById(a).value === "")
                {
                    document.getElementById(b).style.display ="none";
                    document.getElementById(c).style.display ="none";
                }
                
                    if(document.getElementById(a).value !== "")
                    {
                    document.getElementById(b).innerHTML = document.getElementById(a).value;
                    document.getElementById(b).style.display ="inline-block";
                    document.getElementById(c).style.display ="inline-block";
                }
                
            }
            
            function show()
            {
                document.getElementById("black").style.display = "block";
                document.getElementById("edit1").style.display = "block";
            }
            function hide()
            {
                document.getElementById("black").style.display = "none";
                document.getElementById("edit1").style.display = "none";
            }
            
            function addDob(dob)
            {
                localStorage.setItem('dob',document.getElementById(dob).value);
            }
            function addLocation(location)
            {
                localStorage.setItem('location',document.getElementById(location).value);
            }
            function addPhone(phone)
            {
                localStorage.setItem('phone',document.getElementById(phone).value);
            }
                    
        </script>
    </head>
    <body>
        
        <div class="green"></div>
        <div class="white"></div>
        <div class="container">
            <div class="form_div">
                <h1 style="margin: 2rem 0 2rem 2rem; color: #1c4966;">Fill Up Your Bio..</h1>
                <form name="bio_form" method="Post" action="bio_edit">
                    <h3>Nationality *</h3>
                    <input type="text" name="nationality" placeholder="eg. India" >
                    <h3>Phone *</h3>
                    <input type="text" id="phone" name="phone" placeholder="eg. 935542xxxx" onkeyup="display('phone','phone_span','phone_icon');addPhone('phone')"><br>
                    <h3>Date of Birth(DD/MM/YYYY) *</h3>
                    <input type="text" id="dob" name = "dob"placeholder="eg. 24/12/2001" onkeyup="addDob('dob')">
                    <h3>Location *</h3>
                    <input type="text" id="location" name="location" id="location" placeholder="eg. #21,Shastri Colony,Yamunanagar,Haryana" onkeyup="addLocation('location')">
                    <h3>Martial Status *</h3>
                    <input type="text" name="martial_status" id ="status"placeholder="Single/Married" onkeyup="display('status','status_span','status_icon')">
                    <input class="submit" type="submit" value="Next" >
                </form>
                
            </div>
            
            
            <div class="personal_div">
                <jsp:scriptlet>
                    String name = (String)session.getAttribute("name");
                    String email = (String)session.getAttribute("email");
                    String pic = (String)session.getAttribute("profilepic");
                </jsp:scriptlet>
                
                <div class="photo" style="background-image:url('profilepics/<jsp:expression>pic</jsp:expression>')"></div>
                <a  onclick="show()" style="cursor:pointer" href="photo_edit_page.jsp" ><i class="fa fa-edit edit" ></i> </a>
                <h1 class="name"><jsp:expression>name</jsp:expression></h1>
                <i class="fa fa-envelope icon" aria-hidden="true" style="color:white;"></i><span style="color: white; margin: 0 40px 0 10px;opacity: 0.7"><jsp:expression>email</jsp:expression></span>
                <i class="fa fa-phone icon" id="phone_icon" aria-hidden="true" style="color:white; display: none;width: max-content"></i><span id="phone_span" name="phone" style="color: white;display: none; margin: 0 100px 0 10px;opacity: 0.7;width: max-content"></span>
<!--                <i class="fa fa-map-marker icon" id="location_icon" aria-hidden="true" style="color:white;display: none;"></i><span id="location_span" name="location"  style="color: white; display: none;margin: 0 40px 0 10px;opacity: 0.7;max-width: 50px;"></span>-->
                <i class="fa fa-heart icon" id="status_icon" aria-hidden="true" style="color:white; display: none;width: max-content"></i><span name="status" id="status_span" style="color: white; display: none; margin: 0 10px 0 10px;opacity: 0.7"></span>
            </div>
        </div>
                <div id="black" onclick="hide()">
            
        </div>
                <div id="edit1">
                <div class="photo a"></div>
                    <h1 style="float: left;width: max-content;font-size: 2rem;padding: 0;">Edit Profile Photo</h1>
                    <form class="edit_form" name="photo"action="photo_edit" method="Post" enctype="multiparts/form-data">
                    <input id="file_input" type="file">
                    <input id="edit_button" type="submit" value="Edit">
                </form>
            </div>
    </body>
</html>
