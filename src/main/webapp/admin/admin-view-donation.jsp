   
<jsp:include page="html/header.html"/>
<%@ include file="topbar.jsp" %>
<jsp:include page="sidebar.jsp"/>
  <%@ page import="java.sql.*" %>

          <div class="content-page">
                <div class="content">
                      <!-- Start Content-->
                    <div class="container-fluid">
                        <div class="row">
                            
                            <div class="col-lg-34">
                                <div class="card">
                                    <div class="card-body">
                                        <!-- <div class="dropdown float-end">
                                            <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-end">
                                                item
                                                <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                                item
                                                <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                                item
                                                <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                                item
                                                <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                            </div>
                                        </div> -->
                                        <h2 class="">List of all volunteers</h2>
                                        <p class="text-muted font-14 mb-3">
                                            View volunteers table all the details are here..
                                        </p>
    
                                       <div class="table-responsive">
                                        <%
                                       try
{
       
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb","root","");
        String sql = "select * from volunteer_details ;";
        PreparedStatement stmt = con.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        if(rs.next()==false)
        {
            out.println("No Records in the table");
        }
        else
        {%>
        
                                            <table class="table table-striped mb-0">
                                                <thead>
                                                <tr>
                                                 
                                                    <th>Name</th>
                                                    <th>Email ID</th>
                                                    <th>Contact No</th>
                                                     <th>Age</th>
                                                    
                                                    <th>City</th>
                                                    <th>Profile</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                 <%
            do
            { %>
                                                <tr>
                                                    
                                                    <td><%= rs.getString(1)%></td>
                                                    <td><%= rs.getString(2)%></td>
                                                    <td><%= rs.getString(3)%></td>
                                                    <td><%= rs.getString(7)%></td>
                                                    <td><%= rs.getString(6)%></td>
                                                    <td><img src="../getBlogimage?image=<%= rs.getString("image") %>"  alt="profile-image" width="80" height="60"></td>
                                                    <td>
                                                    <% 
                                                    if(rs.getInt(12) == 0)
                                                    	out.println("Pending");
                                                    else if(rs.getInt(12) == 1)
                                                    	out.println("Approved");
                                                    else if(rs.getInt(12) == 2)
                                                    	out.println("Rejected");
                                                    
                                                    %>
                                                    </td>
                                                   	<td>
                                                   	<% if(rs.getInt(12) == 2)
                                                   		{ %>
                                                    <form action="../approveServlet" method="POST">
														<input type="hidden" name="email" value="<%= rs.getString("email") %>">
														<button type="submit">Approve</button>
													</form>
													<% } %>
													<%  if(rs.getInt(12) == 1)
														{ %>
													    <form action="../rejectServlet" method="POST">
														<input type="hidden" name="email" value="<%= rs.getString("email") %>">
														<button type="submit">Reject</button>
													</form>
													<% } %>
													<%  if(rs.getInt(12) == 0)
														{ %>
													    <form  method="POST">
													    <input type="hidden" name="email" value="<%= rs.getString("email") %>">
														<button type="submit" formaction="../approveServlet">Accept</button>
														<input type="hidden" name="email" value="<%= rs.getString("email") %>">
														<button type="submit" formaction="../rejectServlet">Reject</button>
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
    
                                </div>
                               
                            </div>
                        </div>
                        <!--- end row -->
                        
                    </div> <!-- container-fluid -->
                </div> <!-- content -->
                               
                           
 <jsp:include page="html/footer.html"/>