<% HttpSession mysession=request.getSession();
mysession.invalidate();
response.sendRedirect("index.jsp");
%>