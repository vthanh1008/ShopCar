/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Cart;

import DAO.Filter.BrandDao;
import DAO.Filter.TypeDao;
import DAO.ProductsDao;
import entity.Brand;
import entity.Cart;
import entity.Products;
import entity.Type;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "AddToCart", urlPatterns = {"/add-to-cart"})
public class AddToCart extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            //get to product
            int id = Integer.parseInt(request.getParameter("id"));
            Products p = new ProductsDao().getOne(id);

            HttpSession session = request.getSession();
            //add list to session 
            List<Cart> lc = (List<Cart>) session.getAttribute("cart");

            Cart c = new Cart();
            c.setProductId(p.getId());
            c.setProductName(p.getName());
            c.setProductImage(p.getImages());
            c.setProductPrice(p.getPrice());
            c.setAmount(1);
            c.setTotalPrice(c.getAmount() * c.getProductPrice());
            Products p1 = new Products();
            if (lc == null) {//chua co list gio hang
                lc = new ArrayList<>();
                lc.add(c);
            } else {
                boolean isCheck = true;
                for (Cart cart : lc) {
                    //duyet xem sp co hay chua co
                    if (cart.getProductId() == id) {
                            cart.setAmount(cart.getAmount() + 1);
                           
                            isCheck = false;
                            break;
                    }
               
                
                }
                if (isCheck) {//Trong th ko tim thay thi tao moi 
                    lc.add(c);
                }
            }
            if (lc.size() == 0) {
                lc = null;
            }
            session.setAttribute("cart", lc);
            response.sendRedirect("products#portfolio");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
