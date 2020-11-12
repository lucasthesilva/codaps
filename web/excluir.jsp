<%@page import="model.Produto"%>
<%@page import="dao.Conexao"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.DaoProduto"%>

<%

    Connection conexao = new Conexao().getConnection();
    DaoProduto produtoDao = new DaoProduto(conexao);

    

    Produto p1 = new Produto();

    p1.setIdProduto(Integer.parseInt(request.getParameter("id")));

    produtoDao.delete(p1);
    
    response.sendRedirect("tela_cadastro_ingrediente.jsp");


%>