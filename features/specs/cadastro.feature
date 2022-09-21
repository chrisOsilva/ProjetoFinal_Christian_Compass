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
  Quando informar os campos "<nome>","<email>","<senha>"
  E exibir a mensagem "<msg>"
  Então cadastro deverá ser concluido

  Exemplos:
  |nome |email                |senha |msg                           |
  |caua |caua2033@hotmail.com |141414|Cadastro realizado com sucesso|
  # |erick|erick2420@hotmail.com|777774|Cadastro realizado com sucesso|
  # |caue |caue2254@hotmail.com |456785|Cadastro realizado com sucesso|
  # |fabio|fabio1660@hotmail.com|344356|Cadastro realizado com sucesso|

@add_user_adm
Cenário: Cadastro de usuário adm
  Quando informar os campos "<nome>","<email>","<senha>"
  E marcar a opção Cadastrar como administrador?
  Então cadastro deverá ser concluido

  Exemplos:
  |nome   |email            |senha |
  |daniela|dani333@gmail.com|151515|