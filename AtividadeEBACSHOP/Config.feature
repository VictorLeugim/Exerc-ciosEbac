            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que o cliente acessa o site da loja
            E seleciona o produto

            Cenário: Cliente clica no botão limpar
            Quando o cliente clica no botão "Limpar"
            Então todos os campos devem ser resetados para seus valores padrão

            Cenário: Cliente excede o limite de quantidade permitido
            Quando o cliente seleciona a quantidade 11
            Então o sistema deve exibir a mensagem "Limite máximo excedido"


            Esquema do Cenário: Cliente escolhe quantidade
            Quando o cliente seleciona a <quantidade>
            Então o sistema deve exibir a <mensagem>

            Exemplos:

            | quantidade | mensagem                         |
            | 1          | "Produto adicionado com sucesso" |
            | 5          | "Produto adicionado com sucesso" |
            | 10         | "Produto adicionado com sucesso" |
            


            Esquema do Cenário: Cliente escolhe tamanho e cor
            Quando o cliente seleciona o <tamanho> e a <cor>
            Então o sistema deve exibi-los conforme selecionado

            Exemplos:

            | tamanho | cor      |
            | "XS"    | "Blue"   |
            | "XS"    | "Orange" |
            | "XS"    | "Red"    |
            | "S"     | "Blue"   |
            | "S"     | "Orange" |
            | "S"     | "Red"    |
            | "M"     | "Blue"   |
            | "M"     | "Orange" |
            | "M"     | "Red"    |
            | "L"     | "Blue"   |
            | "L"     | "Orange" |
            | "L"     | "Red"    |
            | "XL"    | "Blue"   |
            | "XL"    | "Orange" |
            | "XL"    | "Red"    |


            Cenário: Cliente tenta adicionar produto ao carrinho preenchendo apenas o tamanho
            Quando o cliente seleciona o tamanho "M" e clica em "Adicionar ao carrinho"
            Então o sistema deve exibir a mensagem "Preencher todos os campos obrigatórios antes de adicionar o produto"








