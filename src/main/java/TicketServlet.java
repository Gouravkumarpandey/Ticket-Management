import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/TicketServlet")
public class TicketServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        String passengerName = request.getParameter("passengerName");
        String age = request.getParameter("age");
        String stationFrom = request.getParameter("stationFrom");
        String stationFromOther = request.getParameter("stationFromOther");
        String stationTo = request.getParameter("stationTo");
        String stationToOther = request.getParameter("stationToOther");
        String journeyDate = request.getParameter("journeyDate");
        String indian = request.getParameter("indian");
        String meal = request.getParameter("meal");

        if ("Other".equals(stationFrom)) {
            stationFrom = stationFromOther;
        }

        if ("Other".equals(stationTo)) {
            stationTo = stationToOther;
        }

        session.setAttribute("passengerName", passengerName);
        session.setAttribute("age", age);
        session.setAttribute("stationFrom", stationFrom);
        session.setAttribute("stationTo", stationTo);
        session.setAttribute("indian", indian);
        session.setAttribute("meal", meal);
        session.setAttribute("journeyDate", journeyDate);

        response.sendRedirect("response.jsp");
    }
}