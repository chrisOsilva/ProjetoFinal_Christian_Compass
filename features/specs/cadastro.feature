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

@add_user_adm
Cenário: Cadastro de usuário adm
  Quando informar os campos "<nome>","<email>","<senha>"
  E marcar a opção Cadastrar como administrador?
  Então cadastro deverá ser concluido