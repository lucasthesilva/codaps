<%-- 
    Document   : tela_controla_pedido1
    Created on : 20/10/2020, 22:13:21
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controlador</title>
        
        
        <link rel="stylesheet"  type="text/css"  href="estilo.css">
    </head>
    <body>
        
        <div class="menu">
            <ul>
                <label class="subtitulo_inicial"> Felicidade é ter nosso lanche digno dos seus elogios </label>
                <li><a href ="tela_cadastro_ingrediente.jsp" >Cadastro de Ingrediente</a></li>
                <li><a href ="tela_controla_pedido.jsp" >Controlador Pedido</a></li>
                
                
            </ul>
        </div>
        
        <form class="form_controla_pedido1">
            <div class="div_controla_pedido">
                
                <table class="tabela_pequisa_pedido">
                    <tr>
                        <td>
                            <label class="lb_valor_pedido">Codigo do pedido: </label>
                            <input class="inp_controle" placeholder="Digite o código do pedido">
                            <button class="btn_controle">Pesquisa</button>
                        </td>
                        
                        <td>
                            <label class="lb_valor_pedido">Cliente: </label>
                            <input class="inp_controle" placeholder="Digite o cpf do cliente">
                            <button class="btn_controle">Pesquisa</button>
                        </td>
                        
                        <td>
                            <label class="lb_valor_pedido">Data: </label>
                            <input class="inp_controle" placeholder="Digite a data">
                            <button class="btn_controle">Pesquisa</button>
                        </td>
                    </tr>
                </table>
                
                
                <div class="div_tabela_controla_pedido">
                    <table class="tabela_controla_pedido">
                        <thead>
                            <th>ID</th>
                            <th>Data</th>
                            <th>Valor</th>
                            <th>CPF</th>
                        </thead>
                    
                    
                        <tbody class="tbody_controla_pedido">
                            <tr>
                                <td><a class="id_pedido">12345</a></td>
                                <td>21/10/2020</td>
                                <td class="valor">R$ 60,00</td>
                                <td>123.456.789.0</td>
                            </tr>
                            <tr>
                                <td><a class="id_pedido">12346</a></td>
                                <td>22/10/2020</td>
                                <td class="valor">R$ 50,00</td>
                                <td>987.654.321-0</td>
                            </tr>
                            <tr>
                                <td><a class="id_pedido">12347</a></td>
                                <td>23/10/2020</td>
                                <td class="valor">R$ 15.00</td>
                                <td>341.981.179-5</td>
                            </tr>
                            <tr>
                                <td><a class="id_pedido">12348</a></td>
                                <td>24/10/2020</td>
                                <td class="valor">R$ 28,00</td>
                                <td>411.111.008-7</td>
                            </tr>
                            <tr>
                                <td><a class="id_pedido">12349</a></td>
                                <td>25/10/2020</td>
                                <td class="valor">R$ 30,00</td>
                                <td>988.009.775-3</td>
                            </tr>
                        </tbody>
                        
                        
                    </table>
                    
                    <div class="div_valortotal_controle_pedido">
                        <label class="lb_valor_pedido">Valor total: </label>
                        <label class="lb_mostravalor_pedido">R$ 193,00</label>  
                    </div>
                </div>
                
            </div>
            
            <div class="div_mostra_pedidos">
                
                <div class="div_mostradetalhe">
                    <label class="num_lanche">Veja aqui detalhes do pedido</label>
                    <label class="lb_mostra_pedido">12345</label>
                    <label class="lb_mostra_pedido">-</label>
                    <label class="lb_mostra_valor">R$60,00</label>
                </div>
                
                <table class="tb_detalhe_pedido">
                    <tr>
                        <td class="td_detalhe_pedido">
                            <ul>
                                <li><label class="num_lanche">Lanche 01</label></li>
                                <li><label class="qtd_ingr">01 </label> <label>Pão Francês</label> <label class="valor_ingr"> R$ 1.50</label></li>
                                <li><label class="qtd_ingr">02 </label> <label>Picanha</label> <label class="valor_ingr"> R$ 9.00</label></li>
                                <li><label class="qtd_ingr">01 </label> <label>Vinagrete</label> <label class="valor_ingr"> R$ 1.00</label></li>
                                <li><label class="qtd_ingr">02 </label> <label>Pimenta</label> <label class="valor_ingr"> R$ 0.50</label></li>
                                <li>CPF: <label> 123.456.789.0</label></li>
                                <li>Data: <label> 21/10/2020</label></li>
                                <li><label class="qtd_ingr">Valor Total: </label><label class="valor_ingr"> R$12,00</label></li>
                            </ul>
                        </td>
                        
                        <td class="td_detalhe_pedido">
                            <ul>
                                <li><label class="num_lanche">Lanche 02</label></li>
                                <li><label class="qtd_ingr">01 </label> <label>Pão Francês</label> <label class="valor_ingr"> R$ 1.50</label></li>
                                <li><label class="qtd_ingr">02 </label> <label>Picanha</label> <label class="valor_ingr"> R$ 9.00</label></li>
                                <li><label class="qtd_ingr">01 </label> <label>Vinagrete</label> <label class="valor_ingr"> R$ 1.00</label></li>
                                <li><label class="qtd_ingr">02 </label> <label>Pimenta</label> <label class="valor_ingr"> R$ 0.50</label></li>
                                <li>CPF: <label> 123.456.789.0</label></li>
                                <li>Data: <label> 21/10/2020</label></li>
                                <li><label class="qtd_ingr">Valor Total: </label><label class="valor_ingr"> R$12,00</label></li>
                            </ul>
                        </td>
                        
                        <td class="td_detalhe_pedido">
                            <ul>
                                <li><label class="num_lanche">Lanche 03</label></li>
                                <li><label class="qtd_ingr">01 </label> <label>Pão Francês</label> <label class="valor_ingr"> R$ 1.50</label></li>
                                <li><label class="qtd_ingr">02 </label> <label>Picanha</label> <label class="valor_ingr"> R$ 9.00</label></li>
                                <li><label class="qtd_ingr">01 </label> <label>Vinagrete</label> <label class="valor_ingr"> R$ 1.00</label></li>
                                <li><label class="qtd_ingr">02 </label> <label>Pimenta</label> <label class="valor_ingr"> R$ 0.50</label></li>
                                <li>CPF: <label> 123.456.789.0</label></li>
                                <li>Data: <label> 21/10/2020</label></li>
                                <li><label class="qtd_ingr">Valor Total: </label><label class="valor_ingr"> R$12,00</label></li>
                            </ul>
                        </td>
                        
                        <td class="td_detalhe_pedido">
                            <ul>
                                <li><label class="num_lanche">Lanche 04</label></li>
                                <li><label class="qtd_ingr">01 </label> <label>Pão Francês</label> <label class="valor_ingr"> R$ 1.50</label></li>
                                <li><label class="qtd_ingr">02 </label> <label>Picanha</label> <label class="valor_ingr"> R$ 9.00</label></li>
                                <li><label class="qtd_ingr">01 </label> <label>Vinagrete</label> <label class="valor_ingr"> R$ 1.00</label></li>
                                <li><label class="qtd_ingr">02 </label> <label>Pimenta</label> <label class="valor_ingr"> R$ 0.50</label></li>
                                <li>CPF: <label> 123.456.789.0</label></li>
                                <li>Data: <label> 21/10/2020</label></li>
                                <li><label class="qtd_ingr">Valor Total: </label><label class="valor_ingr"> R$12,00</label></li>
                            </ul>
                        </td>
                        
                        <td class="td_detalhe_pedido">
                            <ul>
                                <li><label class="num_lanche">Lanche 05</label></li>
                                <li><label class="qtd_ingr">01 </label> <label>Pão Francês</label> <label class="valor_ingr"> R$ 1.50</label></li>
                                <li><label class="qtd_ingr">02 </label> <label>Picanha</label> <label class="valor_ingr"> R$ 9.00</label></li>
                                <li><label class="qtd_ingr">01 </label> <label>Vinagrete</label> <label class="valor_ingr"> R$ 1.00</label></li>
                                <li><label class="qtd_ingr">02 </label> <label>Pimenta</label> <label class="valor_ingr"> R$ 0.50</label></li>
                                <li>CPF: <label> 123.456.789.0</label></li>
                                <li>Data: <label> 21/10/2020</label></li>
                                <li><label class="qtd_ingr">Valor Total: </label><label class="valor_ingr"> R$12,00</label></li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </body>
</html>
