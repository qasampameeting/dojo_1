Dado("que estou na tela de login") do
    visit ('https://the-internet.herokuapp.com/login')
  end
  
  Quando("informo um usuario valido") do
    find('#username').set("tomsmith")
  end
  
  Quando("informo uma senha valida") do
   find('#password').set("SuperSecretPassword!")
  end
  
  Quando("clico no botao login") do
    click_button('Login')
  end
  
  Entao("o login devera ser realizado com sucesso") do
    page.should have_content('You logged into a secure area!')
  end

  Quando("informo um usuario invalido") do
    find('#username').set("tomsmitha")
  end
  
  Entao("o login nao devera ser realizado com sucesso") do
    page.should have_content ('Your username is invalid!')
  end
  
  