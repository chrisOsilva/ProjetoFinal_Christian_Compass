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
  Quando realizar login informando email e senha ja cadastrados
  Então login deverá ser concluido com sucesso
 
@login_invalido
Cenário: login invalido
    Quando realizar login informando "<email>" e "<senha>" não cadastrados
    Então deverá exibir a mensagem "<msg>"

    Exemplos:
  |email                |senha|msg                               |
  |chris@compass.com    |12345|Email e/ou senha inválidos        |
  |erick2020@hotmail.com|     |Password não pode ficar em branco |
  |                     |44444|Email é obrigatório               |
  |teste@uol.comp       |51191|Email deve ser um email válido    |