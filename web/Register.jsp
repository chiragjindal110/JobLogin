<%-- 
    Document   : Register
    Created on : 23-Jul-2022, 10:32:40 pm
    Author     : Chirag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-image: url('./images/register.webp'); background-repeat: no-repeat;
    background-size: cover;
    background-color: white;">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css">
        <style>
            .signup
{
    background-color: #F5F5F5;
    height: 67.5rem;
    width: 50%;
    float: left;
    margin-top: 6rem;
    margin-left: 0.5rem;
    box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
    border-radius: 1rem;
    background-image: url("./images/register_image.jpg");
     background-repeat: no-repeat;
    background-size: cover;
    background-color: white;
}
.input-2:focus
{
    outline: none;
}
        </style>
        <script>
            
             
            function error_vanish(a)
            {
                document.getElementById(a).innerHTML = "";
            }
            
            
            function validation()
            {
             
                var name_pattern=/^[a-zA-Z ]{3,30}$/;
                var email_pattern = /^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._\+-])*([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/;
                var password_pattern = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
                var flag = true;
                if(!document.regform.name2.value.match(name_pattern))
                {
                    document.getElementById('name_span').innerHTML="Name is not properly formated";
                    flag=false;
                }
                if(document.regform.name2.value === "")
                {
                    document.getElementById('name_span').innerHTML = "Name can not be empty";
                    flag=false;
                }
                if(!document.regform.email1.value.match(email_pattern))
                {
                    document.getElementById('email_span').innerHTML="email is not properly formated";
                    flag=false;
                }
                if(document.regform.email1.value === "")
                {
                    document.getElementById('email_span').innerHTML = "Email can not be empty";
                    flag=false;
                }
                if(!document.regform.pass1.value.match(password_pattern))
                {
                    document.getElementById('pass_span').innerHTML="Password is not properly formated";
                    flag=false;
                }
                if(document.regform.pass1.value === "")
                {
                    document.getElementById('pass_span').innerHTML = "Password can not be empty";
                    flag=false;
                }
                if(document.regform.pass2.value !== document.regform.pass1.value)
                {
                    document.getElementById('pass2_span').innerHTML="Password didn't matched";
                    flag=false;
                }
                if(document.regform.pass2.value === "")
                {
                    document.getElementById('pass2_span').innerHTML = "Please Confirm Password";
                    flag=false;
                }
                if(document.regform.gender1.value === "")
                {
                    document.getElementById('gender_span').innerHTML = "Select Gender";
                    flag=false;
                }
                return flag;   
            }
           
        </script>
    </head>
    <body>
        <div style="height: 100%; width: 100%; margin: 0; padding: 0; background-color: #F5F5F5;">
        <div class="signin">
            <div style="padding: 48% 10%; text-align: center">
            <h1 style="font-size: 5rem;">Welcome Back!!</h1>
            <h3 style="font-size: 2rem; color: grey; margin-bottom: 4rem;">To keep connected with us, Please login with your personal info</h3>
            <a class=" button-36" href="Login.jsp" style="text-decoration: none;">Sign In</a>
            </div>
        </div>
        
        <div class="signup">
            <h1 style="text-align: center;padding-top: 2%;font-size: 3rem;">Create Account</h1>
            <div class="form_div">
                <form method="POST" name="regform" onsubmit="return validation()" action="reg">
                    
                    <input class="input-2" id="name" name="name2" type="text" placeholder="Enter name" onkeyup="error_vanish('name_span')">
                <span id="name_span" style="color:red; font-size: 1.5rem;"></span><br>
                <input class="input-2"type="email" placeholder="Enter Email" name="email1" onkeyup="error_vanish('email_span')">
                <span id="email_span" style="color:red; font-size: 1.5rem;"></span><br>
                <input class="input-2" type="password" placeholder="Enter Password" name="pass1" onkeyup="error_vanish('pass_span')">
                <span id="pass_span" style="color:red; font-size: 1.5rem;"></span><br>
                <input class="input-2" type="password" placeholder="Confirm Password" name="pass2" onkeyup="error_vanish('pass2_span')">
                <span id="pass2_span" style="color:red; font-size: 1.5rem;"></span><br>
                <div class="input-3"><b style="color: black">Select gender:</b><input class="input-3" type="radio" name="gender1" value="Male" id="gender" onfocus="error_vanish('gender_span')">Male<input class="input-3"  id="gender2"  type="radio" name="gender1" value="Female" onfocus="error_vanish('gender_span')">Female</div>
                <span id="gender_span" style="color:red; font-size: 1.5rem;"></span><br>
                <button class="button-36" type='submit'>Sign Up</button>
            </form>
            </div>
        </div>
            
            </div>
        
    </body>
</html>
