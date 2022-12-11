<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="user/header.jsp" %>
<%@ include file="user/topbar.jsp" %>
		<div class="breadcrumb-area">
		    <div class="container">
		        <div class="row">
		            <div class="col-12">
		                <div class="breadcrumb-content text-center">
                            
		                    <ul>
		                        <li><a href="index.jsp">Home</a></li>
		                        <li class="active">User Registration</li>
		                    </ul>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		
        <div class="ab pt-70 pb-50 gray-bg">
            <!-- <div class="container"> -->
                <!-- <div class="row"> -->
                    <div class="col-md-12">
                        <div class="signup-title">
                            <h2>You can<span> Register Now</span></h2>
                        </div>
                        <div class="page-content">
                            <div class="volunteer-form">
                               <div class="volunteer-form-title">
                                    <h3>You are new USer</h3>
                                </div>
                                <!-- --------------------------- 
                                ---------------------------------------
                                --------------------------------------->
                                <form action="User_registerServlet" method="post">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="uname" placeholder="Full Name" type="text">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="email" placeholder="Email Address" type="email">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="phone" placeholder="phone" minlength="10" maxlength="10" type="text">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="city" placeholder="City" type="text">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="volunteer-form-style mb-20">
                                                <input name="password" placeholder="***" type="password">
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="col-lg-12">
                                            <div class="volunteer-form-style">
                                             Already a User ??<a href="login.jsp">Click here to Login</a>
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
            
        

<%@ include file="user/footer.html" %>