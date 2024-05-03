*** Settings ***

Library           SeleniumLibrary


*** Variables ***

${BTN_SUBMIT_SEARCH}                     //button[@type='submit'][contains(.,'Search')]
${LAST_PRODUCT_SEARCH_PAGE}              //img[contains(@alt,'Proteus Fitness Jackshirt')]
${PRODUCT_NAME}                          Proteus Fitness Jackshirt


*** Keywords ***

Digitar o nome do Produto "${PRODUTO}" no campo de Pesquisa
    Input Text                           locator=//input[contains(@id,'search')]               text=${PRODUTO}

Clicar no botão de Pesquisa
    Click Element                        locator=${BTN_SUBMIT_SEARCH}

Verificar se o termo "${PRODUTO}" informado foi utilizado na Pesquisa
    Wait Until Page Contains             text=Search results for: '${PRODUTO}'

Clicar no último produto disponível no retorno da Busca
    Click Element                        locator=${LAST_PRODUCT_SEARCH_PAGE}

Verificar o direcionamento para a Página do Produto
    Wait Until Page Contains             text=${PRODUCT_NAME}