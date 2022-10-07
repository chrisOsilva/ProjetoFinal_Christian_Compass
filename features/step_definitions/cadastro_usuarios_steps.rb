Dado('que esteja na pagina de cadastro') do
    @app.cadastro.load    
  end
  
  ###Cadastro usuário comum###
  Quando('informar os campos corretamente') do 
    novo_usuario  = Factory::Dynamic.registrar_new_user    
    @app.cadastro.cadastro_user_m(novo_usuario)    # Realiliza cadastro com a massa de dados dinamica
  end
  
  Quando('exibir a mensagem de sucesso') do 
    msg = Factory::Static.static_data('cad_sucesso')
    expect(@app.cadastro).to have_content(msg) #Exibe mensagem de cadastro com sucesso
  end
  
  Então('cadastro deverá ser concluido') do
    pageHome = Factory::Static.static_data('page_home')
    expect(@app.cadastro).to have_current_path(pageHome) #Exibe home Page
  end

  ####Cadastro Adm####
  Quando('marcar a opção Cadastrar como administrador?') do
    @app.cadastro.cadastro_adm
  end

  ####Cadastro com Falhas###
  Quando('informar os campos {string}, {string} e {string} incorretos') do |nome, email, senha|
    @app.cadastro.cadastro_user(nome,email,senha)
  end
  
  Então('deverá apresentar a {string} de erro') do |mensagem|
    expect(@app.cadastro).to have_content(mensagem)
  end