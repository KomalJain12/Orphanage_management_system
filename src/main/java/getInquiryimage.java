

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;

/**
 * Servlet implementation class getInquiryimage
 */
public class getInquiryimage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getInquiryimage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String image = request.getParameter("image");
	      
        ServletOutputStream out;
          
        // Writing this image 
        // content as a response 
        out = response.getOutputStream(); 
          
        // path of the image
        FileInputStream fin = new FileInputStream("C:\\Users\\jaink\\eclipse-workspace\\orphanage-management\\src\\main\\webapp\\inquiry_pic\\"+image);  
  
        // getting image in BufferedInputStream  
        BufferedInputStream bin = new BufferedInputStream(fin);
        BufferedOutputStream bout = new BufferedOutputStream(out);  
          
        int ch =0;  
        while((ch=bin.read())!=-1)  
        {  
            // display image
            bout.write(ch);  
        }  
          
        // close all classes
        bin.close();  
        fin.close();  
        bout.close();  
        out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
