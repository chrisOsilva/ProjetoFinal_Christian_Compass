valid_pdt = Factory::Static.static_data('valid_product')

Dado('que esteja logado') do
    @app.login.load
    login = Factory::Static.static_data('user_for_login')
    @app.login.login_user(login["email"],login["senha"])
end

Quando('escolher o produto desejado') do    
    @app.home.pesquisar_pdt(valid_pdt)
    @app.home.add_pdt_list(valid_pdt)
end

Então('produto deverá ser adicionado ao carrinho de compras') do    
    @app.lista_de_compras.add_pdt_carrinho(valid_pdt)
end