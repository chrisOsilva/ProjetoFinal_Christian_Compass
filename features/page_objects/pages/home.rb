class Home < SitePrism::Page
    set_url '/login'

  
  ##Barra de Pesquisa##
  element :pesquisar, "input[data-testid='pesquisar']"
  element :btn_pesquisar, "button[data-testid='botaoPesquisar']"

  ##Login##
  element :camp_email, '[data-testid="email"]'
  element :camp_senha, '[data-testid="senha"]'
  element :btn_entrar, '[data-testid="entrar"]'

  ###Adicionar Produto a lista de Compras###
  element :btn_add_list, "button[data-testid='adicionarNaLista']"

    ###Logar###
    def login(email,senha) 
     camp_email.set email
     camp_senha.set senha
     btn_entrar.click
    end
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