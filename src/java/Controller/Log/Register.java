/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Log;

import DAO.AccountDao;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
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
@WebServlet(name = "Register", urlPatterns = {"/register"})
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
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
            String destpage = "register.jsp";

            String acc = request.getParameter("acc");
            String pass = request.getParameter("pass");
            String email = request.getParameter("email");
            String name = request.getParameter("name");

            Account a = new Account(acc, pass, email, name);
            //get DAO
            List<Account> accounts = new AccountDao().getAll();

            if (acc.isEmpty()||pass.isEmpty()||email.isEmpty()||name.isEmpty()||checkAccountExist(accounts, acc)) {
                //regis that bai
                String meswrong = "Đăng kí không thành công";
                request.setAttribute("meswrong", meswrong);
                request.getRequestDispatcher(destpage).forward(request, response);
            } else if (new AccountDao().add(a)) {
                //regis thanh cong
                request.setAttribute("account", a);
                String mesright = "Đăng kí thành công";
                request.setAttribute("mesright", mesright);
                request.getRequestDispatcher(destpage).forward(request, response);
            }

        }
    }

    public boolean checkAccountExist(List<Account> accounts, String acc) {
        for (int i = 0; i < accounts.size(); i++) {
            if (accounts.get(i).getAccount().equalsIgnoreCase(acc)) {
                return true;
            }
        }
        return false;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
