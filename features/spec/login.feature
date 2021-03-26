# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria de poder fazer login 
  Para ter acesso a área do usuário

  Contexto:
    Dado que esteja na tela de login

  # Completar o cenário abaixo
  @login_sem_falha
  Cenário: Realizar login
    Quando fizer login com credenciais validas
    Então deve ser apresentada a tela "My Account"


  # Completar o cenário abaixo
  @login_com_falha
  Cenário: Login com falha
    Quando tentar acessar com credenciais invalidas
    Então deve ser apresentada a mensagem de erro