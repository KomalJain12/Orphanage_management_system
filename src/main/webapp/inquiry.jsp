<%@ include file="user/header.jsp" %>
<%@ include file="user/topbar.jsp" %>

<%
	if(request.getParameter("success") != null) {
		%>
		<script>
			alert("Inquiry is done.");
			window.location.href="inquiry.jsp";
		</script>
		<%
	}
%>

<!--Contact Info Area Start-->
		<div class="contact-info-area pt-100">
		    <div class="container">
		        <div class="row no-gutters align-items-center">
		            <div class="col-lg-8 col-md-12">
		                <div class="contact-info-here mb-30">
                            <div class="contact-img img-full">
		                        <img src="user/img/contact/contact1.jpg" alt="">
		                    </div>
		                    <div class="contact-info">
		                        <h2>You Can <br> Contact With Us</h2>
		                        <p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram anteposuerit litterarum formas human.</p>
		                    </div>
		                </div>
		            </div>
		            <div class="col-lg-4 col-md-12">
		                <div class="contact-info-title">
		                    <h2>Small help together makes better life</h2>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!--Contact Info Area End-->
		<!--Contact Area Start-->
		<div class="contact-area pb-100">
		    <div class="container">
		        <div class="row no-gutters">
		            <div class="col-md-12 col-lg-8 gray-bg">
                        <div class="contact-form-wrap">
                            <h3 class="contact-form-title">Get In Touch</h3>
                            <form  action=InquiryServlet method="post" enctype="multipart/form-data">
                                <div class="row">
                                  
                                    <input name="email"  value="<%= global_email %>" type="hidden">
                                     
                                    <div class="col-md-6">
                                        <div class="contact-form-style mb-30">
                                        
                                            <input name="subject" placeholder="Subject*" type="text">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="contact-form-style mb-30">
                                        <input type="file" name="image" id="input-file-now" class="dropify" />
                                        </div>                                                                                                                                                                                                                                                                 
                                    </div>
                                    
                                    <div class="col-md-12">
                                        <div class="contact-form-style">
                                            <textarea name="message" placeholder="Type your message here.."></textarea>
                                            <button class="sent-btn" type="submit"><span>Send Request</span></button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <p class="form-messege"></p>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-4 green-bg">
                        <div class="contact-address">
                            <h3 class="ct-title">Contact</h3>
                            <div class="astha-contact-info">
                                <h4>Address</h4>
                                <p>245 Central Tower, 4th Floow New City, South Reazion, California, USA</p>
                            </div>
                            <div class="astha-contact-info">
                                <h4>Email</h4>
                                <p>demo@yourmail.com</p>
                                <p>demo@example.com</p>
                            </div>
                            <div class="astha-contact-info">
                                <h4>Phone No</h4>
                                <p>+880123456789</p>
                                <p>+880173456789</p>
                            </div>
                            <div class="astha-contact-info-web">
                                <p class="web-address">www.demo.com</p>
                            </div>
                        </div>
                    </div>
		        </div>
		    </div>
		</div>
		<!--Contact Area End-->
		<jsp:include page="user/footer.html"/>