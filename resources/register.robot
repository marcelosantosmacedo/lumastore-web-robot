*** Settings ***

Library           SeleniumLibrary
Library           FakerLibrary    locale=pt_BR

*** Variables ***

${FIRST_NAME}                  //input[contains(@name,'firstname')]
${LAST_NAME}                   //input[contains(@name,'lastname')]
${EMAIL_FIELD}                 //input[contains(@id,'email_address')]
${PASSWORD}                    //input[@title='Password']
${PASSWORD_CONFIRMATION}       //input[contains(@name,'password_confirmation')]
${REGISTER_BTN}                //button[@type='submit'][contains(.,'Create an Account')]
${REGISTER_MESSAGE}            Thank you for registering with Main Website Store.

*** Keywords ***

Informar Nome
    ${nome}                    FakerLibrary.First Name
    Input Text                 locator=${FIRST_NAME}                  text=${nome}

Informar Sobrenome
    ${sobrenome}               FakerLibrary.Last Name
    Input Text                 locator=${LAST_NAME}                   text=${sobrenome}
    
Informar E-mail
    ${email}                   FakerLibrary.Email
    Input Text                 locator=${EMAIL_FIELD}    text=${email}
    
Informar Senha e Confirmar Senha
    Input Text                 locator=${PASSWORD}                    text=teste@123
    Input Text                 locator=${PASSWORD_CONFIRMATION}       text=teste@123

Clicar no botão Create and Account
    Click Button               locator=${REGISTER_BTN}
    
Verificar se a conta foi criada com sucesso
    Wait Until Page Contains    text=${REGISTER_MESSAGE}
