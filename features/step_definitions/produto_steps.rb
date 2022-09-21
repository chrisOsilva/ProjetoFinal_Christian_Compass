Dado('que acesse a home') do
    @home_page = Home.new
    @home_page.load
end

Dado('esteja logado') do
    @home_page.login("caua2033@hotmail.com","141414")
  end
  ## Produto Existente ###
  Quando('realizar uma busca por um produto existente') do
    @home_page.pesquisar_pdt('Logitech')
  end
  
  Então('deverão ser retornados resultados na busca') do
    expect(@home_page).to have_content('Logitech MX Vertical')
  end
  ## Produto inexisteste ###
  Quando('realizar uma busca por um produto inexistente') do
    @home_page.pesquisar_pdt('Tv Lg 40 polegadas')
  end
  
  Então('devera apresentar a mensagem {string}') do |msg|
    expect(@home_page).to have_content("Nenhum produto foi encontrado")
  end

  ###Adicionar Produto a lista de compras###
  Quando('buscar por um produto desejado') do
    @home_page.pesquisar_pdt('Modern Cotton Sausages')
  end
  
  Quando('clicar em adicionar a lista') do
    @home_page.add_pdt_list('Modern Cotton Sausages')
  end
  
  Então('o produto deverá ser exibido na lista de compras') do
    expect(@home_page).to have_current_path("https://front.serverest.dev/minhaListaDeProdutos")
  end