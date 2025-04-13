*** Variables ***
&{Produtos}
#Elementos Pesquisa Produtos
...  Visible_Barra_Pesquisa=//input[@id='input-busca' and @type='text' and @name='query' and @class='id_search_input']
...  Click_Pesquisar=//button[@type='submit' and @aria-label='Buscar']
...  Visible_Produto=//img[@title='Fone de Ouvido Qcy H3 Anc, Cancelamento De Ruído, Adaptativo, Bluetooth 5.3, Multiponto, Bateria 60h']
#Elementos Compra Produtos
...  Click_Comprar=//div[@class='sc-a24aba34-2 iviqDc']/button[@class='sc-8b813326-0 bLjOez' and contains(., 'COMPRAR')]
...  Click_IrParaCarrinho=//button[contains(@class, 'group') and contains(., 'IR PARA O CARRINHO')]
...  Click_AdcionarQuantidadeProduto=//input[contains(@class, 'Quantity-styles__QuantityInput')]
...  Click_AplicarCupom=//button[contains(@class, 'applyCouponButton') and .//span[text()='Aplicar cupom']]
...  Equal_MENSAGEM_ERRO=//div[text()='O limite máximo de quantidade para esse produto é 10']