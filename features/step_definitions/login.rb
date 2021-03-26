Dado("que esteja na tela de login") do
    @login_page.load
  end
  
  Quando("fizer login com credenciais validas") do 
    @login_page.input_login_email
    @login_page.input_login_password
    @login_page.btn_sign_in
  end
  
  Então("deve ser apresentada a tela {string}") do
    expect (url).to have_content 'http://automationpractice.com/index.php?controller=my-account'
  end


  Dado("que esteja na tela de login") do
    @login_page.load
  end
  
  Quando("fizer login com credenciais validas") do 
    @login_page.input_login_email
    @login_page.input_login_password2
    @login_page.btn_sign_in
  end
  
  Então("deve ser apresentada a tela {string}") do
    expect (@login_page.alert_message_authentication_failed).to have_content 'Authentication failed'
  end