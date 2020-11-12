<%-- 
    Document   : tela_cadastro_usuario
    Created on : 29/09/2020, 20:02:48
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>



        <title>Cadastre-se</title>

        <meta charset="utf-8">
        <link rel="stylesheet"  type="text/css"  href="estilo.css">
    </head>

    <body>
        <div class="menu">
            <ul>
                <label class="subtitulo_inicial"> Felicidade é ter nosso lanche digno dos seus elogios </label>
                <li><a href ="tela_pedido.jsp" >Pedidos Online</a></li>


            </ul>
        </div>

        <form class="form_cadastro" action="ServletCliente" method="get">
            <div class="div_principal_cadastro">

                <div class="div_top_cadastro">
                    <img class="img_brasao" src="Imagens/brasao.png">
                    <p>Relaxa, são só alguns dados :)</p>

                </div>




                <div class="div_dados_cadastro">

                    <label>CPF</label>
                    <input type="text" name="cpf" id="cpf" placeholder="Digite seu cpf" >

                    <label>Nome</label>
                    <input type="text" name="nome" placeholder="Digite seu nome">

                    <label>Endereço</label>
                    <input type="text" name="endereco" placeholder="Digite seu endereço">

                    <label>Nº</label>
                    <input type="text" name="n" placeholder="Digite seu numero">

                    <label>Bairro</label>
                    <input type="text" name="bairro" placeholder="Digite seu bairro">

                    <label>CEP</label>
                    <input type="text" class="cep" id="cep" name="cep" placeholder="Digite seu CEP">

                    <label>Celular</label>
                    <input type="text"  name="celular" placeholder="Digite seu celular">

                    <label>Senha</label>
                    <input type="password" name="senha" placeholder="Digite sua senha">



                </div>

                <div class = "div_dados_cadastro btn">
                    <button type="submit" value="CADASTRAR" onclick="return confirm('Cadastrado com sucesso!')">

                        CADASTRAR

                    </button>

                </div>


            </div>        
        </form>



    </body>
</html>
