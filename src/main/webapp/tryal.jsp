<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>

  
  <meta charset="UTF-8">
  <script language="JavaScript">
    function showInput() {
        document.getElementById('display').innerHTML = 
                    document.getElementById("message").value;
        document.getElementById('display').innerHTML = 
            document.getElementById("onbehalf").value;
        document.getElementById('display').innerHTML = 
            document.getElementById("addrs").value;
        document.getElementById('display').innerHTML = 
            document.getElementById("quote").value;
    }
  </script>

  


  <form action="DonateServlet1" method="post">
    <label>Enter a Message</label>
    <input type="text" name="message" id="message">
                                    <%-- <input name="email"  value="<%= global_email %>" type="hidden"> --%>
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
                                                        <%-- <input type="text" value="<%= global_name %>" name="uname" placeholder="Ex: Join"> --%>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="single-input mb-30">
                                                        <label>On-Behalf</label>
                                                        <input type="text" name="onbehalf" id="onbehalf" placeholder="Ex: Doe">
                                                    </div>
                                                </div>
                                                
                                                <div class="col-lg-6">
                                                    <div class="single-input mb-30">
                                                        <label>Address </label>
                                                        <textarea name="addrs" id="addrs" placeholder="Ex: 9 Elm Street"></textarea>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="single-input mb-30">
                                                        <label>Additional Quote </label>
                                                        <textarea name="quote" id="quote" placeholder="Ex: Get Volunteer Idea Festival 2017"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="donate-btn">
                                            <input type="submit" onclick="showInput();">
                                       
  
  <label>Your input: </label>
  <p><span id="display"></span></p>
   </div>
                                    </form>
</body>
</html>