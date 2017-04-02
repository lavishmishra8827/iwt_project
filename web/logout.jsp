<% HttpSession mysession=request.getSession();
mysession.invalidate();
response.sendRedirect("Login1.html");
%>