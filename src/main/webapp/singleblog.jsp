<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="user/header.jsp" %>
<%@ include file="user/topbar.jsp" %>
<%@ page import="java.sql.*" %>
<%
	if(request.getParameter("res") != null) {
		%>
		<script>
			alert("Response is done.");
			window.location.href="index.jsp";
		</script>
		<%
	}
%>

<div class="breadcrumb-area">
		    <div class="container">
		        <div class="row">
		            <div class="col-12">
		                <div class="breadcrumb-content text-center">
                            <h1 class="breadmome-name">Single Blog</h1>
		                    <ul>
		                        <li><a href="index.jsp">Home</a></li>
		                        <li class="active">Single Blog</li>
		                    </ul>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
<div class="single-blog-area pt-100 pb-100">
		    <div class="container">
                <div class="row" >
                    <%
                                       try
{
       
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb","root","");
        String bbid=request.getParameter("bid");
        String sql = "select * from blog_master b,volunteer_details v where b.email=v.email and b.status=1 and b.blog_id="+bbid;
        PreparedStatement stmt = con.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        if(rs.next()==false)
        {
            out.println("No Records in the table");
        }
        else
        {%>
                   <!-- <div class="col-lg-9 order-1 order-lg-2"> -->
                        <div class="blog-wrapper blog-details">
                            <div class="blog-img img-full">
                                <img src="getBlogimage?image=<%= rs.getString("image") %>" alt="" height="450" width="20">
                            </div>
                            <div class="blog-content details-content">
                                <ul class="meta">
                                    <li>By <a href="#"><%= rs.getString("vname") %></a></li>
                                    <li><%= rs.getString("date") %></li>
                                </ul>
                                <h3 class="title"><%= rs.getString("blog_title") %></h3>
                                <p><%= rs.getString("detail") %></p>
                                <div class="row">
                                   <div class="col-md-6">
                                       <ul class="blog-post-list">
                                            <li> Astha boluptatum deleniti atque corrupti sdolores et quas molestias cepturi sint  eca itate non similique </li>
                                            <li> Astha boluptatum deleniti atque corrupti sdolores et quas cepturi sint  eca itate non similique </li>
                                            <li> Astha boluptatum deleniti atque corrupti sdolores et quas molestias cepturi sint  eca itate non similique </li>
                                        </ul>
                                   </div>
                                    <div class="col-md-6">
                                        <div class="blog-post-list-img img-full">
                                        </div>
                                    </div>
                                </div>
                                <blockquote class="mb-40">The first forty years of life give us the text; the next thirty supply the commentary on it.</blockquote>
                            </div>
                        </div>
                        
                        <div class="comment-list mt-60">
                            <h4 class="small-title">Comments</h4>
                            
                            <%
                                       try
{
       
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conne = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb","root","");
        String sqlms = "select * from feedback_master where blog_id="+bbid;
        PreparedStatement ptstmt = conne.prepareStatement(sqlms);
        ResultSet rslt = ptstmt.executeQuery();
        if(rslt.next()==false)
        {
            out.println("No Records in the table");
        }
        else
        {%>
        
                         <% 
                                        do
                                        	{ %> 
                            <div class="comment">
                                <div class="blog-author-img">
                                    <img src="user/img/author/user.png" alt="">
                                </div>
                                <div class="comment-content">
                                    <div class="comment-content-top">
                                        <h6><%= rslt.getString("fname") %></h6>
                                        
                                    </div>
                                    
                                    <div class="comment-content-bottom">
                                        <p><%= rslt.getString("message") %></p>
                                    </div>
                                </div>
                            </div>
                             <% 
		            }while(rslt.next());
                                                }
                                                }
                                                catch(Exception e)
                                                {
                                                	//System.out.print(e.getMessage());
                                                	e.getStackTrace();
                                                } %>
                            
                            
                        </div>
                        <div class="comment-box mt-60">
                            <h4 class="small-title">Leave a comment</h4>
                            <form action="FeedbackServlet" method="post">
                            <input name="blog_id"  value="<%= bbid %>" type="hidden">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="single-input">
                                            <input name="fname" placeholder="Name" type="text">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="single-input">
                                            <input name="femail" placeholder="Email" type="email">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-input">
                                            <textarea name="message" placeholder="Message" cols="30" rows="5"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-input">
                                            <button class="sent-btn" type="submit">SEND Now</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
		    </div>
		    <% 
                                                }
                                                }
                                                catch(Exception e)
                                                {
                                                	//System.out.print(e.getMessage());
                                                	e.getStackTrace();
                                                } %>
		</div>
		<%@ include file="user/footer.html" %>