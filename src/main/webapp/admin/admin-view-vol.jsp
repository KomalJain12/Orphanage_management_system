   
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
                                        <h2 class="">Donation Table</h2>
                                        
    
                                       <div class="table-responsive">
                                        <%
                                       try
{
       
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb","root","");
        String sql = "select * from donation_master d, user_details u where d.email=u.email ;";
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
                                                 
                                                    <th>User Name</th>
                                                    <th>Email ID</th>
                                                    <th>Contact No</th>
                                                     <th>Amount</th>
                                                    
                                                    <th>On Behalf</th>
                                                    <th>Payment Slip</th>
                                                    <th>City</th>
                                                    <th>Status</th>
                                                   
                                                </tr>
                                                </thead>
                                                <tbody>
                                                 <%
            do
            { %>
                                                <tr>
                                                    
                                                    <td><%= rs.getString("uname")%></td>
                                                    <td><%= rs.getString("email")%></td>
                                                    <td><%= rs.getString("phone")%></td>
                                                    <td><%= rs.getString("amount")%></td>
                                                    <td><%= rs.getString("onbehalf")%></td>
                                                    <td><img src="../getOrphansImage?image=<%= rs.getString("image") %>"  alt="profile-image" width="80" height="60"></td>
                                                    <td><%= rs.getString("city")%></td>
                                                    <td>
                                                    <% 
                                                    if(rs.getInt(8) == 1)
                                                    	out.println("Confirmed");
                                                    else{
                                                    
                                                   	if(rs.getInt(8) == 0)
                                                   		{ %>
                                                    <form action="../donation_approveServlet" method="POST">
														<input type="hidden" name="id" value="<%= rs.getString("donate_id") %>">
														<button type="submit">Confirm</button>
													</form>
													<% }} %>
													
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