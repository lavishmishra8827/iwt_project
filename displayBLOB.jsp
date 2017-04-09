<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<%@ page import="java.io.*"%>
<html>
    <body>
        <a href="index.jsp" style="float:right;text-decoration: none">Home</a>
        <div style="text-align: center">
        <form action="displayBLOB.jsp" method="post">
            <h2 style="text-transform: capitalize">Select Subject</h2>
           <select name="hey" >  <option value="ADA">ADA </option> <option value="SYSTEM_PROG">SYSTEM_PROG</option><option value="OS">OS</option><option value="IWT">IWT</option></select>
          <br>
          <br>
           <input style="background: greenyellow ; border-radius: 10px;height: 35px;width: 100px" type="submit" value="FetchFiles">
  
        
        </form>
        </div>
        
        
        
        <%
            String sub=request.getParameter("hey");    
        %>
        <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/project_web"
        user="root" password=""
        />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM upload where subject="<%=sub%>";
    </sql:query>
          
<table  style="margin-left: 300px;width: 50%" border="1">
    <caption style="font-size: 30px; font-family: papyrus;background:#ccffcc">Files Available for subject <%=sub%> </caption>
    <tr style="background-color:#99ffff">
    <th>Number</th>
    <th>Name</th>
    
   </tr> 
        <c:forEach var="user" items="${listUsers.rows}">
        
            <tr>
    <td><c:out value="${user.fileid}"/></td> 
    
      
    <td> <a style="color:#2e38c3" href="download.jsp?filepath=${user.filepath}&filename=${user.filename}"><c:out value="${user.filename}"/></a></td>
   </tr>

</c:forEach>
</table> 
<br />

    </body>
</html>