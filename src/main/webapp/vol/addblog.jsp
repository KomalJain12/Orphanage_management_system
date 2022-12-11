<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="header.html" />
<%@ include file="sidebar.jsp" %>
<div class="main-content">
<div class="col-15">
				<div class="box-content">
				<h2>Blog</h2>
				</div>
				</div>
		<div class="row small-spacing">
			<div class="col-12">
				<div class="box-content">
					<form method="post" action="../Add_blogServlet" enctype="multipart/form-data">
					<input name="email"  value="<%= global_email %>" type="hidden">
						<div class="form-group">
							<label for="inputName" class="control-label">Blog Title</label>
							<input type="text" class="form-control" name="blog_title" placeholder="Enter Your Blog Title" required="">
						</div>
						 <div class="form-group has-feedback">
							<label for="inputTwitter" class="control-label">Blog Detail</label>
							<div class="input-group">
								
								<textarea rows="6" cols="100" placeholder="Enter Blog Detail" name="detail"></textarea>
							</div>
							
						</div> 
						<div class="row">
						<div class="form-group col-md-6">
							<label for="inputEmail" class="control-label">Blog Date</label>
							<input type="date" class="form-control" name="date" required="">
							</div>
							</div>
							<label for="inputPassword" class="control-label">Blog Photo</label>
							<div class="row">
								<div class="form-group col-md-6">
									<input type="file" class="form-control" name="image" required>
								</div>
							</div>
						
						
						<div class="form-group">
							<button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
						</div>
					</form>
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-12 -->
		</div>
		<!-- /.row small-spacing -->		
	
<jsp:include page="footer.html" />
</div>