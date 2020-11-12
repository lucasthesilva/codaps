/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.Conexao;
import dao.DaoProduto;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Produto;

/**
 *
 * @author lucas
 */
@WebServlet(name = "ServletProduto", urlPatterns = {"/ServletProduto"})
public class ServletProduto extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");

        Produto p1 = new Produto();

        if (request.getParameter("ac").equals("salvar")) {

            p1.setTipo(request.getParameter("GrupoTipo"));
            p1.setNome(request.getParameter("nome"));
            p1.setValorUni(Double.parseDouble(request.getParameter("valor")));

            Connection conexao = new Conexao().getConnection();
            DaoProduto produtoDao = new DaoProduto(conexao);
            produtoDao.salvar(p1);

        }

        if (request.getParameter("ac").equals("atualizar")) {
            
            

            p1.setIdProduto(Integer.parseInt(request.getParameter("id")));
            p1.setTipo(request.getParameter("GrupoTipo"));
            p1.setNome(request.getParameter("nome"));
            p1.setValorUni(Double.parseDouble(request.getParameter("valor")));

            Connection conexao = new Conexao().getConnection();
            DaoProduto produtoDao = new DaoProduto(conexao);
            produtoDao.update(p1);

        }

        try (PrintWriter out = response.getWriter()) {

            response.sendRedirect("tela_cadastro_ingrediente.jsp");

        } finally {
            out.close();
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ServletProduto.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ServletProduto.class.getName()).log(Level.SEVERE, null, ex);
        }
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
