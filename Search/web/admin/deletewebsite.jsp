<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="models.user" %>
<%@page import="models.varwere" %>
<% 
String id=request.getParameter("id");
varwere varw=new varwere();
String r=varw.deleteWebsite(id);
response.setStatus(200);
response.sendRedirect("websites.jsp?r="+r);
%>