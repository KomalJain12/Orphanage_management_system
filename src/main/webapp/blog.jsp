<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="user/header.jsp" %>
<%@ include file="user/topbar.jsp" %>

<!--Breadcrumb Area Start-->
		<div class="breadcrumb-area">
		    <div class="container">
		        <div class="row">
		            <div class="col-12">
		                <div class="breadcrumb-content text-center">
                            <h1 class="breadmome-name">Blog</h1>
		                    <ul>
		                        <li><a href="index.jsp">Home</a></li>
		                        <li class="active">Blog</li>
		                    </ul>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!--Breadcrumb Area End-->
		<!--Blog Area Start-->
		<div class="blog-area pt-100 pb-100">
		    <div class="container">
		        <div class="row">
		        
		        <%
                                       try
{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb","root","");
        String sql = "select * from blog_master b,volunteer_details v where b.email=v.email and b.status=1;";
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
		            <!--Single Blog Start-->
		            <div class="col-lg-6 col-xl-3 col-md-6">
		                <div class="single-blog mb-30">
                            <div class="blog-img img-full">
                                <a href="singleblog.jsp?bid=<%= rs.getString("blog_id") %>">
                                <img src="getBlogimage?image=<%= rs.getString("image") %>"  alt="profile-image" width="150" height="150"></a>
                            </div>
                            <div class="blog-content">
                                <ul class="meta">
                                    <li>By <a href="#"><%= rs.getString("vname") %></a></li>
                                    <li><%= rs.getString("date") %></li>
                                </ul>
                                <h4 class="title"><a href="singleblog.jsp?bid=<%= rs.getString("blog_title") %>"></a></h4>
                                <a href="singleblog.jsp?bid=<%= rs.getString("blog_id") %>">Continue Reading</a>
                            </div>
                        </div>
		            </div>
		             <%
		            }while(rs.next());
                                                }
                                                }
                                                catch(Exception e)
                                                {
                                                	//System.out.print(e.getMessage());
                                                	e.getStackTrace();
                                                } %>
		            <!--Single Blog End-->
		            </div>
		        <div class="row">
		            <div class="col-12">
		                <!--Pagination Start-->
		                <div class="product-pagination">
                            <ul>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
                            </ul>
                        </div>
		                <!--Pagination End-->
		            </div>
		        </div>
		    </div>
		</div>

<jsp:include page="user/footer.html"/>