# Casos de uso gerais

## Funcionalidade 1
Feature: Logar na plataforma
  Como usuário
  Quero fazer login na minha conta
  Para ter acesso às funcionalidades de plataforma.

Scenario: Logar com sucesso na plataforma
  Dado que estou na tela de login da plataforma
  Quando me autêntico com credenciais válidas
  Então sou direcionado para a página de entrada.

Scenario: Tentativa inválida de login na plataforma
  Dado que estou na tela de login da plataforma
  Quando tento me autenticar com credenciais inválidas
  Então recebo a informação de que minhas credenciais não são válidas.

## Funcionalidade 2
Feature: Alterar informações da conta
  Como usuário da plataforma
  Quero acessar a página de informações da conta
  Para modificar os dados cadastrados.

Scenario: Acessar a página de informações da conta
  Dado que estou logado na plataforma
  Quando seleciono a opção Informações da Conta
  Então sou direcionado para a página de informações da minha conta.

Scenario: Alterar informações da conta
  Dado que estou na página de informações da minha conta na plataforma
  Quando realizo alteração nos campos relacionados às minhas informações pessoais
  E seleciono a opção de salvar
  Então minhas informações são atualizadas na plataforma.

Scenario: Alterar senha de acesso da conta
  Dado que estou na página de informações da minha conta na plataforma
  Quando realizo alteração no campo de senha
  E confirmo a nova senha informada
  E seleciono a opção de salvar
  Então minha senha de acesso à conta é atualizada na plataforma.
