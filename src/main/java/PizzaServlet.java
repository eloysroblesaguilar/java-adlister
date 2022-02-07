import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PizzaServlet", urlPatterns = "/pizza-order")
public class PizzaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


        request.getRequestDispatcher("/pizza.jsp").forward(request,response);
    }



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String size = request.getParameter("size");
        String sauce = request.getParameter("sauce");
        String crust = request.getParameter("crust");
        String pepperoni = request.getParameter("pepperoni");
        String sausage = request.getParameter("sausage");
        String pineapple = request.getParameter("pineapple");
        String address = request.getParameter("address");

        response.setContentType("text/html");
        PrintWriter printWriter = response.getWriter();

        printWriter.print("<html>");
        printWriter.print("<body>");
        printWriter.print("<h1>Pizza Form Data</h1>");
        printWriter.print("<p> size: " + size + "</p>");
        printWriter.print("<p> sauce: " + sauce + "</p>");
        printWriter.print("<p> crust: " + crust + "</p>");
        printWriter.print("<p> pepperoni: " + pepperoni + "</p>");
        printWriter.print("<p> sausage: " + sausage + "</p>");
        printWriter.print("<p> pineapple: " + pineapple + "</p>");
        printWriter.print("<p> address: " + address + "</p>");
        printWriter.print("</html>");
    }
}
