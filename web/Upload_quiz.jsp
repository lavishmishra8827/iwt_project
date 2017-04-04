<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

    String rr[]=request.getParameterValues("name[]");
    String mcq[]=request.getParameterValues("mcq[]");
    String ans[]=request.getParameterValues("ans[]");
    int i;
    i=rr.length;
    int j,m=0;
    int p=0;
    try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web", "root", "");
         
            
         String query="insert into quiz1 values(?,?,?,?,?,?,?)";
         
         PreparedStatement stmt=con.prepareStatement(query);
         for(j=0;j<i;j++){
            
             
         stmt.setInt(1,j);
         stmt.setString(2,rr[j]);
         stmt.setString(3,mcq[m]);m++;
         stmt.setString(4,mcq[m]);m++;
         stmt.setString(5,mcq[m]);m++;
         stmt.setString(6,mcq[m]);m++;
         stmt.setString(7,ans[p]);p++;
         stmt.execute();
         
         }
    }catch(Exception e){
        out.println(e);
    }
    //out.println(rr);
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
