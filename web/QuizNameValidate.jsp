<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%  
Connection con; 
ResultSet rs;

Statement stmt;
StringBuffer sb=new StringBuffer () ;

    try{
                String s=request.getParameter("q");
                
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web", "root", "");
                String query1="select q_name from quizes where q_name ='"+s+"'   ";
                stmt=con.createStatement();
                rs=stmt.executeQuery(query1);
                
                
                   //JSONArray jsonar=new JSONArray();
                  // JSONObject jr=new JSONObject();
                   
                   
                
                   
              
                
                if(rs.next()){
                    out.print("Id already Exists");
    
                }
                
                //out.println(jsonar.toString());
                else
                    
                out.print(" Id avaiable ");
    }
    catch(Exception e){
            out.println(e);
            }
       
%>