<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<html>
<%
    int i=1;
    int marks=0;
   try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web", "root", "");
     String query="select ans from quiz4";
     Statement stmt=con.createStatement();
     ResultSet rs=stmt.executeQuery(query);
        
     while(rs.next()){
         
         String answ;
         String s=request.getParameter("mcq"+i);
            
         
     //    out.println("s:"+s);
         String a=rs.getString(1);
   //      out.println("a:"+a);
         
            if(s==null)
            {}//  out.println("QUestion escaped");
            
           else {
         if(s.equals("1"))
            answ="A";
         else if(s.equals("2"))
            answ="B";
         else if(s.equals("1"))
            answ="C";
         else
            answ="D";
         
         
         if(answ.equalsIgnoreCase(a)){
              marks=marks+3;}
         else{
                marks--;}
            }
     i++;
     
     }
     
       // out.println("MArks:"+marks);
    }
    catch(Exception e){
        out.println(e);
        
    }
    
          

%>
<body>  
          <div  id="div1" style="background:#33ffff">
              <ul type="none">
                  <li style="float: right ;padding-left:15px; font-size: 20px; "><a style="text-decoration: none" href="logout.jsp">Logout</a></li>
                
                  <li style="float: right; font-size: 20px;"><a style="text-decoration: none" href="index.jsp">Home</a></li>
                    
                    <h1 align="center">Quiz performance</h1>
                
                    
              
              </ul>
           </div>   
      
<h1>Your Score for this attempt is <%=marks%></h1>
</body>
</html>