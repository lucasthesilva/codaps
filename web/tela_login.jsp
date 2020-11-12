<%-- 
    Document   : tela_login
    Created on : 28/09/2020, 21:41:06
    Author     : Matheus
--%>


<!DOCTYPE html>
<html>
    <head>

        <title>Faça seu login</title>

        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">



    </head>




    <body>
        <div class="menu">
            <ul>
                <label class="subtitulo_inicial"> Felicidade é ter nosso lanche digno dos seus elogios </label>
                <li><a href ="tela_login.jsp" >Entre ou Cadastre-se</a></li>

            </ul>
        </div>

        <form class = "form_login" action="Logar" method="post"  >

            <div class = "div_principal_login">
                <div class = "div_top_login">
                    <img class = "img_brasao" src="Imagens/brasao.png" alt="">
                    <h2 class = "titulo_login">Insira seus dados</h2>
                    <p>Falta pouco para matar a fome :)</p>
                </div>

                <div class = "div_dados_login">
                    <label>CPF</label>
                    <input type="text" name="cpf" placeholder="Digite seu cpf" 
                           />

                </div>

                <div class = "div_dados_login">
                    <label>Senha</label>
                    <input type="password" name="senha" placeholder="Digite sua senha"
                           />
                </div>

                <div class = "div_dados_login btn">
                    <button type="submit">
                        <a href="tela_cadastro_usuario.jsp">NÃO TENHO CONTA :(</a>
                    </button>
                </div>

                <div class = "div_dados_login btn">
                    <button type="submit" name="btLogar" value="Logar"  />
                    ACESSAR
                    </button>
                </div>
            </div>


        </form>





    </body>
</html>
