   
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
                                        <h2 class="">Verfiy Feedback on Blog</h2>
                                        
    
                                       <div class="table-responsive">
                                        <%
                                       try
{
       
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb","root","");
        String sql = "select * from feedback_master f, blog_master b where f.blog_id=b.blog_id ;";
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
                                                 
                                                    <th>Blog Name</th>
                                                    <th>Feedbacker's Name</th>
                                                    <th>Email</th>
                                                    <th>Message</th>
                                                    <th>Status</th>
                                                   
                                                  
                                                </tr>
                                                </thead>
                                                <tbody>
                                                 <%
            do
            { %>
                                                <tr>
                                                    
                                                    <td><%= rs.getString("blog_title")%></td>
                                                    <td><%= rs.getString("fname")%></td>
                                                    <td><%= rs.getString("femail")%></td>
                                                    <td><textarea disabled><%= rs.getString("message")%></textarea></td>
                                                    <td>
                                                    <% 
                                                    if(rs.getInt(6) == 1)
                                                    	out.println("Approved");
                                                    
                                                    else
                                                    {
                                                    %>
                                                    <form action="../admin_approve_feedback" method="POST">
														<input type="hidden" name="fid" value="<%= rs.getString("fid") %>">
														<button type="submit">Approve</button>
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