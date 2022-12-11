<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="user/header.jsp" %>
<%@ include file="user/topbar.jsp" %>
<%
	if(request.getParameter("success") != null) {
		%>
		<script>
			alert("Donation done.");
			window.location.href="inquiry.jsp";
		</script>
		<%
	}
%>
<script>
        function testVariable() {
            var strText = document.getElementById("textone").value;          
            var strText1 = document.getElementById("textTWO").value;
            var result = strText + ' ' + strText1;
            document.getElementById('spanResult').textContent = result;
             
        }
    </script>
<!--Breadcrumb Area Start-->
		<div class="breadcrumb-area">
		    <div class="container">
		        <div class="row">
		            <div class="col-12">
		                <div class="breadcrumb-content text-center">
                            <h1 class="breadmome-name">Donate</h1>
		                    <ul>
		                        <li><a href="index.jsp">Home</a></li>
		                        <li class="active">Donate</li>
		                    </ul>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!--Breadcrumb Area End-->
		<!--Donate Form Area Start-->
		<div class="donate-form-area pt-100 pb-75">
		    <div class="container">
		        <div class="row">
		            <div class="col-lg-9 col-md-12 me-auto ms-auto">
		                <div class="donate-content">
		                    <div class="donate-form-container">
                                <div class="donate-form-title">
                                    <h3>Donation Details</h3>
                                </div>
                                <div class="donation-form quick-donation-section donate-page">
                                    <form action="DonateServlet1" class="form" method="post">
                                    <input name="email"  value="<%= global_email %>" type="hidden">
                                        <div class="donate-amount">
                                            <p>How much would you like to donate?</p>
                                            <div class="donate-list">
                                                <div class="enter-amount">
                                                <input type="number" name="amount" placeholder="-- Enter Amount --">
                                            </div>
                                            </div>
                                            
                                        </div>
                                        <div class="tg-donetship">
                                            <p>Would you like to make regular donations?</p>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="single-input mb-30">
                                                        <label>First Name</label>
                                                        <input type="text" value="<%= global_name %>" name="uname" placeholder="Ex: Join">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="single-input mb-30">
                                                        <label>On-Behalf</label>
                                                        <input type="text" name="onbehalf" placeholder="Ex: Doe">
                                                    </div>
                                                </div>
                                                
                                                <!-- <div class="col-lg-6">
                                                    <div class="single-input mb-30">
                                                        <label>Email </label>
                                                        <input type="text" name="email" placeholder="Ex: jdoe@zyzzyu.com">
                                                    </div>
                                                </div> -->
                                                <div class="col-lg-6">
                                                    <div class="single-input mb-30">
                                                        <label>Address </label>
                                                        <textarea name="addrs" placeholder="Ex: 9 Elm Street"></textarea>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="single-input mb-30">
                                                        <label>Additional Quote </label>
                                                        <textarea name="quote" placeholder="Ex: Get Volunteer Idea Festival 2017"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="donate-btn">
                                            <button type="submit">Donate</button>
                                        </div>
                                    </form>
                                </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!--Donate Form Area End-->
<jsp:include page="user/footer.html"/>