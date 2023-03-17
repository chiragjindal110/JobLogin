<%-- 
    Document   : AboutUs
    Created on : 25-Jul-2022, 12:27:19 am
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
          html
          {
              background-image: url("./images/aboutus-image.png");
              
    background-size: contain;
    background-color: white;
          }
            
            
            
        .heading
        {
            text-align: center;
        }
        
        .blogs_div
        {
            
            width: 60%;
            float: left;
            margin-left: 3rem;
            background-color: transparent;
        }
        
        .write_blog
        {
            box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
            width: 30%;
            float:left;
            margin-left: 2rem;
            height: 83vh;
            position: fixed;
            right: 3rem;
            border-radius: 1rem;
            background-color: white;
            margin-top: 1rem;
        }
        
        .photo
        {
            height: 25%;
            width: 30%;
            border: 0.1rem solid black;
            float: left;
            margin: 2rem 0 0 2rem;
        }
        .name
        {
            float: left;
            margin: 1rem 6rem 0rem 2rem;
            
            
        }
        
        .writing_area
        {
            float:left;
            margin: 2rem 2rem ;
            
        }
        .textarea
        {
          resize: none;  
          border-radius: 0.5rem;
          padding: 0.5rem;
        }
        
        .textarea:focus
        {
            border-radius: 0;
            
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
  margin-bottom: 5rem;
}

.button-36:hover {
  box-shadow: rgba(80, 63, 205, 0.5) 0 1px 30px;
  transition-duration: .1s;
}

.blog_photo
{
   float: left;
   height: 5rem;
   width: 3.5rem;
   border: 0.1rem solid black;
   margin-top: 0.8rem;
   margin-left: 0.8rem;
   margin-right: 0.3rem;
}
.blog_table
{
    background-color: transparent;
     border-collapse: separate;
        border-spacing: 0px 15px;
}

.table_row
{
    
    border-radius: 0.2rem;
    
    padding: 0.5rem;
    box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;
     
}
.table_row:nth-child(even) {  
  background-color: #e7eff6;  
  border-radius: 0.2rem;
  border-radius: 0.5rem;
} 
.table_row:nth-child(odd) {  
  background-color: white;  
  border-radius: 0.2rem;
} 


.table_data
{
    padding: 0.5rem;
    border-radius: 0.5rem;
}



.blog_name
{
    float: left;
    padding-top: 0.2rem;
}

.blog_content
{
    float: left;
    margin-top: 0.8rem;
   margin-left: 0.8rem;
}

.like_div
{
    float: right;
    margin-right: 1rem;
    margin-top: 1rem;
}
.fa-thumbs-up
{
    background-color: transparent;
    border: none;
}

