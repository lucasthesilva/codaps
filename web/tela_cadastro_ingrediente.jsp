<%-- 
    Document   : tela_cadastro_ingrediente
    Created on : 30/09/2020, 19:08:45
    Author     : Matheus
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dao.Conexao"%>
<%@page import="dao.DaoProduto"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Ingredientes</title>

        <link rel="stylesheet"  type="text/css"  href="estilo.css">
    </head>
    <body>

        <div class="menu">
            <ul>
                <label class="subtitulo_inicial"> Felicidade é ter nosso lanche digno dos seus elogios </label>
                <li><a href ="tela_cadastro_ingrediente.jsp" >Cadastro de Ingrediente</a></li>
                <li><a href ="admin.jsp" >Controlador Pedido</a></li>


            </ul>
        </div>

        <form class="form_cadastro_ingredientes" action="ServletProduto" method="post" >

            <div class="div_sup_ingredientes">

                <div class="div_centraliza_radio_button">

                    <h2 class="subtitulo_inicial_cadastro">O que deseja cadastrar?</h2>

                    <ul class="ul_radio_button">
                        <li class="li_radio_button cadastrar_pao">


                            <input type="radio" value="Pao" name="GrupoTipo" id="cadastrar_pao"></button>
                            <label for="cadastrar_pao">Cadastrar Pão</label>
                        </li>

                        <li class="li_radio_button cadastrar_carne">
                            <input type="radio" value="Carne" name="GrupoTipo" id="cadastrar_carne"></button>
                            <label for="cadastrar_carne">Cadastrar Carne</label>
                        </li>

                        <li class="li_radio_button cadastrar_salada">
                            <input type="radio" value="Salada" name="GrupoTipo" id="cadastrar_salada"></button>
                            <label for="cadastrar_salada">Cadastrar Salada</label>
                        </li>

                        <li class="li_radio_button cadastrar_molho">
                            <input type="radio" value="Molho" name="GrupoTipo" id="cadastrar_molho"></button>
                            <label for="cadastrar_molho">Cadastrar Molho</label>
                        </li>

                    </ul>

                </div>  

                <div class="div_centraliza_dados_ingredientes">

                    <div class="div_dados_ingredientes">

                        



                        <label>Nome</label>
                        <input type="text" name="nome" placeholder="Digite o nome do ingrediente">

                        <label>Valor</label>
                        <input type="text" name="valor" placeholder="Digite o valor do ingrediente">
                        <input type="hidden" name="ac" value="salvar">

                        <div class="div_dados_ingredientes btn">

                            <table class="tabela_botao">
                                <tr>
                                    <td class="td_botao">
                                        <button type="submit" value="salvar" onclick="return confirm('Salvo com sucesso!')">
                                            SALVAR
                                        </button>

                                    </td>


                                </tr>

                            </table>

                        </div>
                    </div>    
                </div>

                <div class="div_principal_ingredientes">
                    <div class="filtro">
                        
                    </div> 

                    <div class="div_nome_tbingr"><label>Pães Cadastrados</label></div>

                    <div class="div_tb_ingrediente">
                        <table class="tabela_ingrediente">
                            <thead>
                            <th>ID</th>
                            <th>Tipos de Saladas</th>
                            <th>Valor</th>
                            <th>Tipo</th>
                            <th>Alterar</th>
                            <th>Excluir</th>
                            </thead>   

                            <tfoot>
                                <tr>
                                    <td colspan="3"><img class="img_tabela" src="Imagens/brasao.png"></td>
                                </tr>
                            </tfoot>

                            <%  Connection conexao = new Conexao().getConnection();
                                DaoProduto produtoDao = new DaoProduto(conexao);

                                ArrayList<Produto> produto = produtoDao.selectAllProdutoPao();

                                for (int i = 0; i < produto.size(); i++) {

                                    Produto cadaProduto = produto.get(i);


                            %>

                            <tbody class="tbody_cadastrar_ingrediente">
                                <tr class="linhadatabela">
                                    <td><%= cadaProduto.getIdProduto()%> </td>
                                    <td><%= cadaProduto.getNome()%></td>
                                    <td class="valor"> <%= cadaProduto.getValorUni()%></td>
                                    <td><%= cadaProduto.getTipo()%></td>
                                    <td> <a href="tela_atualizar_ingrediente.jsp?id=<%=cadaProduto.getIdProduto()%>&AMP;nome=<%= cadaProduto.getNome()%>&AMP;valor=<%= cadaProduto.getValorUni()%>&AMP;tipo=<%= cadaProduto.getTipo()%>">Alterar</a> </td>
                                    <td> <a href="excluir.jsp?id=<%=cadaProduto.getIdProduto()%>" onclick="return confirm('Deseja realmente excluir?')">Excluir</a> </td>


                                </tr>
                                <%
                                    }


                                %>

                            </tbody>

                        </table>
                    </div>
                </div>    

                <div class="div_principal_ingredientes">
                    <div class="filtro">
                        
                    </div> 

                    <div class="div_nome_tbingr"><label>Carnes Cadastradas</label></div>

                    <div class="div_tb_ingrediente">
                        <table class="tabela_ingrediente">
                            <thead>
                            <th>ID</th>
                            <th>Tipos de Saladas</th>
                            <th>Valor</th>
                            <th>Tipo</th>
                            <th>Alterar</th>
                            <th>Excluir</th>
                            </thead>   



                            <tfoot>
                                <tr>
                                    <td colspan="3"><img class="img_tabela" src="Imagens/brasao.png"></td>
                                </tr>
                            </tfoot>

                            <%                                
                                
                                
                                ArrayList<Produto> produto1 = produtoDao.selectAllProdutoCarne();

                                for (int i = 0; i < produto1.size(); i++) {

                                    Produto cadaProduto = produto1.get(i);


                            %>



                            <tbody class="tbody_cadastrar_ingrediente">
                                <tr class="linhadatabela">
                                    <td><%= cadaProduto.getIdProduto()%> </td>
                                    <td><%= cadaProduto.getNome()%></td>
                                    <td class="valor"> <%= cadaProduto.getValorUni()%></td>
                                    <td><%= cadaProduto.getTipo()%></td>
                                    <td> <a href="tela_atualizar_ingrediente.jsp?id=<%=cadaProduto.getIdProduto()%>&AMP;nome=<%= cadaProduto.getNome()%>&AMP;valor=<%= cadaProduto.getValorUni()%>&AMP;tipo=<%= cadaProduto.getTipo()%>">Alterar</a> </td>
                                    <td> <a href="excluir.jsp?id=<%=cadaProduto.getIdProduto()%>" onclick="return confirm('Deseja realmente excluir?')">Excluir</a> </td>





                                </tr>
                                <%
                                    }
                                %>
                            </tbody>

                        </table>
                    </div>
                </div>

                <div class="div_principal_ingredientes">
                    <div class="filtro">
                        
                    </div> 

                    <div class="div_nome_tbingr"><label>Salada Cadastradas</label></div>

                    <div class="div_tb_ingrediente">
                        <table class="tabela_ingrediente">
                            <thead>
                            <th>ID</th>
                            <th>Tipos de Saladas</th>
                            <th>Valor</th>
                            <th>Tipo</th>
                            <th>Alterar</th>
                            <th>Excluir</th>
                            </thead>   

                            <tfoot>
                                <tr>
                                    <td colspan="3"><img class="img_tabela" src="Imagens/brasao.png"></td>
                                </tr>
                            </tfoot>

                            <%
                                ArrayList<Produto> produto2 = produtoDao.selectAllProdutoSalada();

                                for (int i = 0; i < produto2.size(); i++) {

                                    Produto cadaProduto = produto2.get(i);


                            %>

                            <tbody class="tbody_cadastrar_ingrediente">
                                <tr class="linhadatabela">
                            <td><%= cadaProduto.getIdProduto()%> </td>
                            <td><%= cadaProduto.getNome()%></td>
                            <td class="valor"> <%= cadaProduto.getValorUni()%></td>
                            <td><%= cadaProduto.getTipo()%></td>
                            <td> <a href="tela_atualizar_ingrediente.jsp?id=<%=cadaProduto.getIdProduto()%>&AMP;nome=<%= cadaProduto.getNome()%>&AMP;valor=<%= cadaProduto.getValorUni()%>&AMP;tipo=<%= cadaProduto.getTipo()%>">Alterar</a> </td>
                            <td> <a href="excluir.jsp?id=<%=cadaProduto.getIdProduto()%>" onclick="return confirm('Deseja realmente excluir?')">Excluir</a> </td>


                            </tr>
                            <%
                                }
                            %>
                            </tbody>

                        </table>
                    </div>    
                </div>

                <div class="div_principal_ingredientes">
                    <div class="filtro">
                        
                    </div> 

                    <div class="div_nome_tbingr"><label>Molhos Cadastrados</label></div>

                    <div class="div_tb_ingrediente">
                        <table class="tabela_ingrediente">
                            <thead>
                            <th>ID</th>
                            <th>Tipos de Saladas</th>
                            <th>Valor</th>
                            <th>Tipo</th>
                            <th>Alterar</th>
                            <th>Excluir</th>
                            </thead>   

                            <tfoot>
                                <tr>
                                    <td colspan="3"><img class="img_tabela" src="Imagens/brasao.png"></td>
                                </tr>
                            </tfoot>

                            <%
                                ArrayList<Produto> produto3 = produtoDao.selectAllProdutoMolho();

                                for (int i = 0; i < produto3.size(); i++) {

                                    Produto cadaProduto = produto3.get(i);


                            %>

                            <tbody class="tbody_cadastrar_ingrediente">
                                <tr class="linhadatabela">
                            <td><%= cadaProduto.getIdProduto()%> </td>
                            <td><%= cadaProduto.getNome()%></td>
                            <td class="valor"> <%= cadaProduto.getValorUni()%></td>
                            <td><%= cadaProduto.getTipo()%></td>
                            <td> <a href="tela_atualizar_ingrediente.jsp?id=<%=cadaProduto.getIdProduto()%>&AMP;nome=<%= cadaProduto.getNome()%>&AMP;valor=<%= cadaProduto.getValorUni()%>&AMP;tipo=<%= cadaProduto.getTipo()%>">Alterar</a> </td>
                            <td> <a href="excluir.jsp?id=<%=cadaProduto.getIdProduto()%>" onclick="return confirm('Deseja realmente excluir?')">Excluir</a> </td>



                            </tr>
                            <%
                                }
                            %>
                            </tbody>

                        </table>
                    </div> 
                </div> 
            </div>    
        </form>
    </body>
</html>
