class LoginPage < SitePrism::Page
   set_url '/login'


   ##Login##
   element :camp_email, '[data-testid="email"]'
   element :camp_senha, '[data-testid="senha"]'
   element :btn_entrar, '[data-testid="entrar"]'

   ###Logar###
   def login_user(email,senha) 
       camp_email.set email
       camp_senha.set senha
       btn_entrar.click
   end
end