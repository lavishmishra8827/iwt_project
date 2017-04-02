<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%
    
    String username="";
    String city="";
    String phoneno="";
    String email="";
    HttpSession mySession=request.getSession();
    String userid=(String)mySession.getAttribute("userid");
    //out.println(userid);
    if(userid==null)
       try{
        response.sendRedirect("Login1.html");}
    catch(Exception e){}
    Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web", "root", "");
     String query="select * from creait where userid=?" ;
     PreparedStatement stmt=con.prepareStatement(query);
     stmt.setString(1,userid);
     ResultSet rs=stmt.executeQuery();
     boolean loginornot=rs.next();
     if(loginornot)
     {
      username=rs.getString(3);
     city=rs.getString(4);
     phoneno=rs.getString(5);
      email=rs.getString(6);
     }
    
        
%>
<html>
    <head>
        <title>Student Portal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="student1.css">
    </head>
    <body>
        <a class="button_log" href="logout.jsp">Logout</a>
        <div class="one" style="text-align: center" > <h1 style='color: darkgrey;alignment-adjust: central'>Student Profile</h1>
            
        </div>
        <div class="two">
            <img class='img' src="<%="ImageReader?id="+userid%>">
            <div style='text-align
                 +: center'> Personal Information</div>
            <table border='1'>
                <tr>
                    <th> Name</th>
                    <td>  <%=username%></td>
                </tr>    
                <tr>
                     <th> DOB</th>
                     <td> January 1,1997</td>
                  </tr>   
                  <tr> 
                       <th> Native Place</th>
                       <td> <%=city%><td>
                       </tr>        
            </table>
        </div>
        <div class="three"> <h1 style="color: black">Hello this is <%=username%> </h1>     
                   <p> WELCOME TO THE PROFILE PAGE</p>
        
        </div>
        <div class="four" style='padding-left: 10px;padding-right: 10px ;text-align: '>
            <br>
            <Button class="button_1">View Performance</Button>
            <button class="button_1">Edit Profile</button>
            <a href="attendance.jsp"><button class="button_1"> View Attendance</button></a>
            <button class="button_1">Home</button>
            
            
            
        </div>
    </body>
</html>
