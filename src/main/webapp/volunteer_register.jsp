<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="user/header.jsp" %>
<%@ include file="user/topbar.jsp" %>

		<!--Header Area End-->
		<!--Breadcrumb Area Start-->
		<div class="breadcrumb-area">
		    <div class="container">
		        <div class="row">
		            <div class="col-12">
		                <div class="breadcrumb-content text-center">
                            <h1 class="breadmome-name">Become a Volunteer</h1>
		                    <ul>
		                        <li><a href="index.html">Home</a></li>
		                        <li class="active">Become a Volunteer</li>
		                    </ul>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!--Breadcrumb Area End-->
		<!--Volunteer About Area Start-->
        <div class="volunteer-about-area pt-100">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-12 col-lg-6">
                        <!--Volunteer About Image Area Start-->
		                <div class="about-img-area img-full">
		                    <div class="img-title">
		                        <img src="user/img/about/about1.png" alt="">
		                    </div>
		                </div>
		                <!--Volunteer About Image Area End-->
                    </div>
                    <div class="col-md-12 col-lg-6">
                        <!--Volunteer About Content Area Start-->
                        <div class="volunteer-about-content">
                            <h2>Become a Volunteer</h2>
                            <h3>Join The Winning Team</h3>
                            <p>It allows you to gather monthly subscriptions from fans to help fund your creative projects. They also encourage their users to offer rewards to fans as a way to repay them for their support.</p>
                        </div>
                        <!--Volunteer About Content Area End-->
                    </div>
                </div>
            </div>
        </div>
        <!--Volunteer About Area End-->
        <!--Volunteer Signup Area Start-->
        <div class="ab pt-90 pb-75 gray-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="signup-title">
                            <h2>Become <span>Volunteer Now</span></h2>
                        </div>
                        <div class="page-content">
                            <div class="volunteer-form">
                               <div class="volunteer-form-title">
                                    <h3>You are new volunteer</h3>
                                </div>
                                <!-- --------------------------- 
                                ---------------------------------------
                                --------------------------------------->
                                <form action="registerServlet" method="post" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="vname" placeholder="Full Name" type="text">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="email" placeholder="Email Address" type="email">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="phone" placeholder="phone" type="text">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="age" placeholder="Enter Age (18-50)" type="number">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="country" placeholder="Country" type="text">
                                            </div>
                                        </div>
                                       
                                       <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="state" placeholder="State" type="text">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="city" placeholder="City" type="text">
                                            </div>
                                        </div>
                                        
                                       
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="add1" placeholder="Address Line One" type="text">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="add2" placeholder="Address Line Two" type="text">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="image" type="file" placeholder="Enter your pic">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="password" placeholder="***" type="password">
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="col-lg-12">
                                            <div class="volunteer-form-style">
                                             Already a Volunteer ??<a href="volunteer_login.jsp">Click here to Login</a>
                                             <br><br>
                                                <button class="sent-btn" type="submit">Register</button>                                               
                                            
                                            </div>
                                            
                                        </div>
                                        <div class="row-lg-12">
                                            
                                        </div>
                                    </div>
                                </form>
                             
                                
                                
                                <!-- -----------------
                                ----------------------------------
                                --------------------------------- -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Volunteer Signup Area End-->

<%@ include file="user/footer.html" %>