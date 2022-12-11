
<%@ include file="user-authorize.jsp" %>

<body>
	<!--[if lt IE 8]>
	<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
	<div class="wrapper">
		<!--Header Area Start-->
		<header>
		    <!--Default Header Area Start-->
		    <div class="default-header-area header-sticky">
		        <div class="container-fluid">
		            <div class="row align-items-center">
		                <!--Header Logo Start-->
                        <div class="col-lg-3 col-md-6">
                            <div class="header-logo">
                                <a href="index.jsp"><img src="user/img/logo/pic4i.png" alt=""></a>
                            </div>
                        </div>
                        <!--Header Logo End-->
                        <!--Header Menu Start-->
                        <div class="col-lg-7  d-none d-lg-block text-end"> 
                            <div class="header-menu-area">
                                <nav>
                                    <ul class="main-menu">
                                        <li class="active"><a href="index.jsp">HOME</a>
                                            <!--Dropdown Menu Start-->
                                            
                                            <!--Dropdown Menu End-->
                                        </li>
                                        
                                        
                                        <li><a href="blog.jsp">BLOG</a>
                                            <!--Dropdown Menu Start-->
                                            
                                            <!--Dropdown Menu End-->
                                        </li>
                                       
                                        
                                        <li><a href="#">VOLUNTEER</a>
                                            <!--Dropdown Menu Start-->
                                            <ul>
                                                <li><a href="volunteer_detail.jsp">About Volunteer</a></li>                                     
                                                
                                                <li><a href="volunteer_register.jsp">Become Volunteer</a></li>
                                                 <li><a href="volunteer_login.jsp">Volunteer Login</a></li>
                                                
                                            </ul>
                                            <!--Dropdown Menu End-->
                                        </li>
                                        <li><a href="contact_us.jsp">CONTACT</a>
                                       
                                          </li>
                                       
                                        
                                        <%if(logged_in == false) 
                                        { %>
                                        	<li><a href="#">Account</a>
                                            <!--Dropdown Menu Start-->
                                            <ul>
                                                
                                                <!-- <li><a href="volunteer_login.jsp">Volunteer</a></li> -->
                                                <li><a href="user_login.jsp">register</a></li>
                                                <%-- <li><a href=""><% out.print(global_name); %></a></li> --%>
                                                <li><a href="user_login.jsp">login</a></li>
                                                
                                            </ul>
                                            <!--Dropdown Menu End-->
                                        </li>
                                        
                                        <% }
                                        else {
                                        %>
                                        <li><a href="inquiry.jsp">Make Inquiry</a></li>
                                        <li><a href=""><% out.print(global_name); %></a>
                                            <ul>
                                                
                                                <!-- <li><a href="volunteer_login.jsp">Volunteer</a></li> -->
                                                <li><a href="user_logout.jsp">logout</a></li>
                                                <%-- <li><a href="user_login.jsp">User</a></li>
                                                <li></li>
                                                <li><a href="user_logout.jsp">logout</a></li>
                                                 --%>
                                            </ul>
                                            <!--Dropdown Menu End-->
                                        </li>
                                        
                                         
                                        <%}  %>
                                        
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <!--Header Menu End-->
                        <!--Book Now Area Start-->
                        <div class="col-lg-2 col-md-6">
                            <div class="book-now-btn text-end">
                                <a href="donate.jsp">DONATE</a>
                            </div>
                        </div>
                        <!--Book Now Area Start-->
		            </div>
		            <div class="row">
                        <div class="col-12">  
                            <!--Mobile Menu Area Start-->
                            <div class="mobile-menu d-lg-none d-xl-none"></div>
                            <!--Mobile Menu Area End-->
                        </div>
                    </div>
		        </div>
		    </div>
		    <!--Default Header Area End-->
		</header>