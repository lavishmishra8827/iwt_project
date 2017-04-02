<%-- 
    Document   : teacher_console
    Created on : 12-Feb-2017, 21:07:26
    Author     : parth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="teacher1.css">
        <title>TEACHER CONSOLE</title>
        </head>
    <body>
     
        <div class="modal" id="openModal">
	<div class="modalContainer">
		<a href="#close" title="Close" class="close">X</a>
<center> 
<form name="attach" action="UploadServlet" method="post" 
ENCTYPE="multipart/form-data"> 
<p><input type="file" name=attach size=16000 > </p> 
<br/> 
<br>
<input type="submit" name="upl" value="UPLOAD"> 
</form> 
</center>
        </div>
        </div>
       <div style='background-color:#2fe1db;'>    
           <ul style=" padding-top:0px;width:160px;float: right;padding-right: 20px">
           <li style="float: right"> <a href="index.jsp"> Logout</a></li>
           <li style="float:right;margin-right: 20px"><a href="index.jsp"> Home </a></li>
        </ul>
       <h1 style='text-align: center;font-family: papyrus;font-size: 50px;text-decoration: none'>Teacher's Console</h1>
       </div>
        <br>
        <br>
        <br></br>
      <div style=" border: 1px solid brown;width: auto;float:right;background-color: #FDF2E9;font-family: sans-serif;margin-right: 420px;">
          <button class='button1'>  <a style='text-decoration: none;height: 50px' href="#openModal">Upload_File  </a>  </button>
         <button class='button1'> <a style='text-decoration: none' href="displayBLOB.jsp">View Library</a></button>
        <button class='button1'> <a style='text-decoration: none' href="displayBLOB.jsp">Upload Quiz</a></button>
        <button class='button1'> <a style='text-decoration: none' href="displayBLOB.jsp">View Student's profile</a></button>
       <button class='button1'> <a style='text-decoration: none' href="displayBLOB.jsp">View Library</a></button>
       
      </div>
        
        
    </body>
</html>
