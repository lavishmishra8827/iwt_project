<%@page import="java.io.PrintWriter"%>
<%@ page contentType="text/html;charset=windows-1252"%> 
<%@ page import ="java.sql.*" %> 
<%@ page import ="javax.sql.*" %> 
<%@ page import ="javax.naming.InitialContext" %> 
<%@ page import ="java.sql.PreparedStatement.*" %> 
<%@ page import ="javax.servlet.annotation.WebServlet"%>
<%@ page import= "javax.servlet.annotation.MultipartConfig"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<form name="upload1" method=post> 
<% 
out.print("yaha");
//PrintWriter out1 = response.getWriter();
//out1.print("mai shi tha");
//String u=request.getParameter("num");
//int up1=Integer.parseInt(u);
    int up1=Integer.parseInt(request.getParameter("num")); 
out.print("yaha");
//String up2=request.getParameter("attach"); 

Part up2 = request.getPart("attach");
java.io.File f=new java.io.File("up2"); 
java.io.FileInputStream fis= new java.io.FileInputStream(f); 
out.print("yaha");
Class.forName("com.mysql.jdbc.Driver"); 
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web","root",""); 
PreparedStatement pst=con.prepareStatement("insert into upload values(?,?)"); 
out.print("yaha");
pst.setInt(1,up1); 
pst.setBinaryStream(2,fis,(int)f.length()); 
pst.executeUpdate(); 
pst.close(); 
con.close(); 
%> 
<center><h3>File Uploaded Successful</h3></center> 
 
<center><h3>File Does not Uploaded</h3></center> 
 
</form> 
</html>