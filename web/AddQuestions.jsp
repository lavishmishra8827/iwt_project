<%-- 
    Document   : AddQuestions
    Created on : 24 Oct, 2016, 8:38:50 PM
    Author     : karishma
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       
       
        
        
        <style>
div.container {
    width: 100%;
    border: 1px solid gray;
}

header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}

nav {
    float: left;
    max-width: 160px;
    margin: 0;
    padding: 1em;
}

nav ul {
    list-style-type: none;
    padding: 0;
}
			
nav ul a {
    text-decoration: none;
}

article {
    margin-left: 170px;
    border-left: 1px solid gray;
    padding: 1em;
    overflow: hidden;
}
</style>
</head>
<body>
    <style>
div.container {
    width: 100%;
    border: 1px solid gray;
}

header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}

nav {
    float: left;
    max-width: 160px;
    margin: 0;
    padding: 1em;
}

nav ul {
    list-style-type: none;
    padding: 0;
}
			
nav ul a {
    text-decoration: none;
}

article {
    margin-left: 170px;
    border-left: 1px solid gray;
    padding: 1em;
    overflow: hidden;
}
</style>
</head>
<div class="container">
    <header>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <h1>ADD QUESTIONS</h1>
    </header>
    <body>
        <h2>Enter the Question,four Options,category and corresponding Answer</h2>
         
         <nav>
  <ul>
        <form action="AddQuestions" method="POST">
            <pre>
           
        <input type="text" name="ques" placeholder="Your Question!" size=100 style ="height:200px;" length onfocus="true" onselect="true" required />
        <br>
         <input type="text" name="a" placeholder="Option a" size=100  length onfocus="true" onselect="true" required />   
        <br>
         <input type="text" name="b" placeholder="Option b" size=100  length onfocus="true" onselect="true" required />
        <br>
         <input type="text" name="c" placeholder="Option c" size=100  length onfocus="true" onselect="true" required />   
        <br>
         <input type="text" name="d" placeholder="Option d" size=100  length onfocus="true" onselect="true" required />
        <br>
         <input type="text" name="category" placeholder="Category" size=100  length onfocus="true" onselect="true" required />   
        <br>
         Answer       <select name="ans">
                <option>a</option>
                <option>b</option>
                <option>c</option>
                <option>d</option>
                </select>
                <br>
        <input type="submit" value="ADD" name="submit" />
        <pre>
                
        </form>
        </ul>
</nav>
<footer><a href="AdminHome.jsp"><h4>Home</h4></a>
 Copyright Â© enKaRta.com
</footer>
    </body>
</html>
