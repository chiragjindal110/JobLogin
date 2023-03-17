

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.connection.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script>
            console.log(localStorage.getItem('dob'));
            console.log(localStorage.getItem('phone'));
            console.log(localStorage.getItem('location'));
            
        </script>
        <style>
            body{
                margin: 0;
            }
            .green
            {
                background-color: #4d0000;
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
/*                background-image: url('./images/education.jpg');*/
                float: right;
                background-repeat: no-repeat;
                background-size:cover;
                background-color: #997950;
                background-position: center;
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
            
           
            
        </style>
        
                    
        
    </head>
    <body>
        
        <div class="green"></div>
        <div class="white"></div>
        <div class="container">
            <div class="form_div">
                <h1 style="margin: 2rem 0 2rem 2rem; color: #1c4966;">Education Details!!</h1>
                <form name="education_form" method="Post" action="education_edit">
                    <h3>School *</h3>
                    <input type="text" name="school" placeholder="eg. Delhi Public School" >
                    <h3>Institute *</h3>
                    <input type="text" id="phone" name="institute" placeholder="eg. JMIT" ><br>
                    <h3>Graduation degree *</h3>
                    <input type="text" name = "degree"placeholder="eg. B.Tech">
                    <h3>Graduation Period *</h3>
                    <input type="text" name="year" id="location" placeholder="eg. 2019-23" >
                    <h3>CGPA/Percentage in Graduation *</h3>
                    <input type="text" name="grade" id ="status"placeholder="eg. 8.65 / 86.5%" >
                    <h3>Description *</h3>
                    <input type="text" name="description" id ="status"placeholder="Anything about your education journey" >
                    <input class="submit" type="submit" value="Next" >
                </form>
                
            </div>
            
            
            <div class="personal_div">
                <h1 style="padding-left: 10px;">Bio details..
                    <jsp:scriptlet>
                        String phone="",dob="",location="";
                        Connection con = DbConnection.getConnection();
                        PreparedStatement p = con.prepareStatement("Select phone,dob,location from user_bio where email=?");
                        String email = (String)session.getAttribute("email");
                        p.setString(1, email);
                        ResultSet r = p.executeQuery();
                        while(r.next())
                        {
                         phone = r.getString("phone");
                         dob = r.getString("dob");
                         location = r.getString("location");
                    }
                    </jsp:scriptlet>
                    <h2 style="padding-left: 10px;">DOB:  <jsp:expression>dob</jsp:expression>   </h2><br>
                    <h2 style="padding-left: 10px;">Phone:  <jsp:expression>phone</jsp:expression>   </h2><br>
                    <h2 style="padding-left: 10px;">Location:  <jsp:expression>location</jsp:expression>   </h2>
                    
                
                
                </h1>
                
            </div>
                
            
        </div>
                
    </body>
</html>
