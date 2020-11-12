/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controller.ClienteControlador;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cliente;

@WebServlet(name = "Logar", urlPatterns = {"/Logar"})
public class ServletLogar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

        } finally {
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("cpf");
        String senha = request.getParameter("senha");
        RequestDispatcher rd = null;
        Cliente user = new Cliente();
        user.setCpf(usuario);
        user.setSenha(senha);
        ClienteControlador uc = new ClienteControlador(user);
        if (uc.verificaUsuario()) {

            HttpSession sessao = request.getSession();
            sessao.setAttribute("cpf", usuario);
            rd = request.getRequestDispatcher("tela_pedido.jsp");
            rd.forward(request, response);
        } else {

            request.setAttribute("msg", "Usuário ou senha inválidos");
            rd = request.getRequestDispatcher("tela_login.jsp");
            rd.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
