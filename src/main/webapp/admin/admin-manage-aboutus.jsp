
    <jsp:include page="html/header.html"/>
<%@ include file="topbar.jsp" %>
<jsp:include page="sidebar.jsp"/>
  <%@ page import="java.sql.*" %>
    <div class="content-page">
                <div class="content">
                      <!-- Start Content-->
                    <div class="container-fluid">
<div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Manage About US</h4>

                                        <form action="../admin_add_aboutus" method="post">
                                            

                                            <div class="mb-3">
                                                <label for="inputAddress" class="form-label">Title</label>
                                                <input type="text" class="form-control" name="title" placeholder="Input Title">
                                            </div>

                                            <div class="mb-3">
                                                <label for="inputAddress2" class="form-label">Description</label>
                                                <input type="text" class="form-control" name="descr" id="descr" placeholder="Enter Description">
                                            </div>
                                            <button type="submit" class="btn btn-primary waves-effect waves-light">Sign in</button>
                                        </form>
                                    </div> <!-- end card-body -->
                                </div> <!-- end card-->
                            </div> <!-- end col -->
                        </div>
                        </div>
                        </div>
                        </div>
<script>
         CKEDITOR.replace( 'descr' );
 </script>

<jsp:include page="html/footer.html"/>


    