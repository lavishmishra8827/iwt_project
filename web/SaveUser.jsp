
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    //String verify="";
    String userid=request.getParameter("user_id");
    String password=request.getParameter("pass_word") ;
    String username=request.getParameter("user_name") ;
     String city=request.getParameter("city") ;
     String phone1=request.getParameter("phone_no") ;
     String email=request.getParameter("email") ;
    // int phone=Integer.parseInt(phone1);
    out.println(userid+password+username); 
    try{
     Class.forName("com.mysql.jdbc.Driver");
    
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web", "root", "");
		String query="insert into student_profile values( ?,?,?,?,?,? )";
     PreparedStatement stmt=con.prepareStatement(query);
     stmt.setString(1,userid);stmt.setString(2,username);stmt.setString(3,password);stmt.setString(4,city);stmt.setString(5,phone1);stmt.setString(6,email);
     
     //String query2="select code from code ";
     //Statement stmt3=con.createStatement();
     //ResultSet rs4=stmt3.executeQuery(query2);
     //int codeing=rs4.getInt(1);
     
     //verify="http://localhost:8084/CollegePredictor/EmailVerify.jsp?res="+userid;
     stmt.executeUpdate();
        
     
     
   /*  try{    
            Properties pr=new Properties();
            pr.put("mail.smtp.host","smtp.gmail.com");
            pr.put("mail.smtp.socketFactory.port","465");
            pr.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
            pr.put("mail.smtp.auth","true");
            pr.put("mail.smtp.port","465");
             System.out.println("message send");
               
            Session session2=Session.getInstance(pr,
                    new javax.mail.Authenticator(){
                    protected PasswordAuthentication getPasswordAuthentication (){
                        return new PasswordAuthentication("mlcollegepredictor@gmail.com","collegeselector");
                    }
                    }
            );
            
            
                Message message=new MimeMessage(session2);
                message.setFrom(new InternetAddress("mlcollegepredictor@gmail.com"));
                message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
                message.setSubject("Registration complete");
                
                String body="Congratulations you have been successfully registered at our website\n\n";
                body=body+"Your userid is:"+userid+"\n\n";
                body=body+"Verify Your email by clicking "+verify+"";
                body=body+"\n\n";
                
                body=body+"Please contact us for further Details..\n\n";
                body=body+"Thankyou\n\n";
                body=body+"http://collegepredictor.jelastic.servint.net/";
                body=body+"\n\n";
                
                message.setText(body);
                Transport.send(message);
                System.out.println("message send");
                //Session
                
                
                out.println("Succesfully Registered");
                    out.println("Go To login Page-->>"+"<a href='Login.jsp'>Login</a>");
                
                
            }catch(Exception e){
               out.println("error"+e);
            }
     
     
// stmt.executeUpdate("insert into users values(userid+","+username+","+password+","+city+","+phone +","+ email) ");
    
      //  stmt.executeUpdate(;
        
        
     }
     catch(Exception e){out.println(e);}*/


     }catch(Exception e){
         out.println(e);
     }
        





%>
<html>
    <script type="text/javscript" >
            alert("Registerd");
            
        
        </script>
</html>>

