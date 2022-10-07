#language: pt

@regression
@home
Funcionalidade: Home
  COMO usuário do Ecommerce ServeRest Store
  QUERO acessar a homepage
  PARA buscar produtos na página

Contexto: Acesso a home
  Dado que acesse a home 
  E esteja logado
   
@search_successfully
  Cenário: Buscar produto com sucesso
    Quando realizar uma busca por um produto existente
    Então deverão ser retornados resultados na busca

@search_without_success
  Cenário: Buscar produto sem resultado
   Quando realizar a busca por um produto inexistente
   Então devera apresentar a mensagem

@add_product_list
  Cenário: Adicionar produto a lista de compras
  Quando buscar por um produto desejado
  E clicar em adicionar a lista
  Então o produto deverá ser exibido na lista de compras