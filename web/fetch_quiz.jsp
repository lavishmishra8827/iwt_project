<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>

<form action="SeeQuiz.jsp" method="get">
    

<%

try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web", "root", "");
     String query="select * from quiz1";
     Statement stmt=con.createStatement();
     ResultSet rs=stmt.executeQuery(query);
     
     //boolean check=rs.next();
     int i=1;
     while(rs.next()){
    
            %>
            <%=rs.getInt(1)%> <h2><%=rs.getString(2)%></h2><br>
             <input type="radio" name="<%="mcq"+i%>" value="a" ><%=rs.getString(3)%><br>
                     <input type="radio" name="<%="mcq"+i%>" value="b" ><%=rs.getString(4)%><br>
             <input type="radio" name="<%="mcq"+i%>" value="c" ><%=rs.getString(5)%><br>
                    <input type="radio" name="<%="mcq"+i%>" value="d" > <%=rs.getString(6)%><br>
            
                    <%i++;%>
     <%}


     
     
     
}catch(Exception e){
    out.println(e);
}


%>
<input type="submit" value="Submit">
</form>
