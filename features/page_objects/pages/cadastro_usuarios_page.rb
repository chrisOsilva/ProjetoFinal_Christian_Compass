class CadastroUsuariosPage < SitePrism::Page
    set_url '/cadastrarusuarios'

    element :camp_nome, "input[name='nome']"
    element :camp_email, "input[name='email']"
    element :camp_senha, "input[name='password']"
    element :btn_cadastrar, "button[type='submit']"
    element :chbox_adm, "div[class='form-check']"

    ##Cadastrar usuário com massa de dados###
    def cadastro_user_m(cadastrar_user)
       camp_nome.set cadastrar_user[:nome]
       camp_email.set cadastrar_user[:email]
       camp_senha.set cadastrar_user[:senha]
       btn_cadastrar.click
    end

    ##Cadastrar usuário sem massa de dados###
    def cadastro_user(nome,email,senha)
      camp_nome.set nome
      camp_email.set email
      camp_senha.set senha
      btn_cadastrar.click
   end

    ###Cadastrar Adm#### 
    def cadastro_adm
      chbox_adm.click
     end
end