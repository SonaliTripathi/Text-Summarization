
package servlets;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class Register extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        try{
            String n=request.getParameter("name");
            String e=request.getParameter("email");
            String p=request.getParameter("password");
            String cp=request.getParameter("cpassword");
            java.util.HashMap userDetails=new java.util.HashMap();
            userDetails.put("email", e);
            userDetails.put("name", n);
            userDetails.put("pass", p);
            userDetails.put("cpass", cp);
            db.DbConnect db=new db.DbConnect();
            String m=db.insertUser(userDetails);
            if(m.equalsIgnoreCase("Success")){
                userDetails.remove("pass");
                session.setAttribute("userDetails", userDetails);
                session.setAttribute("logged", "logged");
                response.sendRedirect("index_1.jsp");
            }else if(m.equalsIgnoreCase("Already")){
                session.setAttribute("msg", "Email ID Already Exist!");
                response.sendRedirect("index.jsp");
            }else {
                session.setAttribute("msg", "Registration Failed!");
                response.sendRedirect("index.jsp");
            }
        } catch (Exception ex) {
            session.setAttribute("msg", "Registration Failed: "+ex);
            response.sendRedirect("index.jsp");
        }
    }
}
