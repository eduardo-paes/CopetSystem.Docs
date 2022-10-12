# Casos de uso do Professor

## Funcionalidade - Criar conta
  Feature: Criação de conta do professor
    Como professor
    Quero acessar a página de Cadastro da plataforma
    Para criar minha de acesso à plataforma.

  Scenario: Criar conta com sucesso
    Dado que sou um professor e estou na página de Cadastro da plataforma
    Quando eu inserir meus dados de cadastro na página
    Então minha conta será criada com sucesso.

  Scenario: Tentativa de criação de conta com dados inválidos 
    Dado que estou na página de Cadastro da plataforma
    Quando eu inserir meus dados de cadastro na página, havendo alguma informação inválida
    Então minha conta não será criada.

## Funcionalidade - Visualizar projetos
  Feature: Visualizar meus Projetos
    Como professor logado na plataforma
    Quero acessar a página de Projetos PIBIC
    Para visualizar meus projetos abertos ou encerrados.

  Scenario: Acessar a página de gerenciamento dos meus projetos 
    Dado que estou logado na plataforma
    Quando seleciono a opção de acesso à página de Projetos PIBIC
    Então sou direcionado para a página de Projetos PIBIC.

  Scenario: Visualizar meus projetos PIBIC em andamento
    Dado que estou na página de projetos PIBIC
    Quando seleciono a aba de Projetos em Andamento
    Então são listados todos os meus projetos em andamento.

  Scenario: Visualizar meus projetos PIBIC encerrados
    Dado que estou na página de projetos PIBIC
    Quando seleciono a aba de Projetos Encerrados
    Então são listados todos os meus projetos encerrados.

  Scenario: Acompanhar andamento dos meus projetos
    Dado que estou na página de projetos PIBIC
    Quando seleciono a aba de Projetos em Aberto 
    E estão sendo listados os meus projetos em aberto
    E seleciono a opção de Visualizar Parecer de um projeto
    Então me é informado detalhes sobre o status e parecer do meu projeto.

## Funcionalidade - Criar projetos
  Feature: Criar projetos PIBIC
    Como professor logado na plataforma
    Quero acessar as páginas de Criação de Projetos PIBIC
    Para criar meus projetos PIBIC.

  Scenario: Acessar página de criação de projeto
    Dado que estou na página de projetos PIBIC
    Quando seleciono a opção de Criar Projeto
    Então sou direcionado para a página de Criar Projeto.

  Scenario: Criar um projeto com sucesso
    Dado que estou na página de Criar Projeto PIBIC
    Quando preencho todos os campos obrigatórios com dados válidos
    E seleciono a opção de salvar projeto
    Então recebo a informação de que meu projeto foi aberto com sucesso
    E sou direcionado para a página de visualizar meus projetos.

## Funcionalidade - Submeter projetos
  Feature: Submeter projetos PIBIC
    Como professor logado na plataforma
    Quero acessar as páginas de Submissão de Projeto PIBIC
    Para submeter meu projeto PIBIC em aberto.

  Scenario: Acessar página de submissão
    Dado que estou na página de Projetos PIBIC
    Quando seleciono meu projeto com status Aberto
    E seleciono a opção de Submeter
    Então sou direcionado para a página de Submeter Projeto.

  Scenario: Submeter um projeto com sucesso
    Dado que estou na página de Submeter Projeto PIBIC
    Quando preencho todos os campos obrigatórios com dados válidos
    E indico o aluno que fará parte do projeto
    E seleciono a opção de salvar
    Então recebo a informação de que meu projeto foi submetido com sucesso
    E sou direcionado para a página de visualizar meus projetos.

  Scenario: Submeter um projeto indicando um aluno COM cadastro na plataforma
    Dado que estou na página de Submeter Projeto PIBIC
    Quando preencho todos os campos obrigatórios com dados válidos
    E indico o aluno com cadastro na plataforma que fará parte do projeto
    E seleciono a opção de salvar
    Então recebo a informação de que meu projeto foi submetido com sucesso
    E sou direcionado para a página de visualizar meus projetos.

  Scenario: Submeter um projeto indicando um aluno SEM cadastro na plataforma
    Dado que estou na página de Submeter Projeto PIBIC
    Quando preencho todos os campos obrigatórios com dados válidos
    E indico o aluno sem cadastro na plataforma que fará parte do projeto
    E seleciono a opção de salvar
    Então recebo a informação de que meu projeto foi submetido com sucesso
    E o aluno recebe um e-mail para criar seu cadastro na plataforma informando apenas seus dados básicos
    E sou direcionado para a página de visualizar meus projetos.

