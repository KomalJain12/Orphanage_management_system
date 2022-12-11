

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class rejectServlet
 */
public class rejectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public rejectServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
	          String email = request.getParameter("email");
	          Connection con = Database.getConnection();

	          PreparedStatement ps = con.prepareStatement("update volunteer_details set status=? where email=?");
	          ps.setInt(1, 2);
	          ps.setString(2, email);
	          
	          ps.executeUpdate();
	          response.sendRedirect("admin/admin-view-vol.jsp");


	      } catch (Exception err) {
	          err.printStackTrace();
	          response.getWriter().write("Error occurred. check logs");
	      }
	}

}
