<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login</title>




        <link rel="stylesheet" href="styler.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


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
            
            function Validate1(inputtxt)
            {
                var numbers = /^[0-9]+$/;
                if (inputtxt.value.match(numbers))
                {
                    /*alert('Your Registration number has accepted....');
                     document.form1.text1.focus();
                     return true;
                     */
                } else
                {
                    document.getElementById("phoneerror").innerHTML = "this is wrong no";
                    // alert('Please input numeric characters only');
                    document.form1.text1.focus();
                    return false;
                }
                if (inputtxt.value.length < 10)
                {
                    document.getElementById("pwderror").innerHTML = "length is very less";
                }
            }

            /* function Validate1()  {
             var str=document.getElementById("phoneno").value;
             /*for(var i=0;str[i]!='\0';i++)
             {
             if(!isdigit(str[i]))
             alert("hahahahah");
             }
             }*/
            if (!Number.isInteger(str))
            {
                alert("not an no");
            }
            al

            function showHint(str) {
                if (str.length == 0) {
                    document.getElementById("txtHint").innerHTML = "";
                    return;
                } else {
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.onreadystatechange = function () {
                        if (this.readyState == 4 && this.status == 200) {
                            document.getElementById("txtHint").innerHTML = this.responseText;
                        }
                    };
                    xmlhttp.open("GET", "idvalidate.jsp?q=" + str, true);
                    xmlhttp.send();
                }
            }



        </script>

    </head>

    <body>


        <div>
            <h1>Get <span style="color: red;">Yourself</span> Registered!!</h1>
        </div>
        
       <div id="main">
            <fieldset>
                
                <form action="SaveProduct" method="post" enctype="multipart/form-data" >


                    <div>
                        <br>
                        <input name="user_id" id="user_id" type="text" class="input_field" placeholder="userid" required   onkeyup="showHint(this.value)" >
                    </div>

                    <p  id="txtHint" name="txtHint" ></p>
                        <br>

                    <div>
                        <input id="pass_word" type="password" class="input_field" placeholder="Password" required name="pass_word"  onblur="Validate();" >
                    </div>
                    <br>
                    <div>

                        <input id="cpass_word" type="password" class="input_field" placeholder="confirm password" required name="confirmpassword"   onblur="Validate();">

                    </div>
                    <br>
                    <p id="pwderror"></p>

                    <div >

                        
                        <input id="user_name" type="text" class="input_field" placeholder="fullname" required name="user_name">
                    </div>
                    <br>
                    <div >

                        <input id="city" class="input_field" type="text"  placeholder="city" required name="city">
                    </div>
                     <br>


                    <div >

                        <input id="phone_no" type="text" class="input_field" placeholder="phone no" required name="phone_no"  onblur="Validate1(this);">
                    </div>
                    
                    
                        <p id="phoneerror"></p>

                    <div >
                       <br>
                        
                        <input id="email" type="email" class="input_field" placeholder="email address" required name="email" >
                    </div>
                        <br>
                      <div >
                        <input type="file" id="pp" name="pp" >
                    </div>

                    <div >
                        <input class="submit_b" type="submit" value="REGISTER" onclick="return Validate()" >
                    </div>
                        

                </form>
            </fieldset>
           <p style="color:white" class="text--center">Already have an account? <a href="Login.jsp" style="color:#ff0066"1>Sign in now</a> <span class="fontawesome-arrow-right"></span></p>

       </div>
    </body>





</body>
</html>
