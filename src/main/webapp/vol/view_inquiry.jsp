<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="header.html" />
<%@ include file="sidebar.jsp" %>

<div id="wrapper">
<div class="main-content">
    <div class="col-12">
    <%
                                       try
{
       
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb","root","");
        String sql = "select * from inquiry_master i,user_details u where i.email=u.email ;";
        PreparedStatement stmt = con.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        if(rs.next()==false)
        {
            out.println("No Records in the table");
        }
        else
        {%>
				<div class="box-content">
					<h4 class="box-title">Responsive tables</h4>
					<!-- /.box-title -->
					
					<!-- /.dropdown js__dropdown -->
					<div class="table-responsive">
						
						<table class="table table-bordered">
							<thead> 
								<tr> 
									<th>Name</th> 
									<th>Email</th> 
									<th>Subject</th> 
									<th>Message</th>
									<th>ID Proof</th> 
									<th>Status</th>
									<th>Action</th> 
								</tr> 
							</thead> 
							<tbody> 
							<%
            do
            { %>
                                                <tr>
                                                    
                                                    <td><%= rs.getString("uname")%></td>
                                                    <td><%= rs.getString("email")%></td>
                                                    <td><%= rs.getString("subject")%></td>
                                                    <td><%= rs.getString("message")%></td>
                                                    <td><img src="../getInquiryimage?image=<%= rs.getString("image") %>"  alt="profile-image" width="80" height="60"></td>
                                                    <td>
                                                    <% 
                                                    if(rs.getInt(6) == 0)
                                                    	out.println("Pending");
                                                    else if(rs.getInt(6) == 1)
                                                    	out.println("Approved");
                                                    else if(rs.getInt(6) == 2)
                                                    	out.println("Rejected");
                                                    
                                                    %>
                                                    </td>
                                                   	<td>
                                                   	<% if(rs.getInt(6) == 2)
                                                   		{ %>
                                                    <form action="../inquiry_approveServlet" method="POST">
														<input type="hidden" name="id" value="<%= rs.getString("inq_id") %>">
														<button type="submit">Approve</button>
													</form>
													<% } %>
													<%  if(rs.getInt(6) == 1)
														{ %>
													    <form action="../inquiry_rejectServlet" method="POST">
														<input type="hidden" name="id" value="<%= rs.getString("inq_id") %>">
														<button type="submit">Reject</button>
													</form>
													<% } %>
													<%  if(rs.getInt(6) == 0)
														{ %>
													    <form  method="POST">
													    <input type="hidden" name="id" value="<%= rs.getString("inq_id") %>">
														<button type="submit" formaction="../inquiry_approveServlet">Accept</button>
														<input type="hidden" name="id" value="<%= rs.getString("inq_id") %>">
														<button type="submit" formaction="../inquiry_rejectServlet">Reject</button>
													</form>
													<% } %>
													</td>
                                              </tr>
                                                <% } while(rs.next());
                                                }
                                                }
                                                catch(Exception e)
                                                {
                                                	//System.out.print(e.getMessage());
                                                	e.getStackTrace();
                                                } %>
                                             
							</tbody> 
						</table>
					</div>
				</div>
				<!-- /.box-content -->
			</div>
			</div>
			</div>

<jsp:include page="footer.html" />			