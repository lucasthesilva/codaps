<%-- 
    Document   : tela_pedido
    Created on : 05/10/2020, 20:49:01
    Author     : Matheus
--%>



<%@page import="model.Cliente"%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Produto"%>
<%@page import="dao.Conexao"%>
<%@page import="dao.DaoProduto"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faça seu pedido</title>

        <link rel="stylesheet"  type="text/css"  href="estilo.css">
    </head>



    <script>
        function process(quant) {
            var value = parseInt(document.getElementById("quant").value);
            value += quant;
            if (value < 1) {
                document.getElementById("quant").value = 1;

            } else {
                document.getElementById("quant").value = value;


            }
        }

        function process1(quant) {
            var value = parseInt(document.getElementById("quant1").value);
            value += quant;
            if (value < 1) {
                document.getElementById("quant1").value = 1;
            } else {
                document.getElementById("quant1").value = value;


            }
        }

        function process2(quant) {
            var value = parseInt(document.getElementById("quant2").value);
            value += quant;
            if (value < 1) {
                document.getElementById("quant2").value = 1;
            } else {
                document.getElementById("quant2").value = value;


            }
        }

        function process3(quant) {
            var value = parseInt(document.getElementById("quant3").value);
            value += quant;
            if (value < 1) {
                document.getElementById("quant3").value = 1;
            } else {
                document.getElementById("quant3").value = value;
            }
        }

        function process4(quant) {
            var value = parseInt(document.getElementById("quant4").value);
            value += quant;
            if (value < 1) {
                document.getElementById("quant4").value = 1;
            } else {
                document.getElementById("quant4").value = value;
            }
        }


    </script>
    <body>
        <%            String dataAtual = new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date());
        %>

        <div class="menu">
            <ul>
                <label class="subtitulo_inicial"> Felicidade é ter nosso lanche digno dos seus elogios </label>
                <li><a href ="tela_pedido.jsp" >Pedidos Online</a></li>


            </ul>
        </div>


        <form class="form_principal_tela_pedido">

            <div class="div_principal_tela_pedido">

                <a href="tela_inicial.jsp"><img class="img_brasao" src="Imagens/brasao.png"></a>
                <h1>Monte seu lanche :)</h1>

                <button class="btn_carrinho"><a href="tela_carrinho.jsp">Carrinho</a></button>

                <div >
                    <label>Pao: </label>
                    <select name="cbPao" class="dropdown-select">

                        <%
                            Connection conexao = new Conexao().getConnection();
                            DaoProduto produtoDao = new DaoProduto(conexao);
                            ArrayList<Produto> list = produtoDao.selectAllProdutoPao();
                            Produto cid;
                            for (Object obj : list) {
                                cid = (Produto) obj;
                                out.println("<option value " + cid.getIdProduto() + "/>" + cid.getNome() + " - " + cid.getValorUni() + "</option>");
                            }
                        %> 


                    </select>


                    <input class="btn_qtd" type="button" id="plus" value='-' onclick="process(-1)" />
                    <input class="txt_und" id="quant" name="quant" class="text" size="1" type="text" value="1" maxlength="5" />
                    <input class="btn_qtd" type="button" id="minus" value='+' onclick="process(1)">


                    <div class="dropdown-list">


                    </div>

                </div>


                <div >
                    <label>Carne: </label>
                    <select name="cbCarne" class="dropdown-select">

                        <%
                            ArrayList<Produto> list1 = produtoDao.selectAllProdutoCarne();
                            Produto cid1;
                            for (Object obj : list1) {
                                cid1 = (Produto) obj;
                                out.println("<option value " + cid1.getIdProduto() + "/>" + cid1.getNome() + " - " + cid1.getValorUni() + "</option>");
                            }
                        %> 


                    </select>


                    <input class="btn_qtd" type="button" id="plus1" value='-' onclick="process1(-1)" />
                    <input class="txt_und" id="quant1" name="quant1" class="text" size="1" type="text" value="1" maxlength="5" />
                    <input class="btn_qtd" type="button" id="minus1" value='+' onclick="process1(1)">


                    <div class="dropdown-list">


                    </div>

                </div>

                <div >
                    <label>Salada: </label>
                    <select name="cbSalada" class="dropdown-select">

                        <%
                            ArrayList<Produto> list2 = produtoDao.selectAllProdutoSalada();
                            Produto cid2;
                            for (Object obj : list2) {
                                cid2 = (Produto) obj;
                                out.println("<option value " + cid2.getIdProduto() + "/>" + cid2.getNome() + " - " + cid2.getValorUni() + "</option>");
                            }
                        %> 


                    </select>


                    <input class="btn_qtd" type="button" id="plus2" value='-' onclick="process2(-1)" />
                    <input class="txt_und" id="quant2" name="quant2" class="text" size="1" type="text" value="0" maxlength="5" />
                    <input class="btn_qtd" type="button" id="minus2" value='+' onclick="process2(1)">



                    <div class="dropdown-list">


                    </div>

                </div>



                <div >
                    <label>Molho: </label>
                    <select name="cbMolho" class="dropdown-select">


                        <%
                            ArrayList<Produto> list3 = produtoDao.selectAllProdutoMolho();
                            Produto cid3;
                            for (Object obj : list3) {
                                cid3 = (Produto) obj;
                                out.println("<option value" + cid3.getIdProduto() + "/>" + cid3.getNome() + " - " + cid3.getValorUni() + "</option>");
                            }
                        %>  



                    </select>


                    <input class="btn_qtd" type="button" id="plus3" value='-' onclick="process3(-1)" />
                    <input class="txt_und" id="quant3" name="quant3" class="text" size="1" type="text" value="0" maxlength="5" />
                    <input class="btn_qtd" type="button" id="minus3" value='+' onclick="process3(1)">



                    <div class="dropdown-list">


                    </div>

                </div>

                <div class="div_inferior_pedido">
                    <label><b>Data:</b></h1></label>
                    <label> <%= dataAtual%></label>
                    <label>&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;</label>
                    <label><b>Cpf:</b></label>
                    <label> ${cpf}</label>
                    
                </div>

                <div class="div_inferior_pedido">
                    <label>Quantidade: </label>

                    <input class="btn_qtd" type="button" id="plus4" value='-' onclick="process4(-1)" />
                    <input class="txt_und" id="quant4" name="quant4" class="text" size="1" type="text" value="1" maxlength="5" />
                    <input class="btn_qtd" type="button" id="minus4" value='+' onclick="process4(1)">



                    <input class="txt_valor" type="text"  placeholder="Valor">
                </div>

                <div class="div_btn_pedido">
                    <button class="btn_pedido"><a href="tela_carrinho.jsp"> Adicionar ao carrinho</a></button>
                    <button class="btn_pedido"><a href="tela_inicial_pedido.jsp" onclick="return confirm('Pedido feito com sucesso! Obrigado pela preferência :)')">Finalizar pedido</a></button>
                </div>

            </div>
        </form>
    </body>
</html>

