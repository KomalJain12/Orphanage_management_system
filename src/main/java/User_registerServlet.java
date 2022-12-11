import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


@SuppressWarnings("unused")
public class User_registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User_registerServlet() {
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

			PrintWriter out = response.getWriter();
			
			 String uname = request.getParameter("uname");
		     String email = request.getParameter("email");
		     String phone = request.getParameter("phone");
		     String city = request.getParameter("city");
		     String password = request.getParameter("password");
		     
			     
	    	
			     
	    	 try {
	    		 Connection con = Database.getConnection();
	    		 Statement stmt = con.createStatement();
	    		 
	    		 String sql = "select * from user_details where email='"+email+"'";
	    		 ResultSet rs=stmt.executeQuery(sql);
	    		 
	    		 if (rs.next()) {   
	    			 response.sendRedirect("user_register.jsp?em=yes");
	    		 }
	    		 else 
	    		 {
	    		
	    			 String sql1 = "INSERT INTO user_details VALUES ('"+uname+"','"+email+"','"+phone+"','"+city+"','"+password+"')";
	    			 stmt.execute(sql1);
	    			 HttpSession session = request.getSession(true);
	    			 session.setAttribute("user", uname);
	    			 response.sendRedirect("user_login.jsp?res=true");
	    		 }
		    		 
		    	 }catch(Exception e)
		    	 {
		    		 
		    		 System.out.println(e);
		    		 out.print("Database is not conneted");
		    	 }
	}

}