.fa-thumbs-up:focus
{
    color:blue;
    outline: none;
}
.fa-thumbs-up:active
{
    color:blue;
}
        </style>
        
    </head>
    
    <body>
        <div class="heading">
            <a style="text-decoration: none; font-size: 20px; color: black;"href="index.jsp">JobLogin</a>
            <h1>Express Yourself To The Millions!!</h1>
        </div>
        <div class="blogs_div">
            <table class="blog_table">
            <tr class="table_row">
                <td class="table_data">
                    <div class="blog_photo">
                        <h4></h4>
                    </div>
                    <div class="blog_name">
                        <h3>Chirag Jindal</h3>
                    </div>
                    <div class="blog_content">
                         Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                         magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                         consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                         Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                         Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                         magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                         consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                         Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                    </div>
                    <div class="like_div">
                        <button class="fa fa-thumbs-up"></button>120
                    </div>
                </td>
            </tr>
            <tr class="table_row">
                <td class="table_data">
                    <div class="blog_photo">
                        <h4></h4>
                    </div>
                    <div class="blog_name">
                        <h3> Anshul Saini</h3>
                    </div>
                    <div class="blog_content">
                         Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                         magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                         consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                         Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                         Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                         magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                         consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                         Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                    </div>
                    <div class="like_div">
                        <button class="fa fa-thumbs-up"></button>120
                    </div>
                </td>
            </tr>
            <tr class="table_row">
                <td class="table_data">
                    <div class="blog_photo">
                        <h4></h4>
                    </div>
                    <div class="blog_name">
                        <h3>Anshul Jangra</h3>
                    </div>
                    <div class="blog_content">
                         I have written my blog to tell everyone that I am greatest version of myself and i wan't to achieve great heights in my life in Technical field. If you 
                        liked my blog do like it
                    </div>
                    <div class="like_div">
                        <button class="fa fa-thumbs-up"></button>120
                    </div>
                </td>
            </tr>
            <tr class="table_row">
                <td class="table_data">
                    <div class="blog_photo">
                        <h4></h4>
                    </div>
                    <div class="blog_name">
                        <h3>Bhumika Kalyan</h3>
                    </div>
                    <div class="blog_content">
                         I have written my blog to tell everyone that I am greatest version of myself and i wan't to achieve great heights in my life in Technical field. If you 
                        liked my blog do like it
                    </div>
                    <div class="like_div">
                        <button class="fa fa-thumbs-up"></button>120
                    </div>
                </td>
            </tr>
            <tr class="table_row">
                <td class="table_data">
                    <div class="blog_photo">
                        <h4></h4>
                    </div>
                    <div class="blog_name">
                        <h3>- Amit</h1>
                    </div>
                    <div class="blog_content">
                         I have written my blog to tell everyone that I am greatest version of myself and i wan't to achieve great heights in my life in Technical field. If you 
                        liked my blog do like it
                    </div>
                    <div class="like_div">
                        <button class="fa fa-thumbs-up"></button>120
                    </div>
                </td>
            </tr>
            <tr class="table_row">
                <td class="table_data">
                    <div class="blog_photo">
                        <h4></h4>
                    </div>
                    <div class="blog_name">
                        <h3>- Chirag Jindal</h1>
                    </div>
                    <div class="blog_content">
                         I have written my blog to tell everyone that I am greatest version of myself and i wan't to achieve great heights in my life in Technical field. If you 
                        liked my blog do like it
                    </div>
                    <div class="like_div">
                        <button class="fa fa-thumbs-up"></button>120
                    </div>
                </td>
            </tr>
            <tr class="table_row">
                <td class="table_data">
                    <div class="blog_photo">
                        <h4></h4>
                    </div>
                    <div class="blog_name">
                        <h3>- Chirag Jindal</h1>
                    </div>
                    <div class="blog_content">
                         I have written my blog to tell everyone that I am greatest version of myself and i wan't to achieve great heights in my life in Technical field. If you 
                        liked my blog do like it
                    </div>
                    <div class="like_div">
                        <button class="fa fa-thumbs-up"></button>120
                    </div>
                </td>
            </tr>
            <tr class="table_row">
                <td class="table_data">
                    <div class="blog_photo">
                        <h4></h4>
                    </div>
                    <div class="blog_name">
                        <h3>- Chirag Jindal</h1>
                    </div>
                    <div class="blog_content">
                         I have written my blog to tell everyone that I am greatest version of myself and i wan't to achieve great heights in my life in Technical field. If you 
                        liked my blog do like it
                    </div>
                    <div class="like_div">
                        <button class="fa fa-thumbs-up"></button>120
                    </div>
                </td>
            </tr>
            <tr class="table_row">
                <td class="table_data">
                    <div class="blog_photo">
                        <h4></h4>
                    </div>
                    <div class="blog_name">
                        <h3>- Chirag Jindal</h1>
                    </div>
                    <div class="blog_content">
                         I have written my blog to tell everyone that I am greatest version of myself and i wan't to achieve great heights in my life in Technical field. If you 
                        liked my blog do like it
                    </div>
                </td>
            </tr>
            <tr class="table_row">
                <td class="table_data">
                    <div class="blog_photo">
                        <h4></h4>
                    </div>
                    <div class="blog_name">
                        <h3>- Chirag Jindal</h1>
                    </div>
                    <div class="blog_content">
                         I have written my blog to tell everyone that I am greatest version of myself and i wan't to achieve great heights in my life in Technical field. If you 
                        liked my blog do like it
                    </div>
                </td>
            </tr>
            <tr class="table_row">
                <td class="table_data">
                    <div class="blog_photo">
                        <h4></h4>
                    </div>
                    <div class="blog_name">
                        <h3>- Chirag Jindal</h1>
                    </div>
                    <div class="blog_content">
                         I have written my blog to tell everyone that I am greatest version of myself and i wan't to achieve great heights in my life in Technical field. If you 
                        liked my blog do like it
                    </div>
                </td>
            </tr>
            
            </table>
        </div>
        
        <div class="write_blog">
            <div class="photo"></div>
            <div class="name"><h1 style="font-weight:bold; margin-bottom: 0">chirag</h1><br>- Java Developer</div>
            <div class="writing_area">
                <form action="Blogs.jsp">
                    <textarea class="textarea" type="textarea" rows="21" cols="50"  placeholder="Start Writing Here!!"></textarea>
                    <input class="button-36" style="text-align:center; margin-top: 1rem; margin-left: 0.5rem;" type="submit" >
                </form>
            </div>  
        </div>
        
    </body>
</html>
