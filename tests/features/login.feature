# language: pt
Funcionalidade: Login
Como um usuário
Desejo realizar login no aplicativo de exemplo
De modo que tenha acesso a tela principal do app

Contexto:
Dado que eu acesse a tela inicial

Cenário: Realizar Login
Quando digitar o usuário "admin" e a senha "1234"
E clicar no botão "Entrar"
Então a página principal é exibida

Cenário: Usuário Inválido
Quando digitar o usuário "invalido" e a senha "1234"
E clicar no botão "Entrar"
Então a mensagem "Usuário inválido" é exibida

Cenário: Senha Inválida
Quando digitar o usuário "admin" e a senha "invalido"
E clicar no botão "Entrar"
Então a mensagem "Senha inválida" é exibida