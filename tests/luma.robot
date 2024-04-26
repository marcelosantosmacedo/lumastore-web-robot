*** Settings ***

Documentation    Essa suítes efetua testes na funcionalidade de login da plataforma Luma
Resource         ../resources/base.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Efetuar Login sem sucesso na plataforma LUMA
    [Documentation]    Esse teste verifica o comportamento da aplicação ao informar um usuário inválido
    [Tags]             Login
    Acessar a home page do site Luma
    Clicar na opção Sign In
    Informar um e-mail e senha não cadastrado na plataforma
    Clicar no botão Sign In
    Verificar se está apresentando a mensagem de erro ao tentar logar


Caso de Teste 02 - Acessar a Home Page do site Luma
    [Documentation]    Esse teste verifica o carregamento da Home do site
    [Tags]             Home
    Acessar a home page do site Luma


Caso de Teste 03 - Efetuar uma busca pelo produto
    [Documentation]    Esse teste verifica o comportamento da busca no site
    [Tags]             Busca
    Acessar a home page do site Luma
    Digitar o nome do Produto "SHIRT" no campo de Pesquisa
    Clicar no botão de Pesquisa
    Verificar se o termo "SHIRT" informado foi utilizado na Pesquisa


Caso de Teste 04 - Adicionar um produto ao carrinho
    [Documentation]    Esse teste verifica a adição de produto ao carrinho
    [Tags]             Carrinho
    Acessar a home page do site Luma
    Digitar o nome do Produto "Radiant Tee" no campo de Pesquisa
    Clicar no botão de Pesquisa
    Verificar se o termo "Radiant Tee" informado foi utilizado na Pesquisa
    Acessar a página do produto
    Selecionar o Tamanho
    Selecionar a Cor
    Clicar no botão Add To Cart
    Verificar se o produto foi adicionado ao carrinho

    