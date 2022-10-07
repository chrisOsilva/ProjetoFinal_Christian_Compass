





AUTOR DO TRABALHO
CHRISTIAN OLIVEIRA DA SILVA


Apresentado o Projeto Final
 Programa de Bolsas
 Automação de Testes Front-End com Ruby

ALVORADA – RS 
2022

INTRODUÇÃO
O plano de testes abordado trata-se do e-commerce Serverest Store, priorizando o fluxo de compra de produtos.
Aqui serão demonstradas as principais funcionalidades onde todo o fluxo prioritário deve ser analisado e testado para se chegar ao objetivo final da aplicação.




OBJETIVOS
Mapear todas as funcionalidades e ações do e-commerce, observando os cenários que possam ser automatizados de modo a testar suas funcionalidades  visando encontrar problemas, e ofertar possíveis melhorias para aprimorar a experiência do usuário final e diminuir eventuais falhas no site que possam causar prejuízo para a empresa.


ESCOPO
Quais fluxos e funcionalidades são testadas:
        ◦ Cadastro
        ◦ Login
        ◦ Busca de Produtos
        ◦ Lista de Produtos 
        ◦ Carrinho de Compras
MAPA MENTAL

![Image](https://user-images.githubusercontent.com/111886256/194465731-ae756879-9049-461d-93ec-bed6cea4bade.png)






PRIORIDADES
Cadastro (Alta)
        ◦ Cadastrar usuários (Alta)
        ◦ Cadastrar administrador (Alta)
        ◦ Cadastrar Produtos (Alta)
        ◦ Listar Produtos (Baixa)
        ◦ Relatórios (Baixa)

Login (Alta)
        ◦ Logar usuário (Alta)

Home (Alta)
        ◦ Buscar Produtos (Média)
        ◦ Adicionar a lista (Média)

Lista de Compras (Média)
        ◦ Visualizar página do produto (Média)
        ◦ Quantidade de produtos (Baixa)
        ◦ Adicionar no carrinho de compras (Média)
        ◦ Limpar lista (Baixa)

Carrinho de Compras (Alta)


SUÍTE DE CASOS DE TESTE
Cadastro
        ◦ Validar cadastro completo;
Devem ser realizados cadastros para todos os tipos de usuários como, por exemplo, usuário padrão ou administrador
        ◦ Validar obrigatoriedade dos campos de cadastro;
Campos geralmente devem exibir sinalizando a obrigatoriedade
Após tentar efetuar o cadastro sem preenchimento os campos devem exibir destaque vermelho exibir alertas abaixo do campo de forma padronizada
        ◦ Validar alertas de dados inválidos no cadastro;
Após tentar efetuar o cadastro sem preenchimento os campos devem exibir destaque vermelho exibir alertas abaixo do campo de forma padronizada
        ◦ Validar tela de sucesso após cadastro;

Login
        ◦ Validar login valido;
        ◦ Validar login invalido;
        ◦ Validar alerta de obrigatoriedade dos campos;
        ◦ Validar direcionamento para o cadastro ao clicar no botão [Cadastre-se];

Home
        ◦ Validar página de busca de produtos;
        ◦ Validar página de busca de produtos não encontrados;
Verificar textos e exibição do termo buscado
        ◦ Validar direcionamento do botão [Adicionar a lista];

Lista de Compras
        ◦ Validar página do produto;
        ◦ Validar nome do produto;
        ◦ Validar preço do produto;
        ◦ Validar campo de quantidade através das opções [-] e [+] adicionando quantidades diversas de itens na lista de compras;
        ◦ Validar direcionamento do botão [Adicionar no carrinho]
        ◦ Validar direcionamento do botão [Limpar lista]
          
Carrinho de compras
        ◦ Validar carrinho com produtos;
          
ESTRATÉGIA DE TESTES
           	Serão feitos testes funcionais e testes E2E com uso de heurísticas e ferramentas, ambos os testes devem ser automatizados com objetivo de exercitar a aplicação, testando as funcionalidades e verificando se estão conforme as especificações dos requisitos.

Teste Funcional: Testar recursos do e-commerce, como cadastrar usuários, realizar login, pesquisar produtos, listar produtos, carrinho de compras, links;

Testes E2E: Executar testes no site para avaliar funções executadas para concluir uma tarefa importante, como comprar um produto no e-commerce apresentado;

Testes Automatizados: A vantagem dos testes automatizados é a facilidade de serem repetidos a qualquer momento. Sua implementação diminui o tempo de trabalho, reduzindo as possibilidades de falhas na execução.

OBJETIVO DOS TESTES
	Assegurar a navegação correta da aplicação, além da entrada e processamento de dados, executando cada funcionalidade, e fluxo de funcionalidades ou cenários, utilizando dados válidos e inválidos para identificar se o resultado esperado ocorrerá, quando usar dados inválidos mensagens erro/avisos apropriados serão exibidos.


CANDIDATOS A AUTOMAÇÃO
Cadastro: validar se foi realizado com sucesso, fazer validação dos campos obrigatórios, validar alerta de dados inválidos.
Login: validar dados corretos, validar alerta de dados obrigatórios, impedir o acesso a área logada de usuários caso o usuário não esteja cadastrado na aplicação e verificar o correto direcionamento para a página principal.
Busca de produtos: verificar a exibição dos produtos pesquisados e verificar o correto direcionamento para a lista de produtos.
Lista de produtos: verificar e validar se os produtos adicionados a lista são exibidos e como o esperado e o correto direcionamento para o carrinho de compras.

FERRAMENTAS
    • Google Chrome
    • Vscode
    • Xmind
    • Selenium 4.0
    • Github