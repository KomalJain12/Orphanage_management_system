<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb","root","");
%>
<div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">

                        <div class="row">

                            <div class="col-xl-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="dropdown float-end">
                                            <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-end">
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                            </div>
                                        </div>
    
                                        <h4 class="header-title mt-0 mb-4">Total Donation</h4>
    
                                        <div class="widget-chart-1">
                                            <div class="widget-chart-box-1 float-start" dir="ltr">
                                                
                                            
    
                                            <div class="widget-detail-1 text-end">
                                                <h2 class="fw-normal pt-2 mb-1"><% try
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
                                %></h2>
                                                <p class="text-muted mb-1">Total Donation</p>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->

                            <div class="col-xl-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="dropdown float-end">
                                            <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-end">
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                            </div>
                                        </div>
    
                                        <h4 class="header-title mt-0 mb-4">Total Family</h4>
    
                                        <div class="widget-chart-1">
                                            <div class="widget-chart-box-1 float-start" dir="ltr">
                                                
                                            
    
                                            <div class="widget-detail-1 text-end">
                                                <h2 class="fw-normal pt-2 mb-1"><% try
                                {
                                    
                                
                                Statement st=con.createStatement();
                                String cnt = "select count(*) from add_orphans";
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
                                %></h2>
                                                <p class="text-muted mb-1">Total Family</p>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->

                            <div class="col-xl-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="dropdown float-end">
                                            <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-end">
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                            </div>
                                        </div>
    
                                        <h4 class="header-title mt-0 mb-4">Pending Inquiry</h4>
    
                                        <div class="widget-chart-1">
                                            <div class="widget-chart-box-1 float-start" dir="ltr">
                                                
                                            
    
                                            <div class="widget-detail-1 text-end">
                                                <h2 class="fw-normal pt-2 mb-1"><% try
                                {
                                    
                                
                                Statement st=con.createStatement();
                                String cnt = "select count(inq_id) from inquiry_master where status=1";
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
                                %></h2>
                                                <p class="text-muted mb-1">Pending Inquiry</p>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->

                            <div class="col-xl-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="dropdown float-end">
                                            <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-end">
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                            </div>
                                        </div>
    
                                        <h4 class="header-title mt-0 mb-4">Total Blogs</h4>
    
                                        <div class="widget-chart-1">
                                            <div class="widget-chart-box-1 float-start" dir="ltr">
                                                
                                            
    
                                            <div class="widget-detail-1 text-end">
                                                <h2 class="fw-normal pt-2 mb-1"><% try
                                {
                                    
                                
                                Statement st=con.createStatement();
                                String cnt = "select count(*) from blog_master";
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
                                %></h2>
                                                <p class="text-muted mb-1">Total Blogs</p>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->

                        </div>
                        <!-- end row -->

                        
                        
                    </div> <!-- container-fluid -->

                </div> <!-- content -->