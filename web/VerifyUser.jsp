<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% 

    String username=request.getParameter("userId");
    String password=request.getParameter("password") ;
    //String direct=request.getParameter("from") ;
    
    HttpSession mySession ;
    
    
    
 try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web", "root", "");
     String query="select userid from creait where userid=? and password=?";
     PreparedStatement stmt=con.prepareStatement(query);
     stmt.setString(1,username);
     stmt.setString(2,password);
     ResultSet rs=stmt.executeQuery();
     boolean loginornot=rs.next();
     String value="";
     //Statement stmt=con.createStatement();
     //String query1="select verifyemail from users where userid ='"+username+"'";
     //Statement stmt1=con.createStatement();
     //rs=stmt.executeQuery(query1);
     //rs.next();
     //String status=rs.getString(1);
     //out.println(status);
     if(loginornot==false)
            response.sendRedirect("Loginfailed.jsp?state=Please Verify your email-address");
                
      else if(loginornot==true)   
        {
                
            mySession=request.getSession();
            mySession.setAttribute("userid",username);
            mySession.setAttribute("password",password);
            
            //if(direct.equals("admin"))
                response.sendRedirect("student.jsp");
        
         //   else    
           //     response.sendRedirect("Homepage.jsp");
        
        }
        //else{
          //      response.sendRedirect("Loginfailed.jsp?state=wrong");
        //}
              
     
     
     
              
 }
 catch(Exception e){
     out.println(e);
     
 }


%>