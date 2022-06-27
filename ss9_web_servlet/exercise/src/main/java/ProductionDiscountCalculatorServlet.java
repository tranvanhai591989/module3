import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductDiscountCalculatorServlet", urlPatterns = "/discount_price")
public class ProductionDiscountCalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float price = Float.parseFloat(request.getParameter("price"));
        float discount = Float.parseFloat(request.getParameter("discount"));
        String description = request.getParameter("description");
        float priceDiscount = (price*discount)/100;
        float afterPriceDiscount = price-priceDiscount;
        request.setAttribute("description",description);
        request.setAttribute("price",price);
        request.setAttribute("discount",discount);
        request.setAttribute("priceDiscount",priceDiscount);
        request.setAttribute("afterPriceDiscount",afterPriceDiscount);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        requestDispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
