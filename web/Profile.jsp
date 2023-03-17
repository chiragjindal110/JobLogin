<%-- 
    Document   : Profile
    Created on : 27-Jul-2022, 3:44:09 PM
    Author     : Chirag
--%>

<%@page import="java.io.File"%>
<%@page import="com.connection.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body
        {
            margin: 0px;
            background-color: #F8F8FF;
        }
        
        
       header
       {
           height: 100%;
           position: absolute;
           top: 0;
           left: 0;
           width: 100%;
           height: auto;
           
           background-color: white;
       }
        #company_name_div
        {
            margin: 1rem 0 1rem 3rem;
            float: left;
        }
        #company_name
        {
          
        }
        
        #logout_div
        {
            margin: 0.5rem 2rem 1rem 85%;
            padding-top: 1rem;
            position: relative;
        }
        
        #profile
        {
            
            background-image: url("./images/profile_image.png");
            height: 50vh;
            background-repeat: no-repeat;
            background-size: cover;
    background-color: white;
    position: relative;
    width: 100%;
    top: 50px;
        }
        
        #profile_photo
        {
            background-image: url("./images/profile.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
    background-color: white;
            width: 14rem;
            height: 20rem;
           position: absolute;
           left: 10%;
           top: 20%;
            border: 0.6rem solid white;
            
            box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
        }
        .person_name
        {
            width:max-content;
            margin: 6rem 0 0 27rem;
            color: white;
            font-size: 4rem;
            float: left;
        }
        
        .person_specialization
        {
            margin: 8rem 0 0 1rem;
             float: left; 
              color: white;
        }
        .bio_div
        {
            position: absolute;
            top: 52%;
            left: 65%;
            right: 5%;
            padding: 40px;
            background-color: white;
            border-radius: 5px;
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        }
        td{
           padding: 10px;
        }
        
        #Aboutme_div
        {
            position: absolute;
            top: 70%;
            left: 5%;
            width: 45%;
            padding: 20px;
            border-radius: 10px;
            border: 3px solid black;
        }
        
        .button-36 {
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
  
  padding: 1rem 1.6rem;
  text-align: center;
  text-shadow: rgba(0, 0, 0, 0.25) 0 3px 8px;
  transition: all .5s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  margin-top: 2rem;
  
}

.button-36:hover {
  box-shadow: rgba(80, 63, 205, 0.5) 0 1px 30px;
  transition-duration: .1s;
}
.emp_buttons
{
    padding: 10px;
    border-radius: 20px;
    background-color: transparent;
    border: 3px solid white;
    color: #4deeea;
    font-weight: bolder;
    position: absolute;
    top: 65%;
    left: 28%;
}
.hire
{
    left: 36%;
}
.emp_buttons:hover
{
    background-color: white;
    color: black;
    transition-duration: 0.7s;
}
.exp_div
{
    position: absolute;
    top: 115%;
    left: 40%;
    width: 50%;
    border-radius: 0;
    box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
}

.education_div
{
    top: 167%;
}

.projects
{    
    position: absolute;
    top: 120%;
    left: 10%;
        
}

.icons
{
    
}
    </style>
    <body>
        <header>
            <div id="company_name_div"><span id="company_name">JobLogin</span></div>
            <a href="Resume_builder_details.jsp"><button>Resume Builder</button></a>
            <a href="Upload_resume.jsp"><button>Upload Resume</button></a>
            <div id="logout_div"><a href="profile.jsp">Logout</a></div>
        </header>
        <jsp:declaration>Connection con=null;</jsp:declaration>
        <div id="profile">
            
            <jsp:scriptlet>
                String name = (String)session.getAttribute("name");
                String email = (String)session.getAttribute("email");
            </jsp:scriptlet>
            
            <h1 class="person_name"><jsp:expression>name</jsp:expression></h1>
            <h2 class="person_specialization">(Java Developer)</h2>
            <button class="emp_buttons">Download CV</button>
            <button class="emp_buttons hire">Hire Me</button>
        </div>
        
        <div id="profile_photo">
            <jsp:scriptlet>
                            String phone="", dob="", location="", nationality="", gender="", martial_status="",company="",years="",job_title="",description="",exp_location="",school="",degree="",Graduation_institute="",grade="",graduation_years="",education_description="";
                            
                            try
                            {
                                con= com.connection.DbConnection.getConnection();
            
                                PreparedStatement ps=con.prepareStatement("select * from user_bio where email=?");
                                ps.setString(1, email);
                                ResultSet rs=ps.executeQuery();
                                while(rs.next())
                                {
                                    phone= rs.getString("phone");
                                    dob=rs.getString("dob");
                                    location=rs.getString("location");
                                    nationality=rs.getString("nationality");
                                    martial_status=rs.getString("martial_status");
                                    gender=rs.getString("gender");
                                }
                                ps= con.prepareStatement("Select * from experience_details where email=?");
                                ps.setString(1,email);
                                rs = ps.executeQuery();
                                
                                
                                while(rs.next())
                                {
                                    company=rs.getString("company");
                                    exp_location=rs.getString("location");
                                    years=rs.getString("years");
                                    job_title=rs.getString("job_title");
                                    description=rs.getString("description");
                                }
                                ps= con.prepareStatement("Select * from education_details where email=?");
                                ps.setString(1,email);
                                rs = ps.executeQuery();
                                
                                
                                while(rs.next())
                                {
                                    school=rs.getString("school");
                                    degree=rs.getString("degree");
                                    Graduation_institute=rs.getString("Graduation_institute");
                                    graduation_years=rs.getString("year");
                                    grade=rs.getString("grade");
                                    education_description=rs.getString("description");
                                }
             
                                 
            }
            
            catch(Exception e)
            {
              e.printStackTrace();
            }
                        </jsp:scriptlet>
        </div>
            <div class="bio_div">
                <h1 style="margin-top:0">My Bio..</h1>
                <table >
                    <tr>
                        <td>EMAIL</td>
                        <td>: <jsp:expression>email</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>PHONE</td>
                        <td>: <jsp:expression>phone</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>DOB</td>
                        <td>: <jsp:expression>dob</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>LOCATION</td>
                        <td>: <jsp:expression>location</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>NATIONALITY</td>
                        <td>: <jsp:expression>nationality</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>MARTIAL_STATUS</td>
                        <td>: <jsp:expression>martial_status</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>GENDER</td>
                        <td>: <jsp:expression>gender</jsp:expression></td>
                    </tr>
                </table>
            </div>
            <div id="Aboutme_div">
                <h1 style="margin-top:0">About Me</h1>
                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                         magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                         consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                         Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                         Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                         magna aliqua.</div>
                <button class="button-36" style="margin-top:10px;">edit</button>
            </div>
                    
                    <div class="projects">
                        <img src="./images/Projects_undertaken.png" width="200px" height="200px" alt="projects" style="padding-left:15px;"/>
                        <h2>7 Projects Undertaken</h2>
                    </div>
                    
            <div class="bio_div exp_div">
                <h1 style="margin-top:0">My Experience..</h1>
                <table >
                    <tr>
                        <td>COMPANY</td>
                        <td>: <jsp:expression>company</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>LOCATION</td>
                        <td>: <jsp:expression>exp_location</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>YEARS OF EXPERIENCE</td>
                        <td>: <jsp:expression>years</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>JOB PROFILE</td>
                        <td>: <jsp:expression>job_title</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>ABOUT MY EXPERIENCE</td>
                        <td>: <jsp:expression>description</jsp:expression></td>
                    </tr>
                    
                </table>
            </div>
            <div class="bio_div exp_div education_div">
                <h1 style="margin-top:0">Education Details</h1>
                <table >
                    <tr>
                        <td>SCHOOL</td>
                        <td>: <jsp:expression>school</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>DEGREE</td>
                        <td>: <jsp:expression>degree</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>GRADUATION INSTITUTE</td>
                        <td>: <jsp:expression>Graduation_institute</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>GRADUATION PERIOD</td>
                        <td>: <jsp:expression>graduation_years</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>GRADE</td>
                        <td>: <jsp:expression>grade</jsp:expression></td>
                    </tr>
                    <tr>
                        <td>ABOUT MY EDUCATION</td>
                        <td>: <jsp:expression>education_description</jsp:expression></td>
                    </tr>
                    
                </table>
                    <div>
                        
                    </div>
                    <div>
                        <i class="fa-brands fa-whatsapp"></i>
                        <i class="fa-brands fa-linkedin"></i>
                        <i class="fa-brands fa-twitter"></i>
                        <i class="fa-brands fa-facebook"></i>
                    </div>
            </div>
    </body>
</html>
