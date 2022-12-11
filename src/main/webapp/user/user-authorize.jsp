<%@ page language="java" %>

<%@ page import="java.sql.*" %>
<% 

String global_email = "";
String global_pass = "";
String global_name = "";
boolean logged_in = false;

try 
	{
			
		if(session.getAttribute("token") != null) 
		{
			
			String token = (String)session.getAttribute("token");
			String[] token_split = token.split(":");
			global_email = token_split[0];
			global_pass = token_split[1];
			global_name = token_split[2];
			logged_in = true;
			
		} else 
		{
			//response.sendRedirect("index.jsp");
		}
		
	}
	catch(Exception err) {
		//response.sendRedirect("index.jsp");
	}

%>