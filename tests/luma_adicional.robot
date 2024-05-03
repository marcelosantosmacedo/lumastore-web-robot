*** Settings ***

Documentation    Essa suíte trata-se de testes adicionais do desafio proposto
Resource         ../resources/base.robot    
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

#TESTES DIFERENCIAIS


#DIFERENCIAL 1

Caso de Teste 01 - Buscar por `shirt` no menu superior e clicar no último resultado sugerido
    [Documentation]    Esse teste verifica o comportamento da aplicação ao efetuar uma busca
    [Tags]             Busca
    Acessar a home page do site Luma
    Digitar o nome do Produto "shirt" no campo de Pesquisa
    Clicar no botão de Pesquisa
    Verificar se o termo "shirt" informado foi utilizado na Pesquisa
    Clicar no último produto disponível no retorno da Busca
    Verificar o direcionamento para a Página do Produto


#DIFERENCIAL 2
Caso de Teste 02 - Criar uma conta na tela de Login/Cadastro
    [Documentation]    Esse teste verifica o comportamento da aplicação ao criar uma nova conta de usuário
    [Tags]             Cadastro
    Acessar a home page do site Luma
    Clicar na opção Create an Account da Home
    Informar Nome
    Informar Sobrenome
    Informar E-mail
    Informar Senha e Confirmar Senha
    Clicar no botão Create and Account
    Verificar se a conta foi criada com sucesso

#DIFERENCIAL 4
#Caso de Teste 03 - Adicionar um produto **aleatório** do catalogo de moda masculina no carrinho


#DIFERENCIAL 4
#Caso de Teste 04 - Adicionar comentário em um produto **aleatório** do catálogo de moda masculina no carrinho


#DIFERENCIAL 5
#GERAR UM RELATÒRIO AUTOMATICO DE TESTES




    