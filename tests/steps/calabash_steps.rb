if ENV['PLATFORM'] == 'ios'
	require 'calabash-cucumber/cucumber'
elsif ENV['PLATFORM'] == 'android'
	require 'calabash-android/cucumber'
end

Dado(/^que eu acesse a tela inicial$/) do
  @login = page(LoginPage)
  @login.load_loginpage(1)
end

Quando(/^digitar o usuário "([^\""]*)" e a senha "([^\""]*)"$/) do |usuario, senha|
   @login.preencher_login(usuario, senha)
end

E(/^clicar no botão "([^\""]*)"$/) do |texto|
   @login.click_element(texto)
end

Então(/^a página principal é exibida$/) do
  @home = page(homepage)
  @home.load_homepage(1)
end

Então(/^a mensagem "([^\""]*)" é exibida$/) do |mensagem|
  @login.load_message(mensagem)
end