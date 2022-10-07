class ListaDeComprasPage < SitePrism::Page 
    set_url '/minhaListaDeProdutos'

    element :btn_add_carrinho, "button[data-testid='adicionar carrinho']"

    def add_pdt_carrinho(add_produto) #Adicionar produto ao carrinho
        btn_add_carrinho.click 
    end
end