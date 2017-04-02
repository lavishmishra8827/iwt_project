<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<%@ page import="java.io.*"%>
<html>
    <body>
        <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/project_web"
        user="root" password=""
        />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM upload;
    </sql:query>
          
<table  style="margin-left: 300px;width: 50%" border="1">
    <caption style="font-size: 30px; font-family: papyrus;background:#ccffcc">Student's Library</caption>
    <tr style="background-color:#99ffff">
    <th>Number</th>
    <th>Name</th>
    
   </tr> 
        <c:forEach var="user" items="${listUsers.rows}">
        
            <tr>
    <td><c:out value="${user.fileid}"/></td> 
     <td><c:out value="${user.filename}"/></td>
      <td><c:out value="${user.filepath}"/></td> 
    <td> <a style="color:#2e38c3" href="download.jsp?filepath=${user.filepath}&filename=${user.filename}"><c:out value="${user.filename}"/></a></td>
   </tr>

</c:forEach>
</table> 
<%/* Blob image = null;

Connection con = null;
String s;
byte[ ] imgData = null ;

Statement stmt = null;

ResultSet rs = null;

try {

Class.forName("com.mysql.jdbc.Driver");

con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web","root","");

stmt = con.createStatement();

rs = stmt.executeQuery("select * from upload ");
PrintWriter out1=response.getWriter();
out1.print("<h1>Library </h1>");
while(rs.next()) {
//out.print("hello");
*/%>


<%
// }
%>
<br />
<%
//image = rs.getBlob(1);

//imgData = image.getBytes(1,(int)image.length());

 

//out.println("Display Blob Example");

//out.println("image not found for given id>");

//return;



// display the image

//response.setContentType("image/gif");

//OutputStream o = response.getOutputStream();

//o.write(imgData);

//o.flush();

//o.close();
/*
} catch (Exception e) {

out.println("Unable To Display image");

out.println("Image Display Error=" + e.getMessage());

return;

} finally {

try {

rs.close();

stmt.close();

con.close();

} catch (SQLException e) {

e.printStackTrace();

}

}

*/%>
    </body>
</html>