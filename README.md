# Exercícios de Automação de Testes com Robot Framework

Bem-vindo ao repositório de exercícios de automação de testes utilizando o Robot Framework! Este repositório foi criado para ajudar na prática e no aprendizado de automação de testes.

## Requisitos

Antes de começar, certifique-se de ter os seguintes requisitos instalados:

- **Python 3.x**
- **Robot Framework**
- **SeleniumLibrary** (caso esteja automatizando testes web)

Para instalar os requisitos necessários, execute:

```bash
pip install robotframework
pip install robotframework-seleniumlibrary

Estrutura do Repositório

A estrutura do repositório segue a seguinte organização:

/exercicios
  /basico
    - primeiro_teste.robot
    - variaveis.robot
  /intermediario
    - keywords_personalizadas.robot
  /avancado
    - testes_com_api.robot
/resources
  - common.resource

exercicios/: Contém os arquivos de testes divididos por nível de dificuldade.

resources/: Contém arquivos reutilizáveis, como keywords e configurações comuns.

Como Executar os Testes

Para rodar os testes, utilize o seguinte comando:

robot -d results exercicios/basico

Os resultados serão gerados na pasta results/, contendo os arquivos log.html e report.html com os detalhes da execução.


Contato

Caso tenha dúvidas ou sugestões, entre em contato via e-mail : maivelososousa@gmail.com.