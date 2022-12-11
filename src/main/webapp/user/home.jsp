
<%@ include file="header.jsp" %>
<%@ page import="java.sql.*" %>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb","root","");
%>
<body>
	<!--[if lt IE 8]>
	<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->

	<div class="wrapper">
		<!--Header Area Start-->
		
		<!--Header Area End-->
		<!--Slider Area Start-->
		<div class="slider-area">
		    <div class="hero-slider owl-carousel">
		        <!--Single Slider Start-->
		        <div class="single-slider" style="background-image: url(user/img/slider/slide2-home-1.jpg)"> 
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="hero-slider-content">
                                    <h1>Small help together makes better life</h1>
                                    <div class="slider-btn">
                                        <a class="default-btn" href="#">READ MORE</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
		        </div>
		        <!--Single Slider End-->
		        <!--Single Slider Start-->
		        <div class="single-slider" style="background-image: url(user/img/slider/slide1-home-1.jpg)">   
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="hero-slider-content">
                                    <h1>Let's teach them letter, the world will be better</h1>
                                    <div class="slider-btn">
                                        <a class="default-btn" href="#">READ MORE</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
		        </div>
		        <!--Single Slider End-->
		    </div>
		</div>
		<!--Slider Area End-->
		<!--Feature Area Start-->
		<div class="feature-area fix mb-10">
            <div class="container-fluid p-0">
                <div class="row coustom-row">
                    <div class="single-feature col-md-4">
                        <!--  Single Feature Area Start
                        <div class="single-feature-inner">
                            <h2>Get our Promortional <span class="text-underline">Products</span> and help the humaity</h2>
                        </div>
                        Single Feature Area End
                    </div>
                    <div class="single-feature col-md-4">
                        Single Feature Area Start
                        <div class="single-feature-inner">
                            <h2>Our Upcomming <span class="text-underline">Events Date</span>: 3rd October, 2018 <span class="text-underline">Venu</span>: Romance Hall</h2>
                        </div>
                        Single Feature Area End
                    </div>
                    <div class="single-feature col-md-4">
                        Single Feature Area Start
                        <div class="single-feature-inner">
                            <h2>Our Latest <span class="text-underline">Achivement Funds</span> $3,85,65,250 <span class="text-underline">Members</span> 50,000</h2>
                        </div>
                        Single Feature Area End
                    </div> -->
                </div>
            </div>
		</div>
		</div>
		<!--Feature Area End-->
		<!--Service Area Start-->
		<div class="service-area">
		    <div class="container">
		        <div class="row">
		            <div class="col-lg-7">
		                <div class="row">
		                    <div class="col-12">
		                        <div class="service-section-title mb-40">
		                            <h2>What we do</h2>
		                            <h3>Always try to do better for humanity</h3>
		                            <p>Trying to make everyone smilke by providing them food and shelter</p>
		                        </div>
		                    </div>
		                </div>
		                <div class="row">
		                    <div class="col-md-6">
		                        <!--Single Service Start-->
		                        <div class="single-service mb-30">
		                            <h2 class="service-title">Make Donation</h2>
		                            <p>Your donation is helpful for the better future of our children</p>
		                        </div>
		                        <!--Single Service End-->
		                    </div>
		                    <div class="col-md-6">
		                        <!--Single Service Start-->
		                        <div class="single-service mb-30">
		                            <h2 class="service-title">Give Scholarship</h2>
		                            <p>We have program and scheme for the Educational purpose of the students.</p>
		                        </div>
		                        <!--Single Service End-->
		                    </div>
		                    <div class="col-md-6">
		                        <!--Single Service Start-->
		                        <div class="single-service mb-30">
		                            <h2 class="service-title">Become a Volunteer</h2>
		                            <p>Your helping hand will be very adorable and will be helpful to the needy people of the organization</p>
		                        </div>
		                        <!--Single Service End-->
		                    </div>
		                   
		                    <div class="col-md-6">
		                        <!--Single Service Start-->
		                        
		                        <!--Single Service End-->
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		    <div class="service-image">
		        <img src="img/service/service1.png" alt="">
		    </div>
		</div>
		<!--Service Area End-->
		
		<!--Fun Factor Area Start-->
		<div class="fun-factor-area fun-bg mt-100">
		    <div class="container">
		        <div class="row justify-content-between content-between">
		            <div class="col">
		                <div class="single-funfactor mb-30 text-center">
		                    <div class="fun-facttor-number">
                                <h3><b><span class="counter-up">
                                
                                <% try
                                {
                                    
                                
                                Statement st=con.createStatement();
                                String cnt = "select count(email) AS uname from user_details";
		                        ResultSet rslt = st.executeQuery(cnt);
		                            		
		                            		String Countrow="";
		                            	      while(rslt.next()){
		                            	      Countrow = rslt.getString(1);
		                            	      out.print(Countrow);
		                            	       }
                                }
                                catch (Exception e){
                                    e.printStackTrace();
                                    }
                                %>
                                
                                </span></b></h3>
                            </div>
                            <h4 class="counter-title">Total Users</h4>
		                </div>
		            </div>
		            <div class="col">
		                <div class="single-funfactor mb-30 text-center">
		                    <div class="fun-facttor-number">
                                <h3><b><span class="counter-up">
                                <% try
                                {
                                    
                                
                                Statement st=con.createStatement();
                                String cnt = "select count(*) from donation_master";
		                        ResultSet rslt = st.executeQuery(cnt);
		                            		
		                            		String Countrow="";
		                            	      while(rslt.next()){
		                            	      Countrow = rslt.getString(1);
		                            	      out.print(Countrow);
		                            	       }
                                }
                                catch (Exception e){
                                    e.printStackTrace();
                                    }
                                %></span></b></h3>
                            </div>
                            <h4 class="counter-title">Total Sponsor</h4>
		                </div>
		            </div>
		            <div class="col">
		                <div class="single-funfactor mb-30 text-center">
		                    <div class="fun-facttor-number">
                                <h3><b>Rs.<span class="counter-up">
                                <% try
                                {
                                    
                                
                                Statement st=con.createStatement();
                                String cnt = "select sum(amount) from donation_master";
		                        ResultSet rslt = st.executeQuery(cnt);
		                            		
		                            		String Countrow="";
		                            	      while(rslt.next()){
		                            	      Countrow = rslt.getString(1);
		                            	      out.print(Countrow);
		                            	       }
                                }
                                catch (Exception e){
                                    e.printStackTrace();
                                    }
                                %></span></b></h3>
                            </div>
                            <h4 class="counter-title">Money Donated</h4>
		                </div>
		            </div>
		            <div class="col">
		                <div class="single-funfactor mb-30 text-center">
		                    <div class="fun-facttor-number">
                                <h3><b><span class="counter-up">
                                <% try
                                {
                                    
                                
                                Statement st=con.createStatement();
                                String cnt = "select count(email) AS vname from volunteer_details where status=1";
		                            		/* String q="mysqli_num_rows(cnt)";  */
		                        
		                        ResultSet rslt = st.executeQuery(cnt);
		                            		
		                            		String Countrow="";
		                            	      while(rslt.next()){
		                            	      Countrow = rslt.getString(1);
		                            	      out.print(Countrow);
		                            	       }
                                }
                                catch (Exception e){
                                    e.printStackTrace();
                                    }
                                %>
                                </span></b></h3>
                            </div>
                            <h4 class="counter-title">Total Volunteers</h4>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!--Fun Factor Area End-->
		<!--Testimonial Area Start-->
		<!-- <div class="testimonial-area pt-100">
		    <div class="container">
                <div class="row testimonial-active">
                    <div class="col-6">
                        Single Testimonial Start
                        <div class="single-testimonial">
                            <div class="testimonial-content">
                                <p>Pursue pleasure rationally encounter equences that treme painful. Nor again is there anyone  obtain pain of itself, because it is pain</p>
                            </div>
                            <div class="testimonial-author-info">
                                <div class="team-author-deg">
                                    <h3>Stephen Smith</h3>
                                    <p>Donetor, CEO of Axion</p>
                                </div>
                                <div class="author-img">
                                    <img src="img/testimonial/testi1-home-1.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        Single Testimonial End
                    </div>
                    <div class="col-6">
                        Single Testimonial Start
                        <div class="single-testimonial">
                            <div class="testimonial-content">
                                <p>Pursue pleasure rationally encounter equences that treme painful. Nor again is there anyone  obtain pain of itself, because it is pain</p>
                            </div>
                            <div class="testimonial-author-info">
                                <div class="team-author-deg">
                                    <h3>Jeniger Hearly</h3>
                                    <p>Donetor, CEO of Axion</p>
                                </div>
                                <div class="author-img">
                                    <img src="img/testimonial/testi2-home-1.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        Single Testimonial End
                    </div>
                    <div class="col-6">
                        Single Testimonial Start
                        <div class="single-testimonial">
                            <div class="testimonial-content">
                                <p>Pursue pleasure rationally encounter equences that treme painful. Nor again is there anyone  obtain pain of itself, because it is pain</p>
                            </div>
                            <div class="testimonial-author-info">
                                <div class="team-author-deg">
                                    <h3>Stephen Smith</h3>
                                    <p>Donetor, CEO of Axion</p>
                                </div>
                                <div class="author-img">
                                    <img src="img/testimonial/testi1-home-1.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        Single Testimonial End
                    </div>
                    <div class="col-6">
                        Single Testimonial Start
                        <div class="single-testimonial">
                            <div class="testimonial-content">
                                <p>Pursue pleasure rationally encounter equences that treme painful. Nor again is there anyone  obtain pain of itself, because it is pain</p>
                            </div>
                            <div class="testimonial-author-info">
                                <div class="team-author-deg">
                                    <h3>Jeniger Hearly</h3>
                                    <p>Donetor, CEO of Axion</p>
                                </div>
                                <div class="author-img">
                                    <img src="img/testimonial/testi2-home-1.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        Single Testimonial End
                    </div>
                </div>
		    </div>
		</div> -->
		<!--Testimonial Area End-->
		<!--Our Blog Area Start-->
		<div class="our-blog-area pt-115">
		    <div class="container">
		        <div class="row">
		            <div class="col-12">
		                <!--Section Title Start-->
		                <div class="section-title mb-60">
		                    <h2>Our Blog</h2>
		                    <p>Pursue pleasure rationally encounter consequences that extremely painful. Nor again is there anyone who loves or pursues </p>
		                </div>
		                <!--Section Title End-->
		            </div>
		        </div>
		        <div class="row">
		            <!--Single Blog Start-->
		             <%
                                       try
{
       
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb","root","");
        String sql = "select * from blog_master b,volunteer_details v where b.email=v.email and b.status=1;";
        PreparedStatement stmt = con1.prepareStatement(sql);
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
         
		            <div class="col-lg-6 col-xl-3 col-md-6">
		                <div class="single-blog mb-30">
                            <div class="blog-img img-full">
                                <a href="singleblog.jsp?bid=<%= rs.getString("blog_id") %>">
                                
                                <img src="getBlogimage?image=<%= rs.getString("image") %>"  alt="profile-image" width="150" height="150">
                                </a>
                            </div>
                            <div class="blog-content">
                                <ul class="meta">
                                    <li>By <a href="#"><%= rs.getString("vname") %></a></li>
                                    <li><%= rs.getString("date") %></li>
                                </ul>
                                <h4 class="title"><%= rs.getString("blog_title") %></h4>
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
		    </div>
		</div>
		<!--Our Blog Area End-->
		<!--Project Area Start-->
		<div class="project-area pt-70 mb-5">
		    <div class="container-fluid p-0">
		        <div class="row no-gutters project-active owl-carousel">
		            <div class="col-12">
		                <!--Single Project Start-->
		                <div class="single-project img-full">
		                    <a href="#"><img src="img/project/project1.jpg" alt=""></a>
		                </div>
		                <!--Single Project End-->
		            </div>
		            <div class="col-12">
		                <!--Single Project Start-->
		                <div class="single-project img-full">
		                    <a href="#"><img src="img/project/project2.jpg" alt=""></a>
		                </div>
		                <!--Single Project End-->
		            </div>
		            <div class="col-12">
		                <!--Single Project Start-->
		                <div class="single-project img-full">
		                    <a href="#"><img src="img/project/project3.jpg" alt=""></a>
		                </div>
		                <!--Single Project End-->
		            </div>
		            <div class="col-12">
		                <!--Single Project Start-->
		                <div class="single-project img-full">
		                    <a href="#"><img src="img/project/project4.jpg" alt=""></a>
		                </div>
		                <!--Single Project End-->
		            </div>
		            <div class="col-12">
		                <!--Single Project Start-->
		                <div class="single-project img-full">
		                    <a href="#"><img src="img/project/project5.jpg" alt=""></a>
		                </div>
		                <!--Single Project End-->
		            </div>
		        </div>
		    </div>
		</div>
		<!--Project Area End-->
		