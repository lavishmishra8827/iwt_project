<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<html>
    <head>
        
        <link rel="stylesheet" href="student1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <div style="text-align: center;font-family: papyrus; font-size: 20px; margin-top: 10px"> 
        <h1 style="color: blue">Check your attendance</h1>
        </div>
        <form action="atten_db.jsp" method="post"> 
        <div style="text-align: center ">
             
                 <select id="listy" name="listy" style="width: 300px; text-align: center;">
            <option id="ADA_A" value="ADA_A"> ADA</option>   
            <option id="WEB" value="WEB"> WEB</option>
            <option id="SYSTEM_P" value="SYSTEM_P"> SYSTEM</option>
            <option id="OS" value="OS"> OS</option>
          </select> </div>
        <div style="text-align: center;font-family: papyrus; font-size: 20px; margin-top: 10px">
            <input type="submit" name="Check"  class="button2">
        </div>
            
        </form>
         
 <%
String subj=request.getParameter("listy"); 
int flag=0;
if(subj==null)
     
session.putValue("listy",subj);
//out.println(""+subj);
//String pwd=request.getParameter("pwd"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web","root",""); 
Statement st= con.createStatement();
Statement rt= con.createStatement();
ResultSet rs,tu;
if(subj.equals("ADA_A"))
{
    rs = st.executeQuery("select enroll,ADA_A from Attendance");
    tu=rt.executeQuery("select ADA from total_atten");
    
} 
else if(subj.equals("SYSTEM_P"))
{
    rs = st.executeQuery("select enroll,SYSTEM_P from Attendance");
    tu=rt.executeQuery("select SYS from total_atten");
    
} 
else if(subj.equals("OS"))
{
    rs = st.executeQuery("select enroll,OS from Attendance");
    tu=rt.executeQuery("select OS from total_atten");
    } 
else 
{
    rs = st.executeQuery("select enroll,WEB from Attendance");
    tu=rt.executeQuery("select WEB from total_atten");
    
}

tu.next();
 %>
 <div align="center"><table border="4"> 
        <caption><%=subj%></caption>
                <tr>
                <th>name</th>
                <th>attendance</th>
                        
                   <th>total</th>
                   </tr>
<% 
while(rs.next())  { %>    

                   <tr> <td><%=rs.getString(1)%>
                       </td><td><%=rs.getString(2)%>
                       </td><td><%=tu.getString(1)%> </td>
                   </tr>
   <%
        }
%>
 </table>
</div>

    </body>
</html>


