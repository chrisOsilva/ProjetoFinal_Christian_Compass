# language: pt

@regression
@cadastro
Funcionalidade: Cadastro
COMO novo usuário do Ecommerce Serverest Store
QUERO me cadastrar 
PARA realizar compras

Contexto: Acessar pagina de cadastro
  Dado que esteja na pagina de cadastro

@add_user
Cenário: Cadastro de usuário comum
  Quando informar os campos corretamente
  E exibir a mensagem de sucesso
  Então cadastro deverá ser concluido

@add_user_adm
Cenário: Cadastro de usuário adm
  Quando informar os campos corretamente
  E marcar a opção Cadastrar como administrador?
  Então cadastro deverá ser concluido

@erro_add_user
Cenário: Falhas no cadastro
Quando informar os campos "<nome>", "<email>" e "<senha>" incorretos
Então deverá apresentar a "<mensagem>" de erro

Exemplos:
|nome |email                |senha  |mensagem                         |
|teste|teste@teste.copm     |1234547|Email deve ser um email válido   |
|teste|teste@compass.com.br |1234567|Este email já está sendo usado   |
|erick|erick2020@hotmail.com|       |Password não pode ficar em branco|
|dani |                     |4444489|Email é obrigatório              |
|     |edgar5005@compass.com|7979859|Nome não pode ficar em branco    |