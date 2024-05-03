*** Settings ***

Library           SeleniumLibrary

Resource          home.robot
Resource          login.robot
Resource          register.robot
Resource          search.robot
Resource          productpage.robot

*** Variables ***

${URL}                                   https://magento.softwaretestingboard.com/





*** Keywords ***

Abrir o navegador
    Open Browser                         browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Luma
    Go To                                url=${URL}
    Wait Until Element Is Visible        locator=${HEADER_HOME_TEXT}    timeout=5000







        

    


