<%-- 
    Document   : ChangePassword
    Created on : 9 Apr, 2017, 5:38:06 PM
    Author     : Mayank Goyal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script type="text/javascript">
            function Validate() {
                var password = document.getElementById("pass_word").value;
                var confirmPassword = document.getElementById("cpass_word").value;
                /*idvalidation = document.getElementById("txtHint");
                 document.getElementById("txtHint").innerHTML=idvalidation;
                 */
                var len = password.length;
                if(len<=6){
                    document.getElementById("pwderror").innerHTML = "password less thgan 6 characters";
                }
                
                else if (password != confirmPassword) {
                    document.getElementById("pwderror").innerHTML = "password donot match";
                    //alert("Passwords do not match.");
                    return false;
                }
                if (password == confirmPassword)
                {
                    document.getElementById("pwderror").innerHTML = "";
                    //alert("Passwords do not match.");
                    return true;
                } else if (idvalidation == "Id already Exists")
                {

                    alert("Write valid id ");
                    return false;
                } else
                    return true;
            }
            
            </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="UpdatePassword.jsp" method="post">
            Current Password:<input type="password" name="password" id="password">
            <br><br>
        New Password:<input id="pass_word" type="password" class="input_field" placeholder="" required name="pass_word"  onblur="Validate();" >
            <br><br>
        Confirm Password:<input id="cpass_word" type="password" class="input_field" placeholder="" required name="confirmpassword"   onblur="Validate();">
            <br><br>

             <p id="pwderror"></p>
<br><br>
            <input type="submit" value="Update">            
            
        
        </form>
        
        
    </body>
</html>
