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

## Funcionalidade - Visualizar submissões
  Feature: Visualizar submissões ao PIBIC
    Como professor logado na plataforma
    Quero acessar a página de Submissões do PIBIC
    Para visualizar minhas submissões ao PIBIC.

  Scenario: Acessar a página de gerenciamento das minhas submissões 
    Dado que estou logado na plataforma
    Quando seleciono a opção de acesso à página de Submissões do PIBIC
    Então sou direcionado para a página de Submissões do PIBIC.

  Scenario: Visualizar minhas submissões ao PIBIC em aberto
    Dado que estou na página de submissões ao PIBIC
    Quando seleciono a aba de Submissões em Aberto
    Então são listadas todas as minhas submissões em andamento.

  Scenario: Visualizar minhas submissões ao PIBIC encerradas
    Dado que estou na página de submissões ao PIBIC
    Quando seleciono a aba de Submissões Encerradas
    Então são listadas todas as minhas submissões encerradas.

  Scenario: Acompanhar andamento das minhas submissões
    Dado que estou na página de submissões ao PIBIC
    Quando seleciono a aba de Submissões em Aberto 
    E estão sendo listadas as minhas submissões em aberto
    E seleciono a opção de Visualizar Parecer de uma submissão
    Então me é informado detalhes sobre o status e parecer da minha submissão.

## Funcionalidade - Criar submissões
  Feature: Criar submissões ao PIBIC
    Como professor logado na plataforma
    Quero acessar as páginas de Criação de Submissões do PIBIC
    Para criar minhas submissões ao PIBIC.

  Scenario: Acessar página de criação de submissão
    Dado que estou na página de submissões ao PIBIC
    Quando seleciono a opção de Criar uma nova submissão
    Então sou direcionado para a página de Criar Submissão.

  Scenario: Criar uma submissão com sucesso
    Dado que estou na página de Criar uma nova submissão ao PIBIC
    Quando preencho todos os campos obrigatórios com dados válidos
    E faço o upload de forma válida de todos os arquivos solicitados
    E associo à submissão um aluno com um cadastro válido na plataforma
    E seleciono a opção de salvar submissão
    Então recebo a informação de que minha submissão foi salva com sucesso
    E sou direcionado para a página de visualizar minhas submissões.

  Scenario: Criar uma submissão com pendência
    Dado que estou na página de Criar uma nova submissão ao PIBIC
    Quando preencho todos os campos obrigatórios com dados válidos
    E faço o upload de forma válida de todos os arquivos solicitados
    E associo à submissão um aluno sem um cadastro válido na plataforma
    E seleciono a opção de salvar submissão
    Então recebo a informação de que minha submissão aguarda que o aluno conclua seu cadastro
    E o aluno recebe um e-mail com o link para concluir seu cadastro
    E sou direcionado para a página de visualizar minhas submissões.

## Funcionalidade - Alterar submissões
  Feature: Alterar submissões ao PIBIC
    Como professor logado na plataforma
    Quero acessar as páginas de Edição de Submissões do PIBIC
    Para alterar minhas submissões ao PIBIC.

  Scenario: Acessar página de edição de submissão
    Dado que estou na página de submissões ao PIBIC e tendo selecionado a aba de Submissões em Aberto
    Quando identifico a submissão que desejo alterar
    E seleciono a opção de Editar a submissão
    Então sou direcionado para a página de Editar Submissão.

  Scenario: Alterar uma submissão com sucesso
    Dado que estou na página de Editar uma submissão ao PIBIC
    Quando altero alguns campos permitidos com dados válidos
    E faço o upload de forma válida de novos arquivos
    E associo à submissão um novo aluno com um cadastro válido na plataforma
    E seleciono a opção de salvar submissão
    Então recebo a informação de que minha submissão foi alterada com sucesso
    E sou direcionado para a página de visualizar minhas submissões.

  Scenario: Alterar uma submissão com pendência
    Dado que estou na página de Editar uma submissão ao PIBIC
    Quando altero alguns campos permitidos com dados válidos
    E faço o upload de forma válida de novos arquivos
    E associo à submissão um novo aluno sem um cadastro válido na plataforma
    E seleciono a opção de salvar submissão
    Então recebo a informação de que minha submissão aguarda que o aluno conclua seu cadastro
    E o aluno recebe um e-mail com o link para concluir seu cadastro
    E sou direcionado para a página de visualizar minhas submissões.

## Funcionalidade - Realizar ressubmissões
  Feature: Realizar a ressubmissões de submissões indeferidas ao PIBIC
    Como professor logado na plataforma
    Quero acessar a página de Submissões ao PIBIC
    Para realizar a ressubmissão de submissões indeferidas.

  Scenario: Acessar página de ressubmissão de uma submissão indeferida
    Dado que estou na página de submissões ao PIBIC
    Quando seleciono a aba de Submissões em Aberto 
    E estão sendo listadas as minhas submissões em aberto
    E seleciono a opção de Visualizar Parecer de uma submissão cujo status está como Indeferida
    E seleciono a opção de Ressubmeter 
    Então sou redirecionado para a página de Ressubmissão.

  Scenario: Realizar uma ressubmissão com sucesso
    Dado que estou na página de Ressubmissão de uma submissão indeferida ao PIBIC
    Quando realizo alteração dos campos da submissão com dados válidos
    E reenvio os documentos válidos que são necessários de acordo com o parecer da submissão
    E seleciono a opção de salvar
    Então a ressubmissão é concluída com sucesso
    E a submissão retorna para o status de Em Análise.