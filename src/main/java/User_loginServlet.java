

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
public class User_loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User_loginServlet() {
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
        try 
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = Database.getConnection();
            String query = "select * from user_details where email='"+email+"' AND password='"+password+"' ";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
			boolean found = rs.next();

            if(found) 
            {
                // login success
                HttpSession session = request.getSession(true);
                session.setAttribute("token", email + ":" + password + ":" + rs.getString("uname"));
                System.out.println("Login success");
                response.sendRedirect("index.jsp?res=true");
            } else 
            {
                // login failure
                response.sendRedirect("user_login.jsp?res=false");
            }
        } catch (Exception err)
        {
            System.out.println("Error occurred");
            System.out.println(err);
        }
	}

}
