<%-- 
    Document   : Discussion
    Created on : 28-Dec-2022, 8:33:06 PM
    Author     : Chirag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Discussion App</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=PT+Sans&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Lato&display=swap');
body{
  margin: 0;
  /* overflow:hidden; */
  font-family: 'Lato', sans-serif;
  overflow: hidden;
  height: 100vh;
}
h4{
  font-weight:100;
}

#heading
{
    width: 100%;
    padding: 10px 0;
    background-color: #05a3ad;
    color: white;
    font-family: 'Fredoka One', cursive;
    font-weight:200;
    margin: 0;
    text-align: center;
}

.container
{
  display: flex;
  width: 100%;
  height: 90%;
  overflow: hidden;
}

.right-pane
{
  display: flex;
  width: 55%;
  height: 100%;
  padding-bottom: 0;
}
.left-pane
{
  display: flex;
  width: 45%;
  height: 100%;
  border-right:1px solid lightgrey;
  flex-wrap: wrap;
  
}

#discussion-portal
{
  width: 100%;
  height: 100%;
  padding: 10% 10%;
  display: block;
}
.heading-welcome
{
  font-size:230%;
  margin-bottom: 0;
  margin-top: 0;
}
.question-input
{
  height: 200px;
  width: 100%;
}
.subject-input
{
  width: 40%;
  margin-bottom: 10px;
}

.submit-question
{
  float: right;
  margin-top: 4px;
  color: white;
  background-color: navy;
  border-radius: 5px;
  padding: 7px 10px;
  cursor: pointer;
}

.submit-question:hover{
  color: navy;
  background-color: white;
  border:2px solid navy;
}


.buttons-div
{
  height: 10%;
    width: 100%;
    align-items: center;
    display: flex;
    padding: 0 20px;
    border-bottom: 1px solid gray;
}

.buttons-div > button
{
  margin-right: 20px;
}

#new-question-button
{
  background-color: #1e90ff;
  color: white;
  border: 0;
  padding: 7px;
  border-radius: 3px;
  cursor: pointer;
}

#new-question-button:hover
{
  background-color: #4169e1;
  border:3px solid #1e90ff;
  padding: 4px;
}

#search-question-button
{
  padding: 5px;
  color: black;
  background-color: white;
  border-radius: 3px;
  border: 2px solid black;
}

#search-question-button:hover
{
  border: 3px solid black;
  padding: 4px;
}

#responses
{
  width: 100%;
  height: 100%;
  padding: 2% 10%;
  display: none;
  overflow: auto;
}
.question-div
{
  background-color: #f2f2f2;
  padding: 10px 15px;
  border-radius: 5px;
}
#responses-div
{
  max-height: 150px;
  overflow:auto;
}

#response-content-input
{
  height: 100px;
}


#responses-list
{
  padding-left: 5px;
  list-style: none;
}

#list-div
{
  background-color: #f2f2f2;
  width: 100%;
  height: 100%;
  border-bottom: 1px solid lightgrey;
  overflow: auto;
}


#list
{
  list-style: none;
  padding-left: 0;
  cursor: pointer;
}
.questions-list
{
  padding-left: 20px;
  border-bottom: 1px solid lightgray
}
.response-list
{
  border-bottom: 2px solid gray;
}

.vote-count
{
  margin-right: 10px;
  width: max-content;
}

.vote-span
{
    display: flex;
    justify-content: start;
    align-items: center;
}

@media all and (max-width:660px)
{

  body{
    overflow: auto;
  }

  #discussion-portal
  {
    padding: 2% 10%;
  }

  .container{
    flex-wrap: wrap;
    width: 100%;
    overflow: auto;
  }
  .left-pane,.right-pane
  {
    width: 100%;
    height: 50vh;
    border: 0;
    margin-top: 15vh;
  }
  .left-pane
  {
     border-bottom: 1px solid lightgray;
     height: 60vh;
     margin-top: 0;
  }

  .buttons-div
  {
    justify-content: center;
  }
}
    </style>
  </head>
  <body>
    
      <h1 id="heading">JobLogin Discussion Portal</h1>
      <div class="container">

        <div class="left-pane">
          <div class="buttons-div">
            <button id="new-question-button">New Question Form</button>
            <input id="search-question-button" placeholder="Search Question..."/>
          </div>
          <p id="No-questions" style="margin:20px auto;">No Questions Yet!!!</p>
          <div id="list-div">
            <ul id="list">
              
            </ul>
          </div>
          
        </div>

        <div class="right-pane">
          
            <div id="discussion-portal">
              <h1 class="heading-welcome">Welcome to Discussion Portal!</h1>
              <p>Enter a subject and question to get started</p>
              <input type="text" placeholder="Subject" id="subject-input" class="subject-input"/><br>
              <textarea placeholder="question" id="question-input"class="question-input"></textarea><br>
              <button id="submit-question" class="submit-question">Submit</button>
            </div>
            
            <div id="responses">
             <p id="for-id" hidden></p>
              <h3>Question</h3>
              <div id="question-div" class="question-div">
                <h3 id="question-name"></h3>
                <h4 id="question-content"></h4>
              </div>
              <button id="resolve-button" class="submit-question" >resolve</button>
              <h3 style="margin-top:40px;">responses</h3>
              <div id="responses-div" class="question-div">
    
              </div>
              <div id="Add-response-div">
              <h1 class="Add-response-heading">Add response</h1>
              <input type="text" placeholder="Enter Name" id="response-name-input"class="subject-input"/><br>
              <textarea placeholder="Enter Content" id="response-content-input" class="question-input" ></textarea><br>
              <button id="submit-response"class="submit-question">Submit</button>
            </div>
            </div>
        </div>

      </div>
      <script type="text/javascript" src="js/script.js"></script>
  </body>
</html>
