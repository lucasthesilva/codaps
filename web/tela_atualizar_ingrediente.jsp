<%-- 
    Document   : tela_cadastro_ingrediente
    Created on : 30/09/2020, 19:08:45
    Author     : Matheus
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Produto"%>
<%@page import="dao.DaoProduto"%>
<%@page import="dao.Conexao"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar Ingredientes</title>

        <link rel="stylesheet"  type="text/css"  href="estilo.css">
    </head>
    <body>


        <div class="menu">
            
        </div>

        <form class="form_cadastro_ingredientes" action="ServletProduto" method="post">

            <div class="div_principal_ingredientes">

                <div class="div_centraliza_radio_button">

                    <h2 class="subtitulo_inicial_cadastro">O que deseja atualizar?</h2>

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

                        <label>ID: </label>
                        <input type="text" name="id" value="<%=request.getParameter("id")%>" readonly >


                        <label>Nome</label>
                        <input type="text" name="nome" value="<%=request.getParameter("nome")%>">

                        <label>Valor</label>
                        <input type="text" name="valor" value="<%=request.getParameter("valor")%>">
                        <input type="hidden" name="ac" value="atualizar">


                        <div class="div_dados_ingredientes btn">

                            <table class="tabela_botao">
                                <tr>
                                    <td class="td_botao">
                                        <button type="submit" value="atualizar" onclick="return confirm('Atualizado com sucesso!')">
                                            ATUALIZAR
                                        </button>


                                    </td>

                                </tr>

                            </table>



                        </div>

                    </div>    

                </div>

            </div>

        </form>

    </body>
</html>
