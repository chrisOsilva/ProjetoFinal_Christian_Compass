# language : pt

@regression
@login
Funcionalidade: Login
COMO usuário do Ecommerce Serverest Store
QUERO realizar a autenticação
PARA acessar a home da pagina

Contexto: Acessar página de Login
  Dado que a página de login esteja aberta

@login_valido
Cenário: login valido
  Quando realizar login informando "<email>","<senha>" ja cadastrados
  Então login deverá ser concluido com sucesso

  Exemplos:
  |email                |senha |
  |caua2033@hotmail.com |141414|
  # |erick2020@hotmail.com|777774|
  # |caue2204@hotmail.com |456785|
  # |fabio1260@hotmail.com|344356|

@login_invalido
Cenário: login invalido
    Quando realizar login informando "<email>","<senha>" não cadastrados
    Então deverá exibir a mensagem "<msg>"

    Exemplos:
  |email                |senha|msg                               |
  |chis@gmail.com       |12345|Email e/ou senha inválidos        |
  |erick2020@hotmail.com|     |Password não pode ficar em branco |
  |                     |44444|Email é obrigatório               |