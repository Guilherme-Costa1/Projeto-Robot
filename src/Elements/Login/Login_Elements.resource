*** Variables ***
&{Login}
#Elementos da página Criar Conta
...  Input_FullName=//input[@name='nome']
...  Input_CPF=//input[@data-testid='cpf-input']
...  Input_Telefone=//input[@data-testid='mobile-number-input']
...  Input_Email=//input[@data-testid='email-input'] 
...  Input_DataNascimento=//input[@data-testid='birth-date-input']
...  Input_Senha=//input[@id='password']
...  Button_Genero=//div[@class='sc-deXhhX gFHIwc']
...  Button_TipoGenero=//span[@class='sc-epALIP eIELNo']
...  Input_CriarSenha=//input[@data-testid='password-input']
...  Input_ConfirmarSenha=//input[@data-testid='confirm-password-input']
...  Button_ConheceuKabum=//div[@class='sc-deXhhX cHuLTR']
...  Button_TipoConheceuKabum=//span[@class='sc-epALIP eIELNo' and text()='BuscaPe']
...  Button_Continuar=//button[@data-testid='button-form-continue' and text()='Continuar']

#Elementos página de adcionar endereço
&{ADD_Endereco}
...  Title_Element=//h2[contains(@class, 'sc-edKZPI') and contains(@class, 'eGyMrM')]