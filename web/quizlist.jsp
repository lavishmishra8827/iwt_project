<%-- 
    Document   : quizlist
    Created on : 05-Apr-2017, 21:21:25
    Author     : parth
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           try{DriverManager.registerDriver(new com.mysql.jdbc.Driver());
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web","root","");
           String sql="select * from quizes";
           PreparedStatement ps=con.prepareStatement(sql);
           ResultSet rs=ps.executeQuery();
           
                       

            %>
<table  style="margin-left: 300px;width: 50%" border="1">
    <caption style="font-size: 30px; font-family: papyrus;background:#ccffcc">Available Quizes</caption>
    <tr style="background-color:#99ffff">
    <th>Number</th>
    <th>Name</th>
    
   </tr> 
   <% while(rs.next()){%>
        
            <tr>
                <td><%=rs.getString(1)%></td> 
                <td> <a style="color:#2e38c3" href="fetch_quiz.jsp?quizname=<%=rs.getString(2)%>"><%=rs.getString(2)%></a></td>
            </tr>

            <%}}catch(Exception e){
               out.print(e);
           }%>
</table> 
    </body>
</html>
