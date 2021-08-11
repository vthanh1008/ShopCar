/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Cart;

import DAO.ProductsDao;
import entity.Cart;
import entity.Products;
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
@WebServlet(name = "UpdateCart", urlPatterns = {"/updatecart"})
public class UpdateCart extends HttpServlet {

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
            int action = Integer.parseInt(request.getParameter("action"));
            int id = Integer.parseInt(request.getParameter("id"));
            HttpSession session = request.getSession(true);
            //add list to session 
            List<Cart> lc = (List<Cart>) session.getAttribute("cart");
            Products p = new ProductsDao().getOne(id);
            Products p1 = new Products();
            Cart c = new Cart();
            c.setProductId(p.getId());
            c.setProductName(p.getName());
            c.setProductImage(p.getImages());
            c.setProductPrice(p.getPrice());
            c.setAmount(1);
            c.setTotalPrice(c.getAmount() * c.getProductPrice());
            boolean isTrue = true;
            String page = "";
         
            for (int i = 0; i < lc.size(); i++) {
                if (lc.get(i).getProductId() == id) {
                    if (action == 1&&lc.get(i).getAmount()>0) {
                        lc.get(i).setAmount(lc.get(i).getAmount() - 1);
                       
                    }
                    if (action == 2&&lc.get(i).getAmount()<p.getQuanlity()) {
                        lc.get(i).setAmount(lc.get(i).getAmount() + 1);
                    }
                    if (action == 3) {
                        lc.remove(i);
                    }
               
                }
            }
           

            session.setAttribute("cart", lc);
            page = "cart.jsp";
            response.sendRedirect(page);
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
