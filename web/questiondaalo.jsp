




<html>  
      <head>  
          <style>
              #div1{
                 position:absolute;
                 
                 width:100%;   
                 height:100px; 
                    align-content:center;  
              }   
          </style>
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
      <script>
          
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
                    xmlhttp.open("GET", "QuizNameValidate.jsp?q=" + str, true);
                    xmlhttp.send();
                }
            }

          
          
          </script>
      
      </head>  
      <body>  
          <div  id="div1" style="background:#33ffff">
              <ul type="none">
                  <li style="float: right ;padding-left:15px; font-size: 20px; ">Logout</li>
                
                  <li style="float: right; font-size: 20px;">Home</li>
                    
                    <h1 align="center">Setup the quiz questions</h1>
                
                    
              
              </ul>
           </div>   
          <br><br><br><br>
          <div class="container" style="background: #D5DBDB">  
                <br />   
                <br />  
                
                <div class="form-group">  
                     <form  action="Upload_quiz.jsp" name="add_name" id="add_name" method="post" >  
                         <center>  <input type="text" name="quiz_name" placeholder="enter the name of quiz" onkeyup="showHint(this.value)"></center>
                             <div id="txtHint" ></div>
                         <br>
                         <div class="table-responsive">  
                               <div class="table table-bordered" id="dynamic_field">  
                                     
                                        <textarea rows="2" cols="70" name="name[]" placeholder="Enter your Name" class="form-control name_list" ></textarea>  
                                        <input type="text" name="mcq[]" size="100"><br>
                                        <input type="text" name="mcq[]" size="100"><br>
                                        <input type="text" name="mcq[]" size="100"><br>
                                        <input type="text" name="mcq[]" size="100" ><br>
                                        
                                        <select name="ans[]"><option value="A">A</option><option value="B">B</option><option value="C">C</option><option value="D">D</option></select>
                                        <br><br>
                                        
                                        
                                        <button type="button" name="add" id="add" class="btn btn-success" >Add More</button>  
                                         
                               </div>  
                               <input type="submit" name="submit" id="submit" class="btn btn-info" value="Submit" />  
                          </div>  
                     </form>  
                </div>  
           </div>  
      </body>  
 </html>  
 <script>  
 $(document).ready(function(){  
      var i=1;  
      $('#add').click(function(){  
           i++;  
           $('#dynamic_field').append('<div id="row'+i+'"><textarea rows="2" cols="70" name="name[]" placeholder="Enter your Name" class="form-control name_list" ></textarea>   <input type="text" name="mcq[]" size="100"> <br><input type="text" name="mcq[]" size="100"> <br><input type="text" name="mcq[]" size="100"><br> <input type="text" name="mcq[]" size="100"><br>   <select name="ans[]"><option value="A">A</option><option value="B">B</option><option value="C">C</option><option value="D">D</option></select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <button type="button" name="remove" id="'+i+'" class="btn_remove" align="center">RemoveX</button></div><br>');  
      });  
      $(document).on('click', '.btn_remove', function(){  
           var button_id = $(this).attr("id");   
           $('#row'+button_id+'').remove();  
      });  
        
 });  
 </script>
   