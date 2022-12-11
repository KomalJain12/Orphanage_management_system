  
    <jsp:include page="html/header.html"/>
<%@ include file="topbar.jsp" %>
<jsp:include page="sidebar.jsp"/>
  <%@ page import="java.sql.*" %>
    
    <div class="content-page">
                <div class="content">
                      <!-- Start Content-->
                    <div class="container-fluid">
                    <div class="row">
                    <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row justify-content-between">
                                            <div class="col-md-4">
                                                <div class="mt-3 mt-md-0">
                                                   <h3>User Queries</h3>
                                                </div>
                                            </div><!-- end col-->
                                            
                                        </div> <!-- end row -->
                                    </div>
                                </div> <!-- end card -->
                            </div><!-- end col-->
                        </div>
                    <%
                                       try
{
       
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb","root","");
        String sql = "select * from contact_us ;";
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
        
<div class="col-sm-6">
                                <div class="card card-body">
                                <form method="post" action="#">
                                    <h4 class="card-title">Subject: <%= rs.getString("subject") %></h4>
                                    Email : <%= rs.getString("email") %><br><cite title="Source Title"><%= rs.getString("name") %></cite>
                                            <br><br>
                                    <p class="card-text">Description: <%= rs.getString("message") %></p>
                                    <p class="card-text">Name: <%= rs.getString("name") %></p>
                                    <p class="card-text">Email: <%= rs.getString("email") %></p>
                                    <div class="row">
                                    <a href="https://mail.google.com/mail/u/0/?tab=qm#inbox?compose=new">Reply on Email</a>
                                    <br><br>
                                    </div>
                                    </form>
                                </div>
                            </div>
                            <% }while(rs.next());
                                                }
                                                }
                                                catch(Exception e)
                                                {
                                                	//System.out.print(e.getMessage());
                                                	e.getStackTrace();
                                                } %>
                            </div>
                      </div>
             </div>
              
<jsp:include page="html/footer.html"/>
