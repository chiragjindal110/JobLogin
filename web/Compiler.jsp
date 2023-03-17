<%-- 
    Document   : Compiler
    Created on : 28-Dec-2022, 7:47:06 PM
    Author     : Chirag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>My Compiler</title>
    <link rel="stylesheet" href= "style.css">
    <style>
        textarea{
  height: 300px;
  width: 900px;
  display: block;
  margin-top: 2px;
}

.output-div
{
  margin:50px 0 0 0;
  background-color: black;
  color: white;
  width: 700px;
  height: 200px;
}

#Compile-btn
{
  padding: 10px;
  border-radius: 3px;
  background-color: orange;
  margin-top: 10px;
  border: 0;
  cursor: pointer;
}
        </style>
  </head>
  <body>

    <select class="select" id="select">
      <option value ="0">Python</option>
      <option value ="4">Javascript</option>
      <option value ="7">C</option>
      <option value ="77">CPP</option>
      <option value ="8">Java</option>
    </select>

    <textarea placeholder="Enter Your Code" id="text"></textarea>
    <div class="output-div" id="output-div">OUTPUT:</div>
    <button id="Compile-btn">Compile</button>
    
    <script type="text/javascript" src="js/script.js"></script>

  </body>
</html>