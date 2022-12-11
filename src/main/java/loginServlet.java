

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class loginServlet
 */
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
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
		   String email = request.getParameter("email");
	        String password = request.getParameter("password");
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = Database.getConnection();
	            String query = "select * from volunteer_details where email='"+email+"' AND password='"+password+"' ";
	            PreparedStatement ps = con.prepareStatement(query);
	            ResultSet rs = ps.executeQuery();
				boolean found = rs.next();

	            if(found) {
	                // login success
	                HttpSession session = request.getSession(true);
	                session.setAttribute("token", email + ":" + password + ":" + rs.getString("vname"));
	                System.out.println("Login success");
	                
	                if(rs.getInt("status") == 1) {
	                	response.sendRedirect("vol/index.jsp");	
	                } 
	                
	                else {
	                	response.sendRedirect("volunteer-not-approved.jsp");	
	                }
	                
	                
	            } else {
	                // login failure
	                response.sendRedirect("volunteer_login.jsp");
	            }
	        } catch (Exception err) {
	            System.out.println("Error occurred");
	            System.out.println(err);
	        }
	}

}
