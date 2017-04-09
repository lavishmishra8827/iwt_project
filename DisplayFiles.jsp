<%-- 
    Document   : DisplayFiles
    Created on : 09-Apr-2017, 17:54:13
    Author     : parth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="index.jsp" style="float:right;text-decoration: none">Home</a>
        <div style="text-align: center">
        <form action="displayBLOB.jsp" method="post">
            <h2 style="text-transform: capitalize">Select Subject</h2>
           <select name="hey" >  <option value="ADA">ADA </option> <option value="SYSTEM_PROG">SYSTEM_PROG</option><option value="OS">OS</option><option value="IWT">IWT</option></select>
          <br>
          <br>
           <input style="background: greenyellow ; border-radius: 10px;height: 35px;width: 100px" type="submit" value="FetchFiles">
  
        
        </form>
        </div>
     
    </body>
</html>
