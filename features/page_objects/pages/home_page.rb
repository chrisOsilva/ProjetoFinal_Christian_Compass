class HomePage < SitePrism::Page
    set_url '/home'
  
  ##Barra de Pesquisa##
  element :pesquisar, "input[data-testid='pesquisar']"
  element :btn_pesquisar, "button[data-testid='botaoPesquisar']"

  ###Adicionar Produto a lista de Compras###
  element :btn_add_list, "button[data-testid='adicionarNaLista']"
    
  ###Pesquisar Produto###
  def pesquisar_pdt(produto)
    pesquisar.click #clica na caixa de texto
    pesquisar.set produto #inseri o nome do produto
    btn_pesquisar.click # clica no botão pesquisar
  end

  ###Adicionar a lista de compras###
  def add_pdt_list(produto)
      btn_add_list.click
  end

end