module Pages
  class LoginPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element  :breadcrumb, ''
    element  :input_create_account_email, ''
    element  :btn_create_an_account, ''
    element  :input_login_email, 'matheusdlocatelli@gmail.com'
    element  :input_login_password, 'teste123'
    element  :input_login_password2, 'testeee'
    element  :link_forgot_password, ''
    element  :btn_sign_in, '#SubmitLogin'
    element  :alert_message_authentication_failed, '.alert-danger'
  end
end
