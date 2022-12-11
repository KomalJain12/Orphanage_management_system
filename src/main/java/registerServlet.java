

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

@MultipartConfig()
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	@SuppressWarnings("unused")
	private String getSubmittedFileName(Part part) {
	    for (String cd : part.getHeader("content-disposition").split(";")) {
	        if (cd.trim().startsWith("filename")) {
	            String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
	            return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
	        }
	    }
	    return null;
	}
	
	static String getAlphaNumericString(int n)
	 {
	 
	  // chose a Character random from this String
	  String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	         + "0123456789"
	         + "abcdefghijklmnopqrstuvxyz";
	 
	  // create StringBuffer size of AlphaNumericString
	  StringBuilder sb = new StringBuilder(n);
	 
	  for (int i = 0; i < n; i++) {
	 
	   // generate a random number between
	   // 0 to AlphaNumericString variable length
	   int index
	    = (int)(AlphaNumericString.length()
	      * Math.random());
	 
	   // add Character one by one in end of sb
	   sb.append(AlphaNumericString
	      .charAt(index));
	  }
	 
	  return sb.toString();
	 }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			PrintWriter out = response.getWriter();
			
			 String vname = request.getParameter("vname").trim();
		     String email = request.getParameter("email").trim();
		     String phone = request.getParameter("phone").trim();
		     String country = request.getParameter("country").trim();
		     String state = request.getParameter("state").trim();
		     String city = request.getParameter("city").trim();
		     String age = request.getParameter("age").trim();
		     String add1 = request.getParameter("add1").trim();
		     String add2 = request.getParameter("add2").trim();
		     String password = request.getParameter("password").trim();
		     
		     Part part = request.getPart("image");
		     String image = getAlphaNumericString(5) + ".jpeg";
		     part.write("C:\\Users\\jaink\\eclipse-workspace\\orphanage-management\\src\\main\\webapp\\blog_pic\\"+image);
	    	 Connection connection = null;
			     
	    	 try {
	    		 connection = Database.getConnection();
	    		 Statement stmt = connection.createStatement();
	    		 
	    		 String sql = "select * from volunteer_details where email='"+email+"'";
	    		 ResultSet rs=stmt.executeQuery(sql);
	    		 
	    		 if (rs.next()) {   
	    			 response.sendRedirect("volunteer_login.jsp?em=yes");
	    		 }
	    		 else 
	    		 {
	    		
	    			 String sql1 = "INSERT INTO volunteer_details VALUES ('"+vname+"','"+email+"','"+phone+"','"+country+"','"+state+"','"+city+"','"+age+"','"+add1+"','"+add2+"','"+password+"','"+image+"',0)";
	    			 stmt.execute(sql1);
	    			 HttpSession session = request.getSession(true);
	    			 session.setAttribute("user", vname);
	    			 response.sendRedirect("volunteer_login.jsp?res=true");
	    		 }
		    		 
		    	 }catch(Exception e)
		    	 {
		    		 
		    		 System.out.println(e);
		    		 out.print("Database is not conneted");
		    	 }
	}

}
