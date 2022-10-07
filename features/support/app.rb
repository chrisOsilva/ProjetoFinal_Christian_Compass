class App

    def home
      HomePage.new
    end

    def login
      LoginPage.new
    end

    def cadastro
      CadastroUsuariosPage.new
    end

    def lista_de_compras
      ListaDeComprasPage.new
    end
  end