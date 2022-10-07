valid_pdt = Factory::Static.static_data('valid_product')

Dado('que acesse a home') do
  @app.home.load
end

Dado('esteja logado') do
  login = Factory::Static.static_data('user_for_login')
  @app.login.login_user(login["email"],login["senha"])
  end

  ## Produto Existente ###
  Quando('realizar uma busca por um produto existente') do 
    @app.home.pesquisar_pdt(valid_pdt)
  end
  
  Então('deverão ser retornados resultados na busca') do
    expect(@app.home).to have_content(valid_pdt)
  end
  
  ## Produto inexisteste ###
  Quando('realizar a busca por um produto inexistente') do 
    invalid_pdt = Factory::Static.static_data('invalid_product')
    @app.home.pesquisar_pdt(invalid_pdt)
  end
  
  Então('devera apresentar a mensagem') do
    msg = Factory::Static.static_data('msg_pdt_not_found')
    expect(@app.home).to have_content(msg)
  end
  
  ###Adicionar Produto a lista de compras###
  Quando('buscar por um produto desejado') do
    @app.home.pesquisar_pdt(valid_pdt)
  end
  
  Quando('clicar em adicionar a lista') do
    @app.home.add_pdt_list(valid_pdt)
  end
  
  Então('o produto deverá ser exibido na lista de compras') do
    pageLista = Factory::Static.static_data('page_lista_compras')
    expect(@app.home).to have_current_path(pageLista)
  end