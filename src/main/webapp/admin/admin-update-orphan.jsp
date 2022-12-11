    
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
                                        <h2 class="">Update Orphan's Details</h2>
                                        <p class="text-muted font-14 mb-3">
                                           List of detail of orphans
                                        </p>
    
                                       <div class="table-responsive">
                                        <%
                                       try
{
       
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb","root","");
        String sql = "select * from add_orphans ;";
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
                                                 
                                                    <th>Id</th>
                                                    <th>Name</th>
                                                    <th>Age</th>
                                                    <th>Gender</th>
                                                    <th>Medical Status</th>
                                                    <th>Place Found</th>
                                                    <th>Description</th>
                                                    <th>Update</th>
                                                    <th>Delete</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                 <%
            do
            { %>
                                                <tr>
                                                    <form  method="POST">
                                                    <td><%= rs.getInt(1)%></td>
                                                    <td><input type="text" name="name" value="<%= rs.getString(2) %>"></td>
                                                    <td><input type="text" name="age" value=<%= rs.getString(3)%>></td>
                                                    <td><input type="text" name="gender" value=<%= rs.getString(4)%>></td>
                                                    <td><input type="text" name="medical_status" value=<%= rs.getString(5)%>></td>
                                                    <td><input type="text" name="place_found" value=<%= rs.getString(6)%>></td>
                                                    <td><input type="text" name="details" value=<%= rs.getString(7)%>></td>
                                                    
                                                    <td>
                                                    <input type="hidden" name="orphan_id" value="<%= rs.getString(1) %>">
                                                    <input type="submit"  formaction="../admin_orphan_update" value="Update">
                                                    </td>
                                                    <input type="hidden" name="orphan_id" value="<%= rs.getString(1) %>">
                                                    <td><input type="submit" formaction="../admin_orphan_delete" value="Delete"></td>
                                                     </form>
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