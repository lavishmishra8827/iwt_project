<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<html>
    <head><style>
            body{
               background-color: #ffffff; 
              
               background-origin: content-box;
               background-size: 50px 60px;
               background-repeat: no-repeat;
               background-size: cover;
              }
        </style>
    </head>
<body>
<div style="text-align: left">
<form action="SeeQuiz.jsp" method="get">
    

<%
String q_name=request.getParameter("quizname");
   //   out.print(q_name);  
   
try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web", "root", "");
     String query="select * from "+q_name;
     Statement stmt=con.createStatement();
     ResultSet rs=stmt.executeQuery(query);
     
     //boolean check=rs.next();
     int i=1;
     while(rs.next()){
         int j=1;
                        
         String  ans[]=new String[4];
                 ans[0]=rs.getString(3);
                 ans[1]=rs.getString(4);
                 ans[2]=rs.getString(5);
                ans[3]=rs.getString(6);
                    
%><h2>Question <%=rs.getInt(1)+1%>&nbsp; <%=rs.getString(2)%></h2><br>
            <%
                for(String s:ans){
                 
                        if(s.equals("")){
                        }
                        else
                        {
                            %><input type="radio" name="<%="mcq"+i%>" value="<%=j%>" ><%=s%><br>
             <%
                        j++;}
                }    
                        
                
                    
                i++;
            
             
}                            
     


     
     
     
}catch(Exception e){
    out.println(e);
}


%>
<input type="submit" value="Submit">
</form>
</div>
</body>
</html>