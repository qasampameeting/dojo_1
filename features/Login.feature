#language: pt

Funcionalidade: login

Cenario: Login com sucesso

Dado que estou na tela de login
Quando informo um usuario valido
    E informo uma senha valida
    E clico no botao login
Entao o login devera ser realizado com sucesso

Cenario: Login invalido

Dado que estou na tela de login
Quando informo um usuario invalido
    E informo uma senha valida
    E clico no botao login
Entao o login nao devera ser realizado com sucesso
