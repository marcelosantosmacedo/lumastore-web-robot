
*** Settings ***

Library           SeleniumLibrary


*** Variables ***

${PRODUCT_IMAGE_SEARCH}                  //img[contains(@alt,'Radiant Tee')]
${ADD_TO_CART_BTN}                       //span[contains(.,'Add to Cart')]
${IN_STOCK}                              //span[contains(.,'In stock')]
${SIZE}                                  //div[@class='swatch-option text'][contains(.,'XS')]
${COLOR}                                 //div[contains(@option-label,'Blue')]
${CART_INCREASE}                         //span[@class='counter-number'][contains(.,'1')]
${CART_ICON}                             //a[contains(@class,'action showcart')]
${CART_PRODUCT}                          //a[@data-bind='attr: {href: product_url}, html: product_name'][contains(.,'Radiant Tee')]

*** Keywords ***

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

    