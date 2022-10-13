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
    Quero acessar a página de Projetos
    Para visualizar meus projetos abertos ou encerrados.

  Scenario: Acessar a página de gerenciamento dos meus projetos 
    Dado que estou logado na plataforma
    Quando seleciono a opção de acesso à página de Projetos
    Então sou direcionado para a página de Projetos.

  Scenario: Visualizar meus projetos em andamento
    Dado que estou na página de projetos
    Quando seleciono a aba de Projetos em Andamento
    Então são listados todos os meus projetos em andamento.

  Scenario: Visualizar meus projetos encerrados
    Dado que estou na página de projetos
    Quando seleciono a aba de Projetos Encerrados
    Então são listados todos os meus projetos encerrados.

  Scenario: Acompanhar andamento dos meus projetos
    Dado que estou na página de projetos
    Quando seleciono a aba de Projetos em Aberto 
    E estão sendo listados os meus projetos em aberto
    E seleciono a opção de Visualizar Parecer de um projeto
    Então me é informado detalhes sobre o status e parecer do meu projeto.

## Funcionalidade - Criar projetos
  Feature: Criar projetos
    Como professor logado na plataforma
    Quero acessar as páginas de Criação de Projetos
    Para criar meus projetos.

  Scenario: Acessar página de criação de projeto
    Dado que estou na página de projetos
    Quando seleciono a opção de Criar Projeto
    Então sou direcionado para a página de Criar Projeto.

  Scenario: Criar um projeto com sucesso
    Dado que estou na página de Criar Projeto
    Quando preencho todos os campos obrigatórios com dados válidos
    E seleciono a opção de Salvar
    Então recebo a informação de que meu projeto foi aberto com sucesso
    E sou direcionado para a página de visualizar meus projetos.

## Funcionalidade - Submeter projetos
  Feature: Submeter projetos
    Como professor logado na plataforma
    Quero acessar as páginas de Submissão de Projeto
    Para submeter meu projeto em aberto.

  Scenario: Acessar página de submissão
    Dado que estou na página de Projetos
    Quando seleciono meu projeto com status Aberto
    E seleciono a opção de Submeter
    Então sou direcionado para a página de Submeter Projeto.

  Scenario: Submeter um projeto com sucesso
    Dado que estou na página de Submeter Projeto
    Quando preencho todos os campos obrigatórios com dados válidos
    E indico o aluno que fará parte do projeto
    E seleciono a opção de salvar
    Então recebo a informação de que meu projeto foi submetido com sucesso
    E meu projeto passa para o status de Em Avaliação
    E sou direcionado para a página de visualizar meus projetos.

  Scenario: Submeter um projeto indicando um aluno COM cadastro na plataforma
    Dado que estou na página de Submeter Projeto
    Quando preencho todos os campos obrigatórios com dados válidos
    E indico o aluno com cadastro na plataforma que fará parte do projeto
    E seleciono a opção de salvar
    Então recebo a informação de que meu projeto foi submetido com sucesso
    E sou direcionado para a página de visualizar meus projetos.

  Scenario: Submeter um projeto indicando um aluno SEM cadastro na plataforma
    Dado que estou na página de Submeter Projeto
    Quando preencho todos os campos obrigatórios com dados válidos
    E indico o aluno sem cadastro na plataforma que fará parte do projeto
    E seleciono a opção de salvar
    Então recebo a informação de que meu projeto foi submetido com sucesso
    E o aluno recebe um e-mail para criar seu cadastro na plataforma informando apenas seus dados básicos
    E sou direcionado para a página de visualizar meus projetos.

## Funcionalidade - Alterar projetos
  Feature: Alterar projetos
    Como professor logado na plataforma
    Quero acessar a página de Edição de Projeto
    Para alterar meu projeto em andamento.

  Scenario: Acessar página de edição de projeto
    Dado que estou na página de projetos
    E tendo selecionado a aba de Projetos em Andamento
    Quando identifico o projeto que desejo alterar
    E seleciono a opção de Editar
    Então sou direcionado para a página de Editar Projeto.

  Scenario: Alterar um projeto com sucesso
    Dado que estou na página de Editar um projeto
    Quando altero alguns campos permitidos com dados válidos
    E seleciono a opção de Salvar
    Então recebo a informação de que meu projeto foi alterado com sucesso
    E sou direcionado para a página de visualizar meus projetos.

  Scenario: Alterar um projeto indicando um aluno COM cadastro na plataforma
    Dado que estou na página de Editar um projeto
    Quando indico no projeto um outro aluno com cadastro na plataforma
    E seleciono a opção de Salvar
    Então recebo a informação de que meu projeto foi alterado com sucesso
    E sou direcionado para a página de visualizar meus projetos.

  Scenario: Alterar um projeto indicando um aluno SEM cadastro na plataforma
    Dado que estou na página de Editar um projeto
    Quando indico no projeto um outro aluno sem cadastro na plataforma
    E seleciono a opção de Salvar
    Então recebo a informação de que meu projeto foi alterado com sucesso
    E o aluno recebe um e-mail para criar seu cadastro na plataforma informando apenas seus dados básicos
    E sou direcionado para a página de visualizar meus projetos.

## Funcionalidade - Cancelar projetos
 Feature: Cancelar projetos
    Como professor logado na plataforma
    Quero acessar a página de Cancelar Projeto
    Para cancelar meu projeto em andamento.

  Scenario: Acessar página de cancelar projeto
    Dado que estou na página de projetos
    E tendo selecionado a aba de Projetos em Andamento
    Quando identifico o projeto que desejo cancelar
    E seleciono a opção de Cancelar
    Então sou direcionado para a página de Cancelar Projeto.

  Scenario: Cancelar projeto
    Dado que estou na página de Cancelar Projeto
    Quando preencho o motivo de cancelamento
    E seleciono a opção de Salvar
    Então recebo a informação de que meu projeto foi cancelado com sucesso
    E sou direcionado para a página de visualizar meus projetos.

## Funcionalidade - Ressubmeter projetos
  Feature: Realizar a ressubmissão de projetos indeferidos
    Como professor logado na plataforma
    Quero acessar a página de Projetos
    Para realizar a ressubmissão de um projeto indeferido.

  Scenario: Acessar página de ressubmissão de um projeto indeferido
    Dado que estou na página de projetos
    Quando seleciono a aba de Projetos em Andamento 
    E estão sendo listados meus projetos em aberto
    E seleciono a opção de Visualizar Parecer de um projeto cujo status está como Indeferido
    E seleciono a opção de Ressubmeter 
    Então sou redirecionado para a página de Ressubmissão.

  Scenario: Realizar uma ressubmissão com sucesso
    Dado que estou na página de Ressubmissão de um projeto indeferido
    Quando realizo alteração dos campos do projeto com dados válidos, de acordo com o parecer do projeto
    E seleciono a opção de salvar
    Então a ressubmissão é concluída com sucesso
    E meu projeto retorna para o status de Em Avaliação
    E sou direcionado para a página de visualizar meus projetos.

## Funcionalidade - Entregar documento de projetos
  Feature: Realizar a entrega de documentos de um projeto Deferido
    Como professor logado na plataforma
    Quero acessar a página de Projetos
    Para realizar a Entrega de Documentos de um projeto deferido.

  Scenario: Acessar página de Entrega de Documento de um projeto Deferido
    Dado que estou na página de projetos
    Quando seleciono a aba de Projetos em Andamento 
    E estão sendo listados meus projetos em aberto
    E seleciono a opção de Visualizar Parecer de um projeto cujo status está como Deferido
    E seleciono a opção de Entregar Documentos 
    Então sou redirecionado para a página de Entrega de Documentos.

  Scenario: Realizar a Entrega de Documentos com sucesso
    Dado que estou na página de Entrega de Documentos de um projeto Deferido
    Quando realizo o upload dos arquivos solicitados
    E esses são carregados com sucesso
    E seleciono a opção de salvar
    Então a entrega de documentos é concluída com sucesso
    E meu projeto passa para o status de Em Análise
    E sou direcionado para a página de visualizar meus projetos.

## Funcionalidade - Entregar relatório parcial de projetos
  Feature: Realizar a entrega de relatório parcial de um projeto Iniciado
    Como professor logado na plataforma
    Quero acessar a página de Projetos
    Para realizar a Entrega de Relatório Parcial de um projeto iniciado.

  Scenario: Acessar página de Entrega de Relatório Parcial de um projeto Iniciado
    Dado que estou na página de projetos
    Quando seleciono a aba de Projetos em Andamento 
    E estão sendo listados meus projetos em aberto
    E seleciono a opção de Acompanhar de um projeto cujo status está como Iniciado
    Então sou redirecionado para a página de Acompanhamento do Projeto.

  Scenario: Realizar a Entrega de Relatório Parcial com sucesso
    Dado que estou na página de Acompanhamento do Projeto de um projeto Iniciado
    Quando realizo o upload do Relatório Parcial
    E esse é carregado com sucesso
    E seleciono a opção de salvar
    Então a entrega de relatório parcial é realizada com sucesso
    E sou direcionado para a página de visualizar meus projetos.

## Funcionalidade - Encerrar projetos
  Feature: Encerrar projetos
    Como professor logado na plataforma
    Quero acessar a página de Projetos
    Para realizar o Encerramento de um projeto iniciado.

  Scenario: Acessar página de Encerrar Projeto de um projeto Iniciado
    Dado que estou na página de projetos
    Quando seleciono a aba de Projetos em Andamento 
    E estão sendo listados meus projetos em aberto
    E seleciono o projeto com status Iniciado que desejo encerrar
    E esse já atingiu o tempo mínimo de execução do projeto para poder ser encerrado
    E seleciono a opção de Encerrar
    Então sou redirecionado para a página de Encerrar Projeto.

  Scenario: Realizar o encerramento de um projeto com sucesso
    Dado que estou na página de Encerrar Projeto de um projeto Iniciado
    Quando preencho de forma válida os campos obrigatórios para encerramento
    E seleciono a opção de salvar
    Então recebo a informação de que meu projeto foi encerrado com sucesso
    E sou direcionado para a página de visualizar meus projetos.

## Funcionalidade - Entrega de relatório final
  Feature: Realizar a entrega de relatório final de um projeto Encerrado
    Como professor logado na plataforma
    Quero acessar a página de Projetos
    Para realizar a Entrega de Relatório Final de um projeto encerrado.

  Scenario: Acessar página de Entrega de Relatório Final de um projeto Encerrado
    Dado que estou na página de projetos
    Quando seleciono a aba de Projetos Encerrados 
    E estão sendo listados meus projetos encerrados
    E seleciono a opção de Acompanhar de um projeto cujo status está como Encerrado
    Então sou redirecionado para a página de Acompanhamento do Projeto.

  Scenario: Realizar a Entrega de Relatório Final com sucesso
    Dado que estou na página de Acompanhamento do Projeto de um projeto Encerrado
    Quando realizo o upload do Relatório Final
    E esse é carregado com sucesso
    E seleciono a opção de salvar
    Então a entrega de relatório final é realizada com sucesso
    E sou direcionado para a página de visualizar meus projetos.

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

## Status do Projeto:
### Aberto: neste status os dados do projeto devem ser completamente preenchidos para ser Submetido;
### Avaliação: neste status o projeto foi Submetido e se encontra disponível para avaliação por parte do Avaliador;
### Indeferido: quando o avaliador Reprova um projeto, esse passa para o status de Indeferido e pode passar pelo processo de Ressubmissão dentro de um período de XX dias;
### Deferido: neste status o projeto está pronto para receber os documentos necessários para ser iniciado - os documentos devem ser entregues dentro de um período de XX dias;
### Análise: neste status o projeto já recebeu toda a documentação necessária e essa se encontra em análise pelo Avaliador;
### Iniciado: neste status o projeto já recebeu toda a documentação necessária e essa foi aprovada;
### Pendente: neste status o projeto já recebeu toda a documentação necessária, mas essa não foi aprovada - os documentos podem ser reenviados dentro de um período de XX dias;
### Encerrado: neste status o projeto já foi concluído e o Orientador possui XX dias para entregar o Relatório Final, do contrário sua conta será suspensa por XX anos;
### Cancelado: neste status o projeto foi cancelado por algum motivo:
#### - Indeferido e sem ressubmissão;
#### - Deferido, porém sem que os documentos fossem entregues no prazo;
#### - Pendente, porém sem que os documentos fossem entregues no prazo;
#### - Encerrado, porém sem que o Relatório Final fosse entregue dentro do prazo;
