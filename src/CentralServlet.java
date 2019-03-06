import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CentralServlet")
public class CentralServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<User> myUsers = new ArrayList<>();
        myUsers.add(new User("admin","test"));
        myUsers.add(new User("Joe","Lean"));

        String username;
        String password;
        User u1 = null;
        String nextJsp = null;
        String act = request.getParameter("hiddena");

        if (act.equals("start")){
            username = request.getParameter("username");
            password = request.getParameter("password");

            u1 = new User(username,password);

            if (myUsers.contains(u1)){
                HttpSession mySession = request.getSession(true);
                mySession.setAttribute("userAllowed", u1);

                nextJsp = "/inside.jsp";
            } else {
                nextJsp = "/logout.jsp";
            } //end of else
        } //end of if(start) statement

        if (act.equals("leave")){
            nextJsp = "/inside.jsp";
        } //end of if(leave)

        getServletContext().getRequestDispatcher(nextJsp).forward(request,response);
    } //end of doPost

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
