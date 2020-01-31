package murach.cart;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import murach.data.*;
import murach.business.*;

public class CartServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        ServletContext sc = getServletContext();
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "cart";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/index.jsp";
        if (action.equals("shop")) {
            url = "/index.jsp";    // the "index" page
        } 
        else if (action.equals("cart")) {
            url = "/cart.jsp";
            
            //get user data
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            
            //store user data in User object
            User user = new User(name, email);
            
            //validate user data
            String message1;
            if (name == null || email == null ||
                    name.isEmpty() || email.isEmpty())  {
                message1 = "Please fill both boxes.";
                url = "/index.jsp";
            }
            
            request.setAttribute("user", user);
            //request.setAttribute("message1", message1);
            
            // get book parameters
            
            String infinitygauntlet = request.getParameter("infinitygauntlet");
            String captainmarvel = request.getParameter("captainmarvel");
            String spiderman = request.getParameter("spiderman");
            String antman = request.getParameter("antman");
            
            //Validate that at least one book is selected
            String message2;
            if (infinitygauntlet == null && captainmarvel == null && spiderman == null && antman == null) {
                    message2 = "Please select at least one book.";
                    url = "/index.jsp";
            }
            else {
                   message2 = null;
            }
            request.setAttribute("message2", message2);
            
            request.setAttribute("infinitygauntlet", infinitygauntlet);
            request.setAttribute("captainmarvel", captainmarvel);
            request.setAttribute("spiderman", spiderman);
            request.setAttribute("antman", antman);
            
            

            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }

            
            

            session.setAttribute("cart", cart);
            
        }
        else if (action.equals("checkout")) {
            url = "/checkout.jsp";
        }

        sc.getRequestDispatcher(url)
                .forward(request, response);
    }
}