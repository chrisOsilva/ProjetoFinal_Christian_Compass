Dado('que esteja na pagina de cadastro') do
    @home_page = Cadastro.new
    @home_page.load
  end
  
  ###Cadastro usuário comum###
  Quando('informar os campos {string},{string},{string}') do |nome, email, senha|
    @home_page.cadastro_user("dani","dani440@gmail.com","12345")
  end
  
  Quando('exibir a mensagem {string}') do |msg|
    expect(@home_page).to have_content("Cadastro realizado com sucesso")
  end
  
  Então('cadastro deverá ser concluido') do
    expect(@home_page).to have_current_path("https://front.serverest.dev/home")
  end

  ####Cadastro Adm####
  Quando('marcar a opção Cadastrar como administrador?') do
    @home_page.cadastro_adm
  end