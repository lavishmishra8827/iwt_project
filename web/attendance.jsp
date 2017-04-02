<%-- 
    Document   : attendance
    Created on : 09-Feb-2017, 19:11:13
    Author     : parth
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link rel="stylesheet" href="student1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="text-align: center;font-family: papyrus; font-size: 20px; margin-top: 10px"> 
        <h1 style="color: blue">Check your attendance</h1>
        </div>
        <form action="atten_db.jsp" method="post"> 
        <div style="text-align: center ">
             
                 <select id="listy" name="listy" style="width: 300px; text-align: center;">
            <option id="ADA_A" value="ADA_A"> ADA</option>   
            <option id="WEB" value="WEB"> WEB</option>
            <option id="SYSTEM_P" value="SYSTEM_P"> SYSTEM</option>
            <option id="OS" value="OS"> OS</option>
          </select> </div>
        <div style="text-align: center;font-family: papyrus; font-size: 20px; margin-top: 10px">
            <input type="submit" name="Check"  class="button2">
        </div>
        </form>
     
                 
    </body>
</html>
