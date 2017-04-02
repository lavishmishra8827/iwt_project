 <%@page import="java.io.PrintWriter"%>
<%-- 
    Document   : download
    Created on : 18 Mar, 2017, 12:11:35 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
     <%    
      
      String filename = "CODEVENTURE1.pptx";   
      String filepath = "C:\\Users\\lenovo\\Documents\\WEB_PROJECT\\build\\web\\data\\";
      String f=request.getParameter("filepath");
      String f2=request.getParameter("filename");
      PrintWriter out1= response.getWriter();
      out1.println(f+f2);
      response.setContentType("APPLICATION/OCTET-STREAM");   
      response.setHeader("Content-Disposition","attachment; filename=\"" + f2 + "\"");   
      
      java.io.FileInputStream fileInputStream=new java.io.FileInputStream(f + f2);  
                
      int i;   
      while ((i=fileInputStream.read()) != -1) {  
        out.write(i);   
      }   
      fileInputStream.close();   
    %>    
    </body>
</html>