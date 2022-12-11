

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class admin_orphan_update
 */
public class admin_orphan_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_orphan_update() {
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
	          String orphan_id = request.getParameter("orphan_id");
	          String name = request.getParameter("name");
	          String age = request.getParameter("age");
	          String gender = request.getParameter("gender");
	          String medical_status = request.getParameter("medical_status");
	          String place_found = request.getParameter("place_found");
	          String details = request.getParameter("details");
	          Connection con = Database.getConnection();

	          PreparedStatement ps = con.prepareStatement("update add_orphans set name=?,age=?,gender=?,medical_status=?,place_found=?,details=? where orphan_id=?");
	          ps.setString(1, name);
	          ps.setString(2, age);
	          ps.setString(3, gender);
	          ps.setString(4, medical_status);
	          ps.setString(5, place_found);
	          ps.setString(6, details);
	          ps.setString(7, orphan_id);
	          ps.executeUpdate();
	          response.sendRedirect("admin/admin-view-orphan.jsp?res=true");
	          
	      } catch (Exception err) {
	          err.printStackTrace();
	          response.getWriter().write("Error occurred. check logs");
	      }
	}

}
