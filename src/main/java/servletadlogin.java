import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class servletadlogin
 */
@WebServlet("/servletadlogin")
public class servletadlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public servletadlogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = Database.getConnection();
            String query = "select * from admin_master where email='"+email+"' AND pass='"+pass+"' ";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
			boolean found = rs.next();

            if(found) {
                // login success
                HttpSession session = request.getSession(true);
                session.setAttribute("token", email + ":" + pass + ":" + rs.getString("aname"));
                System.out.println("Login success");
                response.sendRedirect("admin/admin-home.jsp");
            } else {
                // login failure
                response.sendRedirect("admin/index.jsp");
            }
        } catch (Exception err) {
            System.out.println("Error occurred");
            System.out.println(err);
        }
	}

}
