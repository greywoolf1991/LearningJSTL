import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/servlet")
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        boolean isVisible = Boolean.parseBoolean(req.getParameter("isVisible"));
        req.setAttribute("isVisible", isVisible);
        getServletContext()
                .getRequestDispatcher("/index.jsp")
                .forward(req, resp);
    }
}
