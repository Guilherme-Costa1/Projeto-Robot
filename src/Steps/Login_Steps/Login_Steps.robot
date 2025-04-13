*** Settings ***
Resource   ../../Resource/Settings.resource
Resource   ../../Elements/Main_Elements.resource


*** Keywords ***
Dado que eu acesse o site da Kabum
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

E clico em cadastre-se
    Wait Until Element Is Visible      ${Home.A_Cadastro}                    10s
    Click Element                      ${Home.A_Cadastro}

E preencha o formulario de criar conta com dados validos
    Wait Until Element Is Visible      ${Login.Input_FullName}               10s
    Input Text                         ${Login.Input_FullName}               ${FullName}
    Click Element                      ${Login.Input_CPF}
    Input Text                         ${Login.Input_CPF}                    ${CPF} 
    Click Element                      ${Login.Input_Telefone}    
    Input Text                         ${Login.Input_Telefone}               ${Telefone} 
    Click Element                      ${Login.Input_Email}
    Input Text                         ${Login.Input_Email}                  ${Email}  
    Click Element                      ${Login.Input_DataNascimento}
    Input Text                         ${Login.Input_DataNascimento}         ${DataNascimento}  
    Wait Until Element Is Visible      ${Login.Button_Genero}                10s
    Click Element                      ${Login.Button_Genero}          
    Wait Until Element Is Visible      ${Login.Button_TipoGenero}            10s 
    Click Element                      ${Login.Button_TipoGenero}
    Click Element                      ${Login.Input_CriarSenha}
    Input Text                         ${Login.Input_CriarSenha}              ${Senha}  
    Click Element                      ${Login.Input_ConfirmarSenha}
    Input Text                         ${Login.Input_ConfirmarSenha}          ${Senha} 
    Wait Until Element Is Visible      ${Login.Button_ConheceuKabum}          10s
    Click Element                      ${Login.Button_ConheceuKabum}
    Wait Until Element Is Visible      ${Login.Button_TipoConheceuKabum}       10s
    Click Element                      ${Login.Button_TipoConheceuKabum}

E clico em Continuar
    Execute JavaScript    window.scrollBy(0, 250);  
    Sleep    2s
    Wait Until Element Is Visible      ${Login.Button_Continuar}     10 
    Click Element                      ${Login.Button_Continuar}
    
Então sou redirecionado para pagina de adcionar endereço
    Wait Until Element Is Visible      ${ADD_Endereco.Title_Element}           30

E fecho o navegador
    Close Browser
