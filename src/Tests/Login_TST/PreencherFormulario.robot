**** Settings ***
Resource  ../../Steps/Main_Steps.robot

*** Test Cases ***
TC01 - Preencher formulario de cadastro com Sucesso
    [Tags]    login
    Dado que eu acesse o site da Kabum
    E clico em cadastre-se
    E preencha o formulario de criar conta com dados validos
    E clico em Continuar
    Então sou redirecionado para pagina de adcionar endereço
    E fecho o navegador
    