*** Settings ***
Resource   ../../Resource/Settings.resource
Resource   ../../Elements/Main_Elements.resource


*** Keywords ***
E Pesquiso pelo Fone de Ouvido Qcy H3 Anc
    Wait Until Element Is Visible      ${Produtos.Visible_Barra_Pesquisa}               10s
    Input Text                         ${Produtos.Visible_Barra_Pesquisa}               ${Nome_Produto} 
    Click Element                      ${Produtos.Click_Pesquisar}
   
E adciono o produto ao carrinho
    Wait Until Element Is Visible      ${Produtos.Visible_Produto}                      10s
    Click Element                      ${Produtos.Visible_Produto}
    Wait Until Element Is Visible      ${Produtos.Click_Comprar}                        10s
    Click Element                      ${Produtos.Click_Comprar}
    Wait Until Element Is Visible      ${Produtos.Click_IrParaCarrinho}                 10s
    Click Element                      ${Produtos.Click_IrParaCarrinho}

Quando insiro mais de 10 unidades 
    
    Wait Until Element Is Visible      ${Produtos.Click_AdcionarQuantidadeProduto}      10s
    Double Click Element               ${Produtos.Click_AdcionarQuantidadeProduto}
    Input Text                         ${Produtos.Click_AdcionarQuantidadeProduto}      60
    Click Element                      ${Produtos.Click_AplicarCupom}
    
Então é essibido uma mensagem de erro 
    Wait Until Element Is Visible     ${Produtos.Equal_MENSAGEM_ERRO}                   10s
    ${texto_mensagem}    Get Text     ${Produtos.Equal_MENSAGEM_ERRO}
    Should Be Equal                   ${texto_mensagem}    O limite máximo de quantidade para esse produto é 10
    
E o valor é corrigido para 10 
    Wait Until Element Is Visible    ${Produtos.Click_AdcionarQuantidadeProduto}        10s
    ${valor_atual}    Get Value      ${Produtos.Click_AdcionarQuantidadeProduto}
    Should Be Equal                  ${valor_atual}                                     10