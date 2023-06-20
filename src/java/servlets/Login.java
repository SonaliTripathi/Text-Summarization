
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        try{
            String e=request.getParameter("email");
            String p=request.getParameter("pass");
            db.DbConnect db=new db.DbConnect();
            java.util.HashMap userDetails=db.checkLogin(e,p);
            if(userDetails!=null){
                session.setAttribute("userDetails", userDetails);
                session.setAttribute("logged", "logged");
                response.sendRedirect("index_1.jsp");
            }else{
                session.setAttribute("msg", "Email or Password Is Not Correct!");
                response.sendRedirect("index.jsp");
            }
        } catch (Exception ex) {
            session.setAttribute("msg", "Login Failed: "+ex);
            response.sendRedirect("index.jsp");
        }
    }
}
