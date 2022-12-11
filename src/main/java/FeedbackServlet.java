

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class FeedbackServlet
 */
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackServlet() {
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
		PrintWriter out = response.getWriter();
		String blog_id = request.getParameter("blog_id");
		 String fname = request.getParameter("fname");
	     String femail = request.getParameter("femail");
	     String message = request.getParameter("message");
		     
   	 
		     
   	try {
		  Connection con = Database.getConnection();
        String query = "INSERT INTO `feedback_master` (`fid`,`blog_id`,`fname`, `femail`, `message`,`status`) VALUES (NULL,?, ?, ?, ?, 0);";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1,blog_id);
		ps.setString(2,fname);
		ps.setString(3,femail);
		ps.setString(4,message);
		
		if(ps.executeUpdate() == 1) {
			response.sendRedirect("singleblog.jsp?res=true");
		} else {
			response.sendRedirect("singleblog.jsp?res=false");
		}
		
	} catch(Exception err) {
		err.printStackTrace();
	}
	}

}
