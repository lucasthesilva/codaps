<%-- 
    Document   : tela_carrinho
    Created on : 13/10/2020, 22:32:37
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seu carrinho</title>

        <link rel="stylesheet"  type="text/css"  href="estilo.css">
    </head>

    <%
        String dataAtual = new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date());
    %>
    <body>
        <form class="form_carrinho">
            <div class="div_dados_carrinho">

                <ul>
                    <li>
                        <label>Código do pedido:</label> 
                        <label>Mostra Código</label>
                    </li>

                    <li>
                        <label>Data:</label>
                        <label> <%=dataAtual  %></label>
                    </li>

                    <li>
                        <label>CPF:</label>
                        <label> </label>
                    </li>
                </ul>

            </div>

            <div class="div_tabela_carrinho2">
                <table class="tabela_carrinho">

                    <thead class="thead_carrinho">
                    <th class="th_tabela_carrinho">Lanche</th>
                    <th class="th_tabela_carrinho">Tipo do Pão</th>
                    <th class="th_tabela_carrinho">Tipo da Carne</th>
                    <th class="th_tabela_carrinho">Tipo da Salada</th>
                    <th class="th_tabela_carrinho">Tipo do Molho</th>
                    <th class="th_tabela_carrinho">Valor do Lanche</th>
                    </thead> 

                    <tbody class="tbody_carrinho">
                        <tr class="linha_tabela_carrinho">
                            <td>1</td>
                            <td>Hamburguer
                                <label class="valor">R$3.00</label>
                                <div class="div_qtd_ingrediente_carrinho">
                                    <button class="btn_qtd">+</button>
                                    <input class="txt_und" type="text"  placeholder="UND">
                                    <button class="btn_qtd">-</button>
                                </div>
                            </td>
                            <td>Picanha
                                <label class="valor">R$4.50</label>
                                <div class="div_qtd_ingrediente_carrinho">
                                    <button class="btn_qtd">+</button>
                                    <input class="txt_und" type="text"  placeholder="UND">
                                    <button class="btn_qtd">-</button>
                                </div>
                            </td>
                            <td>Vinagrete
                                <label class="valor">R$2.00</label>
                                <div class="div_qtd_ingrediente_carrinho">
                                    <button class="btn_qtd">+</button>
                                    <input class="txt_und" type="text"  placeholder="UND">
                                    <button class="btn_qtd">-</button>
                                </div>
                            </td>
                            <td>Pimenta
                                <label class="valor">R$1.00</label>
                                <div class="div_qtd_ingrediente_carrinho">
                                    <button class="btn_qtd">+</button>
                                    <input class="txt_und" type="text"  placeholder="UND">
                                    <button class="btn_qtd">-</button>
                                </div>
                            </td>
                            <td>

                                <label>Valor: </label>
                                <label class="valor"> Mostra valor</label>

                                <div class="div_qtd_ingrediente_carrinho">

                                    <button class="btn_excluir_carrinho">Excluir</button>

                                </div>
                            </td>

                        </tr>
                    </tbody>



                    <tbody class="tbody_carrinho">
                        <tr>
                            <td>2</td>
                            <td>Hamburguer
                                <label class="valor">R$3.00</label>
                                <div class="div_qtd_ingrediente_carrinho">
                                    <button class="btn_qtd">+</button>
                                    <input class="txt_und" type="text"  placeholder="UND">
                                    <button class="btn_qtd">-</button>
                                </div>
                            </td>
                            <td>Picanha
                                <label class="valor">R$4.50</label>
                                <div class="div_qtd_ingrediente_carrinho">
                                    <button class="btn_qtd">+</button>
                                    <input class="txt_und" type="text"  placeholder="UND">
                                    <button class="btn_qtd">-</button>
                                </div>
                            </td>
                            <td>Vinagrete
                                <label class="valor">R$2.00</label>
                                <div class="div_qtd_ingrediente_carrinho">
                                    <button class="btn_qtd">+</button>
                                    <input class="txt_und" type="text"  placeholder="UND">
                                    <button class="btn_qtd">-</button>
                                </div>
                            </td>
                            <td>Pimenta
                                <label class="valor">R$1.00</label>
                                <div class="div_qtd_ingrediente_carrinho">
                                    <button class="btn_qtd">+</button>
                                    <input class="txt_und" type="text"  placeholder="UND">
                                    <button class="btn_qtd">-</button>
                                </div>
                            </td>
                            <td>

                                <label>Valor: </label>
                                <label class="valor"> Mostra valor</label>

                                <div class="div_qtd_ingrediente_carrinho">

                                    <button class="btn_excluir_carrinho">Excluir</button>

                                </div>
                            </td>

                        </tr>
                    </tbody>



                    <tbody class="tbody_carrinho">
                        <tr>
                            <td>3</td>
                            <td>Hamburguer
                                <label class="valor">R$3.00</label>
                                <div class="div_qtd_ingrediente_carrinho">
                                    <button class="btn_qtd">+</button>
                                    <input class="txt_und" type="text"  placeholder="UND">
                                    <button class="btn_qtd">-</button>
                                </div>
                            </td>
                            <td>Picanha
                                <label class="valor">R$4.50</label>
                                <div class="div_qtd_ingrediente_carrinho">
                                    <button class="btn_qtd">+</button>
                                    <input class="txt_und" type="text"  placeholder="UND">
                                    <button class="btn_qtd">-</button>
                                </div>
                            </td>
                            <td>Vinagrete
                                <label class="valor">R$2.00</label>
                                <div class="div_qtd_ingrediente_carrinho">
                                    <button class="btn_qtd">+</button>
                                    <input class="txt_und" type="text"  placeholder="UND">
                                    <button class="btn_qtd">-</button>
                                </div>
                            </td>
                            <td>Pimenta
                                <label class="valor">R$1.00</label>
                                <div class="div_qtd_ingrediente_carrinho">
                                    <button class="btn_qtd">+</button>
                                    <input class="txt_und" type="text"  placeholder="UND">
                                    <button class="btn_qtd">-</button>
                                </div>
                            </td>
                            <td>

                                <label>Valor: </label>
                                <label class="valor"> Mostra valor</label>

                                <div class="div_qtd_ingrediente_carrinho">

                                    <button class="btn_excluir_carrinho">Excluir</button>

                                </div>
                            </td>

                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="div_valortotal_carrinho">
                <h1 class="lb_valor_h1">Valor total: </h1>
                <h1 class="valor_total_carrinho">R$31.50</h1>

            </div>

            <div class="div_h3_carrinho">
                <h3>DESEJA FINALIZAR PEDIDO?</h3>
            </div>

            <table class="tabela_botao">
                <tr>
                    <td class="td_botao">
                        <button>
                            <a href="tela_pedido.jsp">VOLTAR</a>
                        </button>
                    </td>

                    <td class="td_botao">
                        <button>
                            <a href="">SIM</a>
                        </button>
                    </td>

                    <td class="td_botao">
                        <button>
                            <a href="">CANCELAR PEDIDO</a>
                        </button>
                    </td>
                </tr>

        </form>


    </body>
</html>
