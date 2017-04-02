<%-- 
    Document   : index
    Created on : 11-Feb-2017, 18:03:45
    Author     : parth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
               background-color: #ffffff; 
               background-image: url('simple.jpg');
               background-repeat: no-repeat;
               background-size: cover;
              }
            li a:hover{
                background: darkseagreen;
            } 
            li a:hover:active{
                background: yellow;
            }
            #Button{
             text-align:  center ;
            }
			.button-secondary {
                         background-color: #4CAF50; /* Green */
                         border:activeborder;
                         color: white;
                         padding: 15px 32px;
                         text-align: center;
                         text-decoration: none;
                         font-size: 16px;
                         font-family: sans-serif;
			}
            #header1{
             text-align: center;
             color: #07090a;
                
            }
            
            #side{
                background-color: #D5DBDB; 
                width: 20%;
                height:80%;
                float: left;
                
            }
			
                            ul{
				text-decoration-color: #000000;
				float:right;
				height:30px;
                                width:99%;
                                padding:0;
                                margin-top:0;
				top:0;
                                position:absolute;
				
				
		              }
			
            
           li{
            float:right;
            padding-left: 16px;

           }
         

		
            </style>
        <title>Assignment</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        </head>
    <body>
        
		<div><ul><li ><a style="color: white" href=# >Contact us</a></li>
		                 <li ><a style="color: white" href=#> About</a></li>
		                 <li ><a style="color: white" href=#>Home</a></li>
                         </ul>
      </div>
        <div>
            <br> 
         <h1 id="header1">DEPARTMENT OF COMPUTER SCIENCE</h1></br> </div>
        
        <div style="text-align: center ;padding-top: 10px;"><img style="background-color:#D5DBDB;"  src="logo.png"></div>
        <div ><h2 id="header1" style="padding-left: 0px">Log in to explore more</h2>
         </div>
        <br>
        <div style="text-align: center"><a  href="teacher_console.jsp" class="button-secondary">I'm a Teacher</a></div>
        <br></br>
    
        <div style="text-align: center"><a  href="Login1.html" class="button-secondary">I'm a Student</a></div>
        </body>
</html>
