

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;



/**
 * Servlet implementation class admin_add_orphans
 */
@WebServlet("/admin_add_orphans")
@MultipartConfig()
public class admin_add_orphans extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_add_orphans() {
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
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String medical_status = request.getParameter("medical_status");
		String place_found = request.getParameter("place_found");
		String details = request.getParameter("details");
		
		
//		<img src="getProductImage?image=<%= rs.getString("image") %>">
	
		Part part = request.getPart("image");
		String image = getAlphaNumericString(5) + ".jpeg";
	
		part.write("C:\\Users\\jaink\\eclipse-workspace\\orphanage-management\\src\\main\\webapp\\orphan_images\\"+image);
		
		try {
			  Connection con = Database.getConnection();
	          String query = "INSERT INTO `add_orphans` (`orphan_id`, `name`, `age`, `gender`, `medical_status`, `place_found`, `details`,`image`) VALUES (NULL, ?, ?, ?, ?, ?, ?, ?);";
	          PreparedStatement ps = con.prepareStatement(query);
			
			ps.setString(1,name);
			ps.setString(2,age);
			ps.setString(3,gender);
			ps.setString(4,medical_status);
			ps.setString(5,place_found);
			ps.setString(6,details);
			ps.setString(7,image);
			
			if(ps.executeUpdate() == 1) {
				response.sendRedirect("admin/admin-view-orphan.jsp?res=true");
			} else {
				response.sendRedirect("admin/admin-add-orphan.jsp?error=failed");
			}
			
		} catch(Exception err) {
			err.printStackTrace();
		}
		
		
	}

}
