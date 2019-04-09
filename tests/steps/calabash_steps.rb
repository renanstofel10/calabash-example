if ENV['PLATFORM'] == 'ios'
	require 'calabash-cucumber/cucumber'
elsif ENV['PLATFORM'] == 'android'
	require 'calabash-android/cucumber'
end

Dado(/^que eu acesse a tela inicial$/) do
	
end

Quando(/^digitar o usuário "([^\""]*)" e a senha "([^\""]*)"$/) do |usuario, senha|

end

E(/^clicar no botão "([^\""]*)"$/) do |botao|

end

Então(/^a página principal é exibida$/) do

end

Então(/^a mensagem "([^\""]*)" é exibida$/) do |mensagem|

end