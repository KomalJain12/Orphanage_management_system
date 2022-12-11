<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:include page="html/header.html"/>
<jsp:include page="topbar.jsp"/>
<jsp:include page="sidebar.jsp"/>

 <div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h2 class="">Add Family (Oprhans Detail)</h2>
                                        
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <form action="../admin_add_orphans" enctype="multipart/form-data" method="post">

                                                    <div class="mb-3">
                                                        <label for="simpleinput" class="form-label">Name</label>
                                                        <input type="text" name="name" class="form-control">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="simpleinput" class="form-label">Age</label>
                                                        <input type="number" name="age" class="form-control">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="simpleinput" class="form-label">Gender</label>
                                                        <input type="text" name="gender" class="form-control">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="simpleinput" class="form-label">Medical Status</label>
                                                        <input type="text" name="medical_status"  class="form-control">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="example-textarea" class="form-label">Place Found</label>
                                                        <input type="text" name="place_found"  class="form-control">
                                                    </div>
        											<div class="mb-3">
                                                        <label for="example-fileinput" class="form-label">Other Details</label>
                                                        <input type="text" name="details" class="form-control">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="example-fileinput" class="form-label">Image</label>
                                                        <input type="file" name="image" class="form-control">
                                                    </div>
                                                    
													<button type="submit">Submit Details</button>
                                                    
        
                                                </form>
                                            </div> <!-- end col -->

                                          
                                        </div>
                                        <!-- end row-->

                                    </div> <!-- end card-body -->
                                </div> <!-- end card -->
                            </div><!-- end col -->
                        </div>
                        <!-- end row -->
                      </div><!-- end row -->
                        
                    </div> <!-- container -->

                </div> <!-- content -->

<jsp:include page="html/footer.html"/>