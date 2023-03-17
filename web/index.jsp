<%-- 
    Document   : home
    Created on : 27-Dec-2022, 8:37:08 PM
    Author     : Chirag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
  <head>
      <title>JobLogin</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Lato&display=swap');
body{
  margin: 0;
  padding: 0;
  font-family: 'Lato', sans-serif;
  overflow: overlay;
}
button{
    cursor: pointer;
}
.top-div
{
  background-image:url('images/bg2.webp');
  background-repeat:no-repeat;
  background-size: cover;
  display: flex;
  flex-direction: column;
  height: 100vh;
  width: 100vw;
}


.header
{
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.heading
{
  padding: 20px 20px 20px 30px;
  margin: 0;
  font-size:50px;
  color: white;
}



.buttons-div
{
  display: flex;
    justify-content: space-evenly;
    width: 300px;
    margin-right: 40px;
}

.login-signin-buttons
{
  
  --b: 5px;   /* border thickness */
  --s: .45em; /* size of the corner */
  --color: white;
  
  padding: calc(1em + var(--s)) calc(1.5em + var(--s));
  color: var(--color);
  --_p: var(--s);
  background:
    conic-gradient(from 90deg at var(--b) var(--b),#0000 90deg,var(--color) 0)
    var(--_p) var(--_p)/calc(100% - var(--b) - 2*var(--_p)) calc(100% - var(--b) - 2*var(--_p));
  transition: .3s linear, color 0s, background-color 0s;
  outline: var(--b) solid #0000;
  outline-offset: .6em;
  font-size: 16px;

  border: 0;
  font-weight: bold;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  cursor: pointer;
}

.login-signin-buttons:hover,
.login-signin-buttons:focus-visible{
  --_p: 0px;
  outline-color: var(--color);
  outline-offset: .05em;
  color: white;
}

.login-signin-buttons:active {
  background: var(--color);
  color: #fff;
}


.navbar
{
  position: sticky;
    margin: auto;
    top: 100px;
    width: 100vw;
    justify-content: center;
    display: flex;
    margin-top: 60px;
    margin-bottom: 0;
}

.navbar-buttons
{
  padding: 25px 50px;
  background-color: black;
  color: white;
  border: 0;
  font-size: large;
  box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
}
.navbar-buttons:hover
{
  background-color: orange;
  transition-duration: 0.7s;
  color: black;
}
.navbar-buttons-starts
{
  border-radius: 7px;
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}
.navbar-buttons-ends
{
  border-radius: 7px;
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
}

.Search-input-div
{
  display: flex;
  justify-content: space-evenly;
  flex-wrap: wrap;
}

.search-jobs-div
{
   display: flex;
    width: 50%;
    flex-direction: column;
    margin: auto;
    margin-top: 100px;
    
}

.Search-jobs-input
{
  width: 250px;
  padding: 15px;
  border-radius: 20px;
  border:0;
  box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
  margin-top: 5px;
}

.search-heading
{
  text-align: center;
  font-size: 40px;
}

.search-jobs-button
{
  background-image: linear-gradient(92.88deg, #455EB5 9.16%, #5643CC 43.89%, #673FD7 64.72%);
  color: #FFFFFF;
  padding: 1rem 2.6rem;
  border-radius: 7px;
  margin:auto;
  margin-top: 20px;
  width: max-content;
  border:0;
}
.search-jobs-button:hover
{
  box-shadow: rgba(80, 63, 205, 0.5) 0 1px 30px;
  transition-duration: .1s;
}


.showcase-companies
{
  display: flex;
  justify-content: space-evenly;
  flex-wrap: wrap;
  margin-bottom: 20px;
}
.top-companies
{
  border-radius: 10px;
  box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
  padding: 20px;
  margin-top: 20px;
  width: 270px;
  
}

.companies-list
{
  list-style: none;
}

.companies-type-heading
{
  font-size:30px;
  text-align: center;
}
.companies-item-div{
  margin-top: 10px;
}

.companies-item-div > p{
  display: inline;
}

.footer
{
  display: flex;
  justify-content: space-evenly;
  padding: 5% 10%;
  width: 80%;
  flex-direction: row;
  background-color: rgb(71, 111, 112);
}
.footer-text
{
  text-align:left;
  color: grey;
  font-weight: bold;
}
.footer-content
{
  width: max-content;
  height: max-content;
}


.code-anchor{
    position: fixed;
    top: 88vh;
    right: 4vw;
}

.code-button{
    border-radius: 100%;
    padding: 14px 8px;
    background-color: black;
    color: white;
    font-weight: bolder;
    font-size: 25px;
    letter-spacing: 2px;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
}
.code-button:hover{
    font-size: 28px;
    padding: 15px 9px;
    transition-duration: 0.7s;
}

@media all and (max-width:800px)
{
  .top-div
  {
    background-image:url("images/register_image.jpg");
    background-size:cover;
  }
  .heading
  {
    padding: 10px 0 10px 20px;
    font-size: 30px;
  }
  .header
  {
    position: fixed;
    width: 100vw;
    top: 0;
    padding-bottom: 20px;
    left: 0;
    background-color: black;
  }
  .heading:hover
{
   font-size: 30px;
}
  .navbar
  {
    position: fixed;
    top: 55px;
    width: 100vw;
    margin-top: 0;
    display: flex;
    justify-content: space-evenly;
    background-color: black;
    border-top: 2px solid grey;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
  }
  .navbar-buttons
  {
    padding: 15px 5%;
    font-size:65%;
    box-shadow: none;
  }
  .navbar-buttons-starts
{
  border-radius: 0;
}
.navbar-buttons-ends
{
  border-radius: 0;
}

  .buttons-div
  {
    margin-right: 35px;
    width: 30%;
  }
  .login-signin-buttons
  {
    margin-right: 10px;
    font-size: 11px;
  }
  
  .search-jobs-div
  {
    margin-top: 230px;
  }
  .Search-jobs-input
  {
    margin-top: 20px;
  }
  .search-heading
  {
    font-size: 30px;
  }

  .footer
  {
    display: none;
  }

  .login-signin-buttons
  {
    --b: 3px;
    --s: .45em;
    padding: calc(0.5em + var(--s)) calc(0.9em + var(--s));
  }
}
    </style>
  </head>
  <body>
      <a class="code-anchor" href="Compiler.jsp"><button class="code-button">&lt;/&gt;</button></a>
    <div class="top-div">
      <div class="header">
        <h1 class="heading">Joblogin</h1>
        <div class="buttons-div">
            <a href="Login.jsp"><button class="login-signin-buttons">Login</button></a>
            <a href="Register.jsp"><button class="login-signin-buttons">Register</button></a>
          
        </div>
      </div>
      

        <div class="navbar">
          <button class="navbar-buttons navbar-buttons-starts">Search Jobs</button>
          <a href="Discussion.jsp"><button class="navbar-buttons">Discussions</button></a>
          <a href="Blogs.jsp"><button class="navbar-buttons">Blogs</button></a>
          <button class="navbar-buttons navbar-buttons-ends">About Us</button>
        </div>

        <div class="search-jobs-div">
          <h1 class="search-heading">Explore your dream Job through India's No.1 Job Portal</h1>
          <div class="Search-input-div">
          <input type="text" placeholder="Search By Technology" class="Search-jobs-input" />
          <input type="text" placeholder="Search By Location" class="Search-jobs-input" />
          </div>
          <button class="search-jobs-button">Search</button>
        </div>
    </div> 

      <div class="container">
        
        <div class="showcase-companies">

          <div class="top-companies">
            <h1 class="companies-type-heading">Top IT Companies</h1>
            <ul class="companies-list">
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>CodeQuotient</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>Accenture</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>TCS</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>Wipro</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>HCl</p>
                </div>
              </li>
            </ul>
          </div>

          <div class="top-companies">
            <h1 class="companies-type-heading">MAANG Companies</h1>
            <ul class="companies-list">
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-windows" aria-hidden="true"></i>
                <p>Microsoft</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-amazon" aria-hidden="true"></i>
                <p>Amazon</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>Adobe</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>Netflix</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-google" aria-hidden="true"></i>
                <p>Google</p>
                </div>
              </li>
            </ul>
          </div>

          <div class="top-companies">
            <h1 class="companies-type-heading">Unicorn Startups</h1>
            <ul class="companies-list">
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>Microsoft</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>Amazon</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>Adobe</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>Netflix</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>Google</p>
                </div>
              </li>
            </ul>
          </div>

          <div class="top-companies">
            <h1 class="companies-type-heading">Highly Growing</h1>
            <ul class="companies-list">
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>Microsoft</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>Amazon</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>Adobe</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>Netflix</p>
                </div>
              </li>
              <li class="companies-item">
                <div class="companies-item-div">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <p>Google</p>
                </div>
              </li>
            </ul>
          </div>

        </div>

        <div class="footer">
    <div class="footer-content">
      <p class="color1">Address</p>
      <hr>
      <p class="footer-text">ZZZZ Workspace<br>
         Street 43,building 4A<br>
         Industrial Area<br>
         Aqwertyu<br>
         Mumbai
      </p>
    </div>
    <div class="footer-content">
      <p class="color1">Address</p>
      <hr>
      <p class="footer-text">ZZZZ Workspace<br>
         Street 43,building 4A<br>
         Industrial Area<br>
         Aqwertyu<br>
         Mumbai
      </p>
    </div>
    <div class="footer-content">
      <p class="color1">Address</p>
      <hr>
      <p class="footer-text">ZZZZ Workspace<br>
         Street 43,building 4A<br>
         Industrial Area<br>
         Aqwertyu<br>
         Mumbai
      </p>
    </div>
    <div class="footer-content">
      <p class="color1">Address</p>
      <hr>
      <p class="footer-text">ZZZZ Workspace<br>
         Street 43,building 4A<br>
         Industrial Area<br>
         Aqwertyu<br>
         Mumbai
      </p>
    </div>
  </div>
      </div>
  </body>
</html>
