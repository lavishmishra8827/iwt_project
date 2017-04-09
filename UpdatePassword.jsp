<%-- 
    Document   : UpdatePassword.jsp
    Created on : 9 Apr, 2017, 5:50:00 PM
    Author     : Mayank Goyal
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

    try{
HttpSession mySession;
    mySession=request.getSession();} 
    catch (Exception ex) {}
            
            String userid=(String) session.getAttribute("userid");
            if(userid==null)
                try {response.sendRedirect("login.jsp?user=student"); } 
                catch (Exception ex) {}

    
    
    

try{
        
    String password=request.getParameter("password");
        String npassword=request.getParameter("pass_word");
        
    
        
    
    Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web", "root", "");
     String query="select userid,password from creait where userid=?";
     PreparedStatement stmt=con.prepareStatement(query);
     stmt.setString(1,userid);
     ResultSet rs=stmt.executeQuery();
     //out.println("1query");
     //boolean loginornot=rs.next();
     while(rs.next()){
            String pass=rs.getString(2);
            if(password.equals(pass)) {
                    
                
                    String query1="update creait set password=? where userid=?";
                    PreparedStatement stmt1=con.prepareStatement(query1);
                       // out.println("2query");
                    stmt1.setString(1,npassword);
                    stmt1.setString(2, userid);
                     stmt1.executeUpdate();
                     out.println("<script>alert('Password updated successfully') </script>");
                     response.sendRedirect("logout.jsp");
            }
            else
            {
                    out.println("you entered ");
                    
            }
            
            
     }
     
     
     
     
     
}catch(Exception e){

    out.println(e);
}



%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
