

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class inquiry_approveServlet
 */
public class inquiry_approveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public inquiry_approveServlet() {
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
		// TODO Auto-generated method stub
		try {
	          String id = request.getParameter("id");
	          Connection con = Database.getConnection();

	          PreparedStatement ps = con.prepareStatement("update inquiry_master set status=? where inq_id=?");
	          ps.setInt(1, 1);
	          ps.setString(2, id);
	          ps.executeUpdate();
	          response.sendRedirect("vol/view_inquiry.jsp");


	      } catch (Exception err) {
	          err.printStackTrace();
	          response.getWriter().write("Error occurred. check logs");
	      }
	}

}
