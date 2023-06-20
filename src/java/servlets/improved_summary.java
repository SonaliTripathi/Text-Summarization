package servlets;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class improved_summary extends HttpServlet{
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
                Part p=request.getPart("input2");
                String filename = p.getSubmittedFileName();
                System.out.println("Input filename is "+filename);
                String ext = filename.substring(filename.length()-4);
                System.out.println("extendsion"+ext);
                
                HttpSession s = request.getSession();
                s.setAttribute("ext", ext);
                
                ServletOutputStream out = response.getOutputStream();
                
                
                FileInputStream fis = (FileInputStream) p.getInputStream();
                
		SummaryTool summary = new SummaryTool();
		summary.init(fis);
		summary.extractSentenceFromContext();
		summary.groupSentencesIntoParagraphs();
		summary.printSentences();
		summary.createIntersectionMatrix();

		//System.out.println("INTERSECTION MATRIX");
		//summary.printIntersectionMatrix();

		summary.createDictionary();
		//summary.printDicationary();

		System.out.println("SUMMMARY");
		summary.createSummary();
//		summary.printSummary();
               
                
                s.setAttribute("summary", summary.getSummary());
                response.sendRedirect("Summary.jsp");

		summary.printStats();
	
}
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
