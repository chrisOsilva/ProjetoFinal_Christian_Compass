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

@login_invalido
Cenário: login invalido
    Quando realizar login informando "<email>","<senha>" não cadastrados
    Então deverá exibir a mensagem "<msg>"