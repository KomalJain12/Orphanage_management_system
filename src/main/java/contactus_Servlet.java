

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class contactus_Servlet
 */
@MultipartConfig()
public class contactus_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contactus_Servlet() {
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
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		 
	     String name = request.getParameter("name");
	     String subject = request.getParameter("subject");
	     String message = request.getParameter("message");
	     String email = request.getParameter("email");
		 
	    
	     try {
			  Connection con = Database.getConnection();
	          String query = "INSERT INTO `contact_us` (`cid`, `name`, `subject`,`email`, `message`) VALUES (NULL, ?, ?, ?, ?);";
	          PreparedStatement ps = con.prepareStatement(query);
			
			ps.setString(1,name);
			ps.setString(2,subject);
			ps.setString(3,email);
			ps.setString(4,message);
			
			if(ps.executeUpdate() == 1) {
				response.sendRedirect("contact_us.jsp?res=true");
			} else {
				response.sendRedirect("contact_us.jsp?res=false");
			}
			
		} catch(Exception err) {
			err.printStackTrace();
		}
	}

}
