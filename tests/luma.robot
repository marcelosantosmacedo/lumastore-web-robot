*** Settings ***

Documentation    Essa suítes efetua testes na funcionalidade de login da plataforma Luma
Resource         ../resources/base.resource
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

#OBRIGATORIO 1
Caso de Teste 01 - Acessar a Home Page do site Luma
    [Documentation]    Esse teste verifica o carregamento da Home do site
    [Tags]             Home
    Acessar a home page do site Luma

#OBRIGATORIO 2
Caso de Teste 02 - Efetuar uma busca pelo produto
    [Documentation]    Esse teste verifica o comportamento da busca no site
    [Tags]             Busca
    Acessar a home page do site Luma
    Digitar o nome do Produto "SHIRT" no campo de Pesquisa
    Clicar no botão de Pesquisa
    Verificar se o termo "SHIRT" informado foi utilizado na Pesquisa

#OBRIGATORIO 3
Caso de Teste 03 - Adicionar um produto ao carrinho
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

#OBRIGATORIO 4
#Caso de Teste 04 - Realizar checkout

    