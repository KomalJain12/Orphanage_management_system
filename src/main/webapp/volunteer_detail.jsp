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
                            <h1 class="breadmome-name">Volunteer</h1>
		                    <ul>
		                        <li><a href="index.jsp">Home</a></li>
		                        <li class="active">Volunteer</li>
		                    </ul>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!--Breadcrumb Area End-->
		<!--Volunteer Area Start-->
		<div class="volunteer-area pt-100 pb-100">
		    <div class="container">
		        <div class="row">
		            <%
                                       try
{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb","root","");
        String sql = "select * from volunteer_details where status=1;";
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
		            <div class="col-md-6 col-lg-4 col-12">
		                <!--Single Volunteer Start-->
		                <div class="single-volunteer mb-30">
		                    <div class="volunteer-img img-full">
		                        <img src="getBlogimage?image=<%= rs.getString("image") %>"  alt="profile-image" width="150" height="150"></a>
		                    </div>
		                    <div class="volunteer-content">
		                        <h3 class="member-name"><a href="volunteer-details.html"><%= rs.getString("vname") %></a></h3>
		                        <p class="designation"></p>
		                        <ul>
		                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
		                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
		                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
		                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
		                        </ul>
		                    </div>
		                </div>
		                <!--Single Volunteer End-->
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
		        </div>
		    </div>
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
		</div>
		
		<!--Volunteer Area End-->
		
		<jsp:include page="user/footer.html"/>