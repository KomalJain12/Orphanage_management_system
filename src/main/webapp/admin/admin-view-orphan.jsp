<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="html/header.html"/>
<jsp:include page="topbar.jsp"/>
<jsp:include page="sidebar.jsp"/>
<%@ page import="java.sql.*" %>
    <div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row justify-content-between">
                                            <div class="col-md-4">
                                                <div class="mt-3 mt-md-0">
                                                   <h3>View Orphan's Details</h3>
                                                </div>
                                            </div><!-- end col-->
                                            
                                        </div> <!-- end row -->
                                    </div>
                                </div> <!-- end card -->
                            </div><!-- end col-->
                        </div>
                        <!-- end row -->        
                        <div class="row">
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
        
                         <% 
                                        do
                                        	{ %>   
                                <div class="col-xl-3">
                                <div class="card">
                                    <div class="text-center card-body">
                                        
                                        <div>
                                        
                                            <img src="../getOrphansImage?image=<%= rs.getString("image") %>"  alt="profile-image" width="150" height="150">
                                            <div class="text-start"><br>
                                            
                                                <p class="text-muted font-13"><strong>ID </strong> <span class="ms-2">#<%= rs.getInt(1) %></span></p>
                                                <p class="text-muted font-13"><strong>Name :</strong><span class="ms-2"><%= rs.getString(2) %>"</span></p>
                                                <p class="text-muted font-13"><strong>Age : </strong> <span class="ms-2">Rs.<%= rs.getString(3) %></span></p>
                                                <p class="text-muted font-13"><strong>Gender : </strong> <span class="ms-2">Rs.<%= rs.getString(4) %></span></p>
                                                <p class="text-muted font-13"><strong>Medical Status :</strong> <span class="ms-2"><%= rs.getString(5) %></span> Units</p>
                                                <p class="text-muted font-13 "><strong>Place Found :</strong><span class="ms-2"><%= rs.getString(6) %></span></p>
                                                <p class="text-muted font-13 "><strong>Description</strong><span class="ms-2"><%= rs.getString(7) %></span></p>
                                            </div>
    
                                        </div>
                                    </div>
                                </div>
                                

                            </div> <!-- end col card main -->
<% }while(rs.next());
                                                }
                                                }
                                                catch(Exception e)
                                                {
                                                	//System.out.print(e.getMessage());
                                                	e.getStackTrace();
                                                } %>
                            
                        </div>
                        <!-- end row -->   
                        
                    </div> <!-- container -->

                </div> <!-- content -->

               
           
<jsp:include page="html/footer.html"/>