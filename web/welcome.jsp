<%-- 
    Document   : welcome
    Created on : 27-Mar-2017, 01:09:31
    Author     : parth
--%>

<%@page import="com.mysql.jdbc.log.Log"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <% String s= request.getParameter("name");
            out.println(s);
           // request.setAttribute()
               %>
<html>
    <head>
        <script type="text/javascript">
    
    window.onload = function(){//window.addEventListener('load',function(){...}); (for Netscape) and window.attachEvent('onload',function(){...}); (for IE and Opera) also work
           
        
        var y="<%=s%>";
        alert("file with reference"+y+"is updated");
        window.location="teacher_console.jsp";
}
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
              
        <% //request.getRequestDispatcher("teacher_console.jsp").forward(request, response);%>
    </body>
</html>
