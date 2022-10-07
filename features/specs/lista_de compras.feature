#language: pt

@regression
@lista_compras
Funcionalidade: Lista de Compras
COMO usuário do Ecommerce ServeRest Store
QUERO visualizar os produtos adicionados a lista de compras
PARA prosseguir para compra dos produtos

Contexto: Acessar lista de compras
Dado que esteja logado

@add_carrinho
Cenário: Adicionar produto ao carrinho de compras
Quando escolher o produto desejado
Então produto deverá ser adicionado ao carrinho de compras