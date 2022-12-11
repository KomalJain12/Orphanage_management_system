

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class DonateServlet1
 */
@SuppressWarnings("unused")
@MultipartConfig()
public class DonateServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DonateServlet1() {
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
	     String email = request.getParameter("email");
	     String amount = request.getParameter("amount");
	     String onbehalf = request.getParameter("onbehalf");
	     String addrs = request.getParameter("addrs");
	     String quote = request.getParameter("quote");
	     String donate_id=request.getParameter("donate_id");
	     
	     Part part = request.getPart("image");
	     String image = getAlphaNumericString(5) + ".jpeg";
	     part.write("C:\\Users\\jaink\\eclipse-workspace\\orphanage-management\\src\\main\\webapp\\orphan_images\\"+image);
	    
	     
	     try {
			  Connection con = Database.getConnection();
	          String query = "INSERT INTO `donation_master` (`donate_id`, `email`, `amount`, `onbehalf`, `addrs`, `quote`,`image`,`status`) VALUES (NULL, ?, ?, ?, ?, ?, ?,0);";
	          PreparedStatement ps = con.prepareStatement(query);
			
			ps.setString(1,email);
			ps.setString(2,amount);
			ps.setString(3,onbehalf);
			ps.setString(4,addrs);
			ps.setString(5,quote);
			ps.setString(6,image);
			
			if(ps.executeUpdate() == 1) {
				response.sendRedirect("donate.jsp?res=true");
			} else {
				response.sendRedirect("user_login.jsp?res=false");
			}
			
		} catch(Exception err) {
			
			response.sendRedirect("user_login.jsp?res=false");
			err.printStackTrace();
		}
	}

}
