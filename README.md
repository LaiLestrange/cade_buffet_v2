
# Cadê Buffet? 🎉

Aplicação feita pela segunda vez com base nas tasks indicadas pela CampusCode no treinamento da turma 12 do TreinaDev, com o intuito de promover o aprendizado de Stacks como Ruby on Rails, Capybara, Rspec, etc, além do foco na metologia TDD (Test Driven Development)

## Índice

1. [Tecnologias](#tecnologias)
2. [Comece por aqui](#comece-por-aqui)
3. [Features da Aplicação](#features-da-aplicação)
    - [Implementadas](#implementadas)
    - [Fila de espera](#fila-de-espera)
    - [Testes](#testes)
      - [Testes de Sistema](#testes-de-sistema)
      - [Testes de Modelo](#testes-de-modelos)
    - [Seeds](#seeds)

## Tecnologias

- **Ruby** 3.2.2
- **Rails** 7.1.3.3
- **Capybara** 3.40
- **Rspec** 3.13
- **Devise** 4.9.4
- **SQLite3** 1.7.3
- **Bootstrap** 5.3.3

## Comece por aqui

Clone o projeto

~~~bash
  git clone https://github.com/LaiLestrange/cade_buffet_v2.git
~~~

Vá para a pasta do projeto

~~~bash
  cd cade_buffet_v2
~~~

Instale as dependências

~~~bash
bundle install
~~~

Use o Rspec para verificar o status dos testes

~~~bash
rspec
~~~

Inicie o servidor

~~~bash
rails s
~~~

## Features da aplicação

### Implementadas

- [x] A tela inicial exibe o nome da aplicação e um botão para fazer login
- [x] A tela de login permite escolher acessar o site como Cliente ou como Administrador
- [x] Tela de login e de signup do cliente centralizadas
- [x] Mensagem de erro na criação de conta do cliente está centralizada
- [x] Todas as telas até agora utilizam i18n
- [x] Usuário consegue criar conta como Cliente e fazer o logout
- [x] Usuário consegue criar conta como Administrador de Buffet e fazer o logout

### Fila de espera

- [ ] Melhorar o CSS dos fomulários
- [ ] Melhorar o CSS das mensagens de erro
- [ ] Administrador de Buffet deve obrigatóriamente cadastrar seu Buffet
- [ ] Cliente não deve ter acesso a rotas de gerenciamento de Buffet
- [ ] Proibir que um usuário logado em um tipo de conta acesse rotas de new_registration e new_session do outro tipo de conta

### Testes

#### Testes de Sistema

- Usuário inicia a aplicação e vê página inicial e botão de entrar
- Usuário inicia a aplicação e vai para a tela de fazer login
- Usuário entra na tela de login e volta para a tela inicial
- Usuário cria conta como Cliente e como Administrador de Buffet
- Usuário precisa preencher corretamente os dados para criar suas contas
- Cliente e Admin conseguem fazer logout
- Admin precisa preencher corretamente os dados para cadastrar seu Buffet

#### Testes de Modelos

- Cliente deve informar nome, cpf (válido e único), email e senha para criar sua conta
- Administrador deve informar nome, email e senha para criar sua conta

### Seeds

- 12 Clientes
- 12 Administradores de Buffet
