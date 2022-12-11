

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

/**
 * Servlet implementation class ContactServlet
 */
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactServlet() {
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
		
		 String vname = request.getParameter("vname").trim();
	     String email = request.getParameter("email").trim();
	     String phone = request.getParameter("phone").trim();
	     String country = request.getParameter("country").trim();
	     String state = request.getParameter("state").trim();
	     String city = request.getParameter("city").trim();
	     String add1 = request.getParameter("add1").trim();
	     String add2 = request.getParameter("add2").trim();
	     String password = request.getParameter("password").trim();
	     
		     
   	 Connection connection = null;
		     
   	 try {
   		 connection = Database.getConnection();
   		 Statement stmt = connection.createStatement();
   		 
   		 String sql = "select * from volunteer_details where email='"+email+"'";
   		 ResultSet rs=stmt.executeQuery(sql);
   		 
   		 if (rs.next()) {   
   			 response.sendRedirect("register.jsp?em=yes");
   		 }
   		 else 
   		 {
   		
   			 String sql1 = "INSERT INTO volunteer_details VALUES ('"+vname+"','"+email+"','"+phone+"','"+country+"','"+state+"','"+city+"','"+add1+"','"+add2+"','"+password+"',0)";
   			 stmt.execute(sql1);
   			 HttpSession session = request.getSession(true);
   			 session.setAttribute("user", vname);
   			 response.sendRedirect("login.jsp?res=true");
   		 }
	    		 
	    	 }catch(Exception e)
	    	 {
	    		 
	    		 System.out.println(e);
	    		 out.print("Database is not conneted");
	    	 }
}

}