## Funcionalidade - Alterar projetos
  Feature: Alterar projetos PIBIC
    Como professor logado na plataforma
    Quero acessar as páginas de Edição de Projeto do PIBIC
    Para alterar meu projeto PIBIC em andamento.

  Scenario: Acessar página de edição de projeto
    Dado que estou na página de projetos PIBIC
    E tendo selecionado a aba de Projetos em Andamento
    Quando identifico o projeto que desejo alterar
    E seleciono a opção de Editar
    Então sou direcionado para a página de Editar Projeto.

  Scenario: Alterar um projeto com sucesso
    Dado que estou na página de Editar uma projeto PIBIC
    Quando altero alguns campos permitidos com dados válidos
    E seleciono a opção de salvar projeto
    Então recebo a informação de que meu projeto foi alterado com sucesso
    E sou direcionado para a página de visualizar meus projetos.

  Scenario: Alterar um projeto indicando um aluno COM cadastro na plataforma
    Dado que estou na página de Editar uma projeto PIBIC
    Quando indico no projeto um outro aluno com cadastro na plataforma
    E seleciono a opção de salvar projeto
    Então recebo a informação de que meu projeto foi alterado com sucesso
    E sou direcionado para a página de visualizar meus projetos.

  Scenario: Alterar um projeto indicando um aluno SEM cadastro na plataforma
    Dado que estou na página de Editar uma projeto PIBIC
    Quando indico no projeto um outro aluno sem cadastro na plataforma
    E seleciono a opção de salvar projeto
    Então recebo a informação de que meu projeto foi alterado com sucesso
    E o aluno recebe um e-mail para criar seu cadastro na plataforma informando apenas seus dados básicos
    E sou direcionado para a página de visualizar meus projetos.

## Funcionalidade - Realizar ressubmissões
  Feature: Realizar a ressubmissão de projetos PIBIC indeferidos
    Como professor logado na plataforma
    Quero acessar a página de Projetos PIBIC
    Para realizar a ressubmissão de projetos indeferidos.

  Scenario: Acessar página de ressubmissão de uma projeto indeferido
    Dado que estou na página de projetos PIBIC
    Quando seleciono a aba de Projetos em Andamento 
    E estão sendo listados as meus projetos em aberto
    E seleciono a opção de Visualizar Parecer de uma projeto cujo status está como Indeferido
    E seleciono a opção de Ressubmeter 
    Então sou redirecionado para a página de Ressubmissão.

  Scenario: Realizar uma ressubmissão com sucesso
    Dado que estou na página de Ressubmissão de uma projeto PIBIC indeferido
    Quando realizo alteração dos campos do projeto com dados válidos, de acordo com o parecer do projeto
    E seleciono a opção de salvar
    Então a ressubmissão é concluída com sucesso
    E o projeto retorna para o status de Em Análise.


## Dúvidas:
### Etapas do Projeto: Abertura, Submissão, Avaliação, (Recurso?, Cancelamento?), Entrega de Documentos, Encerramento.
### Até qual etapa podem ocorrer alterações do projeto?
### Que tipo de alterações são permitidas?
### As informações bancárias do aluno só serão cadastradas na etapa de Entrega de Documentos?
### Será possível alterar o aluno depois disso?
### Quando os relatórios parciais deverão ser entregues?
### Há algum outro documento que deverá ser entregue de forma periódica?
### Quem deverá entregar tais documentos-relatórios?
### O relatório final deverá ser entregue apenas na etapa de encerramento?
### O avaliador é também um professor, isto é, poderá criar projetos?
### Cada professor deve estar associado a alguma área? Se sim, quais são essas áreas?
### O avaliador só poderár avaliar projetos de sua área?