*** Settings ***

Library           SeleniumLibrary
Library           FakerLibrary    locale=pt_BR

*** Variables ***

${SIGN_IN_BTN}                           //button[contains(@class,'action login primary')]
${INVALID_LOGIN_MSG}                     The account sign-in was incorrect or your account is disabled temporarily. Please wait and try again later.

*** Keywords ***

Clicar no botão Sign In
    Click Element                        locator=${SIGN_IN_BTN}

Informar um e-mail e senha não cadastrado na plataforma
    Input Text                           locator=//input[contains(@name,'login[username]')]    text=bluesoftteste@teste.com
    Input Text                           locator=//input[contains(@name,'login[password]')]    text=1234

Verificar se está apresentando a mensagem de erro ao tentar logar
    Wait Until Page Contains             text=${INVALID_LOGIN_MSG}