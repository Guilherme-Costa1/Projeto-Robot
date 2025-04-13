**** Settings ***
Resource  ../../Steps/Main_Steps.robot

*** Test Cases ***
TC02 - Pesquisar Produto e Adicionar ao Carrinho 
    [Tags]    PesquisaProduto
    Dado que eu acesse o site da Kabum
    E Pesquiso pelo Fone de Ouvido Qcy H3 Anc
    E adciono o produto ao carrinho
    Quando insiro mais de 10 unidades 
    Então é essibido uma mensagem de erro 
    E o valor é corrigido para 10 
    E fecho o navegador