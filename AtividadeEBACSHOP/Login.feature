            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que o cliente acessa a página de autenticação

            Cenário: Cliente realiza uma autenticação válida
            Quando o cliente informa o usuário "joaofelipe@ebac.com.br" e informa a senha "12345@"
            Então o sistema deve exibir uma mensagem "Login efetuado com sucesso"


            Esquema do Cenário: Campos obrigatórios não preenchidos
            Quando o cliente informa o <usuario> e a <senha>
            Então o sistema deve exibir a <mensagem_usuario> para o campo de usuário
            E a <mensagem_senha> para o campo de senha
        

            Exemplos:

            | usuario                | senha  | mensagem_usuario    | mensagem_senha      |
            | joaofelipe@ebac.com.br |        |                     | "Campo obrigatório" |
            |                        |        | "Campo obrigatório" | "Campo obrigatório" |
            |                        | 12345@ | "Campo obrigatório" |                     |



            Esquema do Cenário: Cliente realiza uma autenticação inválida
            Quando o cliente informa o <usuario> e a <senha>
            Então o sistema deve exibir uma <mensagem>

            Exemplos:

            | usuario                | senha                  | mensagem                     |
            | joaofelipe@ebac.com.br | ffyywywywyayw          | "Usuário ou senha inválidos" |
            | teste@exemplo.com.br   | 123                    | "Usuário ou senha inválidos" |
            | asfofoafopjfojf@       | audhdahdaho            | "Usuário ou senha inválidos" |
            | joaofelipe@ebac.com    | 12345@                 | "Usuário ou senha inválidos" |
            | 12345@                 | joaofelipe@ebac.com.br | "Usuário ou senha inválidos" |
            | user@ebac.com          | ebac.com               | "Usuário ou senha inválidos" |


            Cenário: Recuperação de senha
            Quando o cliente clica em "Perdeu sua senha?"
            Então o sistema deve redirecionar para a página de recuperação de senha
