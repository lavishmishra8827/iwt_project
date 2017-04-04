




<html>  
      <head>  
           <title>Dynamically Add or Remove input fields in PHP with JQuery</title>  
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
      </head>  
      <body>  
           <div class="container">  
                <br />   
                <br />  
                <h2 align="center">Dynamically Add or Remove input fields in PHP with JQuery</h2>  
                <div class="form-group">  
                     <form  action="Upload_quiz.jsp" name="add_name" id="add_name" method="post" >  
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
   