<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user/header.jsp" %>
<%@ include file="user/topbar.jsp" %>

<div class="volunteer-signup-area pt-70 pb-75 gray-bg">
<div class="container">
<div class="row">
    <center>
    <div class="col-md-8">
        <div class="signup-title">
        <h2>Login as <span>Volunteer</span></h2>
        </div>
<div class="page-content">
<div class="volunteer-form">
        <div class="volunteer-form-title">
        <h3>You can Login here..!</h3>
        </div>
                <form action="loginServlet" method="post">
                <div class="col-lg-7">
                <div class="row">
                <div class="volunteer-form-style mb-10">
                    <input type="email" name="email" id="email" placeholder="enter your email-Id"></div>
                </div>
                <div class="row-lg-5">
                <div class="volunteer-form-style mb-10">
                    <input type="password" name="password" id="password" placeholder="Password">
                </div>
                </div>
                    <%  if(request.getParameter("error") != null ) { %>
                    <div class="error"><%= request.getParameter("error") %></div>
                    <% } %>
                <br><div class="col-lg-12">
                <div class="volunteer-form-style">
                 Already a Volunteer ??<a href="user_register.jsp">Click here to Register</a>
                <br><br>
                    <button class="sent-btn" type="submit">Login</button>
                </div>
                </div>
                </div>
                    </form>

        </div>
        </div>
        </div></center>
</div>
</div></div>

<%@ include file="user/footer.html" %>