            #language: pt

            Funcionalidade: Realização de cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Contexto:
            Dado que o cliente esteja na página de checkout

            Cenário: Cadastro realizado com sucesso
            Quando o cliente preenche todos os campos obrigatórios
            E clica em "FINALIZAR COMPRA"
            Então o sistema deve realizar o cadastro
            E deve finalizar a compra

            Esquema do Cenário: Validação de campos obrigatórios não preenchidos
            Quando o cliente tenta finalizar a compra sem preencher o campo <campo> obrigatório
            Então o sistema deve informar uma mensagem <mensagem>
            E não deve permitir a finalização da compra

            Exemplos:

            | campo     | mensagem                                                          |
            | Nome      | "Por favor, preencha todos os campos obrigatórios marcados com *" |
            | Sobrenome | "Por favor, preencha todos os campos obrigatórios marcados com *" |
            | País      | "Por favor, preencha todos os campos obrigatórios marcados com *" |
            | Endereço  | "Por favor, preencha todos os campos obrigatórios marcados com *" |
            | Cidade    | "Por favor, preencha todos os campos obrigatórios marcados com *" |
            | CEP       | "Por favor, preencha todos os campos obrigatórios marcados com *" |
            | Telefone  | "Por favor, preencha todos os campos obrigatórios marcados com *" |
            | Email     | "Por favor, preencha todos os campos obrigatórios marcados com *" |


            Esquema do Cenário: Email com formato inválido
            Quando o cliente tenta finalizar a compra com o email <email> que possui um formato inválido
            Então o sistema deve informar uma mensagem <mensagem>
            E não deve permitir a finalização da compra

            Exemplos:

            | email           | mensagem                     |
            | teste.email.com | "Email com formato inválido" |
            | 1221222@        | "Email com formato inválido" |
            | @email.com      | "Email com formato inválido" |
            | teste           | "Email com formato inválido" |
            | 232312312       | "Email com formato inválido" |


            Cenário: Tentativa de finalizar o cadastro com campos obrigatórios vazios
            Quando o cliente tenta se cadastrar com um ou mais campos obrigatórios vazios
            Então o sistema deve informar uma mensagem "Por favor, preencha todos os campos obrigatórios marcados com *"
            E não deve permitir a conclusão do cadastro









