Dado('que a página de login esteja aberta') do
    @home_page = Home.new
    @home_page.load
  end
  
  ###Login valido###
  Quando('realizar login informando {string},{string} ja cadastrados') do |email, senha|
    @home_page.login(email,senha)
  end
  
  Então('login deverá ser concluido com sucesso') do
    expect(@home_page).to have_current_path("https://front.serverest.dev/home")
  end
  
  ###Login invalido###
  Quando('realizar login informando {string},{string} não cadastrados') do |email, senha|
    @home_page.login(email,senha)
  end
  
  Então('deverá exibir a mensagem {string}') do |msg|
    expect(@home_page).to have_content(msg)
  end