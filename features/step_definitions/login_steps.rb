Dado('que a página de login esteja aberta') do
  @app.login.load
  
end

###Login valido###
Quando('realizar login informando email e senha ja cadastrados') do 
  login = Factory::Static.static_data('user_for_login')
  @app.login.login_user(login["email"],login["senha"]) #Realiza login com a massa de dados estatica
end

Então('login deverá ser concluido com sucesso') do #Exibe pagina home
  pageHome = Factory::Static.static_data('page_home')
  expect(@app.login).to have_current_path(pageHome)
end

###Login invalido###
Quando('realizar login informando {string} e {string} não cadastrados') do |email,senha|
  @app.login.login_user(email,senha)
end

Então('deverá exibir a mensagem {string}') do |msg|
  expect(@app.login).to have_content(msg)
end