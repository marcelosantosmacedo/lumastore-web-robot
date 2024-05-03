*** Settings ***

Library           SeleniumLibrary

*** Variables ***


${HEADER_HOME_TEXT}                      (//a[contains(.,'Sign In')])[1]
${SIGN_IN_HOME_LINK}                     (//a[contains(.,'Sign In')])[1]
${REGISTER_HOME_LINK}                    (//a[contains(.,'Create an Account')])[1]
${SIGN_IN_PAGE}                          Customer Login
${SIGN_IN_BTN}                           //button[contains(@class,'action login primary')]
${REGISTER_PAGE}                         Create New Customer Account


*** Keywords ***

Clicar na opção Sign In da Home
    Click Element                        locator=${SIGN_IN_HOME_LINK}
    Wait Until Page Contains             text=${SIGN_IN_PAGE}


Clicar na opção Create an Account da Home
    Click Element                        locator=(//a[contains(.,'Create an Account')])[1]
    Wait Until Page Contains             text=${REGISTER_PAGE}

    