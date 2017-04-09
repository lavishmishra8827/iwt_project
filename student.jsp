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
    String date1="";
    
    HttpSession mySession=request.getSession();
    String userid=(String)mySession.getAttribute("userid");
    //out.println(userid);
    if(userid==null)
       try{
        response.sendRedirect("index.jsp");}
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
      date1=rs.getString(8);
     }
    
        
%>
<html>
    <head>
        <title>Student Portal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="student1.css">
            <script>(function()
{
  if( window.localStorage )
  {
    if( !localStorage.getItem( 'firstLoad' ) )
    {
      localStorage[ 'firstLoad' ] = true;
      window.location.reload();
    }  
    else
      localStorage.removeItem( 'firstLoad' );
  }
})();

        </script>
    </head>
    <body>
        <a class="button_log" href="logout.jsp">Logout</a>
        <div class="one" style="text-align: center" > <h1 style='color: darkgrey;alignment-adjust: central'>Student Profile</h1>
            
        </div>
        <div class="two">
            <img class='img' src="<%="ImageReader?id="+userid%>">
            <div style='text-align: center'><h1> Personal Information</h1></div>
            <br>
            <table border='1' style="border-spacing: 2px; cell-padding: 5px">
                <tr>
                    <th> Name</th>
                    <td style="text-transform: uppercase">  <%=username%></td>
                </tr>    
                <tr>
                     <th > DOB</th>
                     <td> <%= date1%></td>
                  </tr>   
                  <tr> 
                       <th> Native Place</th>
                       <td style="text-transform: uppercase"> <%=city%><td>
                       </tr>        
            </table>
        </div>
<<<<<<< HEAD
        <div class="three"> <h1 style="color: black;text-transform: capitalize">Welcome <%=username%> !!!!</h1>     
           
=======
        <div class="three"> <h1 style="color: black"> <%=username%> </h1>     
                   <p> WELCOME TO THE PROFILE PAGE</p>
        
>>>>>>> master
        </div>
        <br>
        <br>
        <br>
        <br>
        <div class="four" style='padding-left: 10px;padding-right: 10px ;text-align: '>
            <br>
          <a href="performance.jsp">  <Button class="button_1">View Performance</Button></a>
           <a href="quizlist.jsp"><Button class="button_1">Attempt Quiz</Button></a>
            
           <a href="ChangePassword.jsp" ><button class="button_1">Change Password</button></a>
            <a href="attendance.jsp"><button class="button_1"> View Attendance</button></a>
            
            
            
            
        </div>
    </body>
</html>
