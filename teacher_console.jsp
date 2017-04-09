<%-- 
    Document   : teacher_console
    Created on : 12-Feb-2017, 21:07:26
    Author     : parth
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
        response.sendRedirect("index.jsp");}
    catch(Exception e){}
    Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web", "root", "");
     String query="select * from teacher where userid=?" ;
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


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="teacher1.css">
        <title>TEACHER CONSOLE</title>
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
         
        <div class="modal" id="openModal">
	<div class="modalContainer">
            <div style="text-align: center">
                <div style="background: #00cccc ;margin-top: 0px">
                    <h1 style="color: #333333">Upload files to the library!</h1>
            
        </div>
            <center> 
<form name="attach" action="UploadServlet" method="post" 
ENCTYPE="multipart/form-data"> 
<br>
<br>
 
     <select name="hey" >  <option value="ADA">ADA </option> <option value="SYSTEM_PROG">SYSTEM_PROG</option><option value="OS">OS</option><option value="IWT">IWT</option></select>
    
     
<br>
<br>

    <input type="file" name=attach size=16000 >  
<br>
<br>
<br>

<label><input style="border-radius: 40px; background: #00ccff; width: 100px;height: 20px" type="submit" name="upl" value="UPLOAD"></label> 
<br>
<br>
<button style="border-radius: 40px; background:#00ccff"><a style="text-decoration: none" href="#close" title="Close" class="close" style="font-family: papyrus ;float: right">Close</a></button>
</form> 
</center>
            </div>
        </div>
        </div>
       <div style='background-color:#2fe1db;'>    
           <ul style=" padding-top:0px;width:160px;float: right;padding-right: 20px">
           <li style="float: right"> <a href="logout.jsp"> Logout</a></li>
           <li style="float:right;margin-right: 20px"><a href="index.jsp"> Home </a></li>
        </ul>
       <h1 style='text-align: center;font-family: papyrus;font-size: 50px;text-decoration: none'>Teacher's Console</h1>
       </div>
        <br>
        <br>
        <br></br>
      <div style=" border: 1px solid brown;width: auto;float:right;background-color: #FDF2E9;font-family: sans-serif;margin-right: 420px;">
          <button class='button1'>  <a style='text-decoration: none;height: 50px' href="#openModal">Upload_File  </a>  </button>
         <button class='button1'> <a style='text-decoration: none' href="DisplayFiles.jsp">View Library</a></button>
        <button class='button1'> <a style='text-decoration: none' href="questiondaalo.jsp">Upload Quiz</a></button>
        <button class='button1'> <a style='text-decoration: none' href="displayBLOB.jsp">View Student's profile</a></button>
       
      </div>
        
        
    </body>
</html>
