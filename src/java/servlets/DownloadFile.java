package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DownloadFile extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String filename="Summary.txt";
            String content = (String)request.getSession().getAttribute("summary");
            byte[] b=content.getBytes();
            if(b!=null){
                response.setContentType("APPLICATION/OCTET-STREAM");   
                response.setHeader("Content-Disposition","attachment; filename="+filename); 
                response.getOutputStream().write(b);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
    }
}
