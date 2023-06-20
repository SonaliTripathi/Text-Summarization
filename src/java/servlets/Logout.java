package servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Logout extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
         HashMap userDetails=(HashMap)session.getAttribute("userDetails");
        if(userDetails!=null){
            session.removeAttribute("summary");
            session.invalidate();
            response.sendRedirect("index.jsp");
        }else{
            session.setAttribute("msg", "Plz login First!");
            response.sendRedirect("index.jsp");
        }
    }
}
