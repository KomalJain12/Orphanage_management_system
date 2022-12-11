<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<div class="content-page">
	<div class="content">
		<!-- Start Content-->
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-34">
					<div class="card">
						<div class="card-body">
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr>
<td><b>vname</b></td>
<td><b>email-id</b></td>
<td><b>Phone</b></td>
<td><b>city</b></td>
<td><b>status</b></td>
</tr>
<%
try{ 
	Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb", "root","");
Statement stmt=con.createStatement();
String id = request.getParameter("email");
String sql ="SELECT * FROM volunteer_details";

ResultSet resul = stmt.executeQuery(sql);
while(resul.next()){
%>
<tr>

<td><%=resul.getString("vname") %></td>
<td><%=resul.getString("email") %></td>
<td><%=resul.getString("phone") %></td>
<td><%=resul.getString("city") %></td>
<td><% if(resul.getInt("status")== 1)
	out.println("approved");
else
	%>
		 <form action="approveServlet" method="POST">
			<input type="hidden" value="<%= resul.getString("email") %>">
			<button type="submit">approve</button>
		</form>
<% 

%>
</td>
</tr>

<% 
}

} 
catch (Exception e) 
{
e.printStackTrace();
}
%>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
