*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${URL}                                   https://magento.softwaretestingboard.com/
${HEADER_HOME_TEXT}                      (//a[contains(.,'Sign In')])[1]
${SIGN_IN_HOME_LINK}                     (//a[contains(.,'Sign In')])[1]
${SIGN_IN_PAGE}                          Customer Login
${SIGN_IN_BTN}                           //button[contains(@class,'action login primary')]
${INVALID_LOGIN_MSG}                     The account sign-in was incorrect or your account is disabled temporarily. Please wait and try again later.
${BTN_SUBMIT_SEARCH}                     //button[@type='submit'][contains(.,'Search')]
${PRODUCT_IMAGE_SEARCH}                  //img[contains(@alt,'Radiant Tee')]
${ADD_TO_CART_BTN}                       //span[contains(.,'Add to Cart')]
${IN_STOCK}                              //span[contains(.,'In stock')]
${SIZE}                                  //div[@class='swatch-option text'][contains(.,'XS')]
${COLOR}                                 //div[contains(@option-label,'Blue')]
${CART_INCREASE}                         //span[@class='counter-number'][contains(.,'1')]
${CART_ICON}                             //a[contains(@class,'action showcart')]
${CART_PRODUCT}                          //a[@data-bind='attr: {href: product_url}, html: product_name'][contains(.,'Radiant Tee')]



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

Clicar na opção Sign In
    Click Element                        locator=${SIGN_IN_HOME_LINK}
    Wait Until Page Contains             text=${SIGN_IN_PAGE}
        
Informar um e-mail e senha não cadastrado na plataforma
    Input Text                           locator=//input[contains(@name,'login[username]')]    text=bluesoftteste@teste.com
    Input Text                           locator=//input[contains(@name,'login[password]')]    text=1234

Clicar no botão Sign In
    Click Element                        locator=${SIGN_IN_BTN}
    
Verificar se está apresentando a mensagem de erro ao tentar logar
    Wait Until Page Contains             text=${INVALID_LOGIN_MSG}
    
Digitar o nome do Produto "${PRODUTO}" no campo de Pesquisa
    Input Text                           locator=//input[contains(@id,'search')]               text=${PRODUTO}

Clicar no botão de Pesquisa
    Click Element                        locator=${BTN_SUBMIT_SEARCH}

Verificar se o termo "${PRODUTO}" informado foi utilizado na Pesquisa
    Wait Until Page Contains             text=Search results for: '${PRODUTO}'

Acessar a página do produto
    Click Element                        locator=${PRODUCT_IMAGE_SEARCH}
    Wait Until Page Contains             text=Radiant Tee
    Wait Until Page Contains Element     locator=${IN_STOCK}

Selecionar o Tamanho
    Wait Until Page Contains Element     locator=${SIZE}
    Click Element                        locator=${SIZE}
    
Selecionar a Cor    
    Wait Until Page Contains Element     locator=${COLOR}
    Click Element                        locator=${COLOR}

Clicar no botão Add To Cart
    Click Element                        locator=${ADD_TO_CART_BTN}  

Verificar se o produto foi adicionado ao carrinho
    Wait Until Page Contains Element     locator=${CART_INCREASE}
    Click Element                        locator=${CART_ICON}
    Wait Until Page Contains Element     locator=${CART_PRODUCT}