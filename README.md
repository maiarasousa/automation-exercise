# Automation Exercise

Este projeto foi desenvolvido para fins de estudos, com o objetivo de aperfeiçoar meus conhecimentos em automação web, utilizando Python com Robot Framework em um sistema web de e-commerce. Ele inclui suítes e casos de teste organizados, além de relatórios detalhados de execução.

## 📋 Descrição

Neste repositório você vai encontrar scripts de automação de testes visando simular as ações do usuário no sistema e validar de forma automatizada as principais funcionalidades para uma maior segurança e rápido feedback da saúde da aplicação. Os testes são escritos seguindo boas práticas de automação e podem ser facilmente adaptados para diferentes aplicações web.

## 🛠️ Tecnologias Utilizadas
- Python
- Robot Framework
- SeleniumLibrary

## 📌 Requisitos
- Python 3.8 ou superior
- pip (gerenciador de pacotes)
- Naveador (Chrome, Firefox, etc.)
- WebDriver compatível com o navegador instalado

## 📑 Estrutura do Projeto
```text
automation-exercise/
├── .github/                     # Integrações com Github
│   └── workflows                # Arquivos YAML do GitHub Actions
│   ├── CODEOWNERS               # Define responsáveis por pastas/arquivos
│   ├── PULL_REQUEST_TEMPLATE.md # Template padrão para PRs
├── data/                        # Dados auxiliares para os testes
│   └── images
│   └── configs
│   └── credentials               
├── reports/                     # Relatórios de teste
│   └── html
│   └── xml
├── resources/                   # Keywords de teste
│   ├── ContactUsPage.resource
│   ├── LoginUserPage.resource
│   ├── LogoutUser.resource
│   ├── ProductsDetailsPage.resource
│   ├── RegisterUserPage.resource
│   ├── SubscriptionHomePage.resource
│   ├── TestCasePage.resource
├── tests/                       # Casos de teste por funcionalidade
│   ├── contact_us.robot
│   ├── login_user.robot
│   ├── logout_user.robot
│   ├── register_user.robot
│   ├── test_case_page.robot
│── logs/                        # Logs das execuções dos testes
│   ├── log.html
│   ├── output.xml
├── .gitignore                   # Ignora arquivos irrelevantes para versionamento
└── README.md                    # Documentação do projeto
```
<p> A estrutura deste projeto foi planejada para garantir organização, reutilização e escalabilidade dos testes automatizados. Separar os arquivos de testes, recursos e dados facilita a manutenção e evitar duplicação de código, seguindo o princípio DRY (Don't Repeat Yourself). 
   
   Além disso, essa abordagem torna o projeto mais acessível para novos colaboradores, permitindo que qualquer pessoa compreenda rapidamente o funcionamento dos testes e contribua com facilidade. A estrutura modular também favorece a integração com pipelines de CI/CD, possibilitando execuções automáticas e contínuas. Com padronização clara e responsabilidades bem definidas, o projeto se torna uma base sólida e reutilizável, podendo ser adotado como modelo para outras squads ou equipes. Esses fatores tornam a automação mais sustentável no longo prazo e aumentam significativamente a qualidade e produtividade da equipe de QA.</p>

## 🧪 Estrutura dos Testes

- Os testes automatizados estão organizados na pasta tests/, com arquivos .robot separados por funcionalidade (ex: login, cadastro, contato).
- Cada arquivo .robot utiliza a sintaxe Gherkin, uma linguagem legível por humanos, com estruturas como Dado, Quando, Então, que seguem o padrão BDD (Behavior-Driven Development).
- A abordagem BDD facilita a comunicação entre áreas técnicas e não técnicas, pois os testes são escritos de forma mais próxima da linguagem de negócio.
- Com isso, stakeholders, analistas e desenvolvedores conseguem entender os testes sem precisar conhecer a fundo a linguagem de automação.
- Essa estrutura torna os testes mais legíveis, colaborativos e alinhados com os critérios de aceitação das funcionalidades.
- Após a execução, são gerados automaticamente relatórios e logs detalhados em logs/ (fora da pasta tests/), incluindo log.html, report.html e output.xml.
  

## 🚀 Como rodar o projeto

1. **Clone o repositório**
   ```bash
   git clone https://github.com/maiarasousa/automation-exercise.git
   cd automation-exercise
   ```

2. **Crie um ambiente virtual (opcional, mas recomendado)**
   ```bash
   python -m venv venv
   source venv/bin/activate  # Linux/Mac
   venv\Scripts\activate     # Windows
   ```

3. **Instale as dependências**
   ```bash
   pip install -r requirements.txt
   ```

4. **Execute os testes de forma sequencial**
- Use o parâmetro -i (include) para executar cenários com uma tag específica.
  
   - Executar testes de login:
   ```bash
   robot -i login tests/
   ```
  - Executar testes de cadastro de usuário:
   ```bash
   robot -i register tests/
   ```
  - Executar testes de contato:
  ```bash
   robot -i contact_us tests/
   ```
   - Para executar todos os cenários digite o comando:
   ```bash
   robot tests/
   ```

5. **Execute os testes em paralelo**
- Para otimizar o tempo de execução dos testes automatizados, este projeto suporta a execução paralela utilizando a ferramenta Pabot, que executa múltiplos testes Robot Framework simultaneamente.

✅ Instalação do Pabot
- Se ainda não tiver instalado, use o comando abaixo:
```bash
pip install robotframework-pabot
```
🚀 Execução em paralelo
- Para executar os testes em paralelo e salvar os logs na pasta logs, use o comando abaixo:
```bash
pabot --processes 4 --outputdir logs tests/
```

6. **Execute os testes de forma headless**

🕶️ Os testes deste projeto estão configurados para rodar o navegador em modo headless, o que significa que o navegador não será aberto visualmente durante a execução, tornando os testes mais rápidos e compatíveis com ambientes como CI/CD (GitHub Actions, Jenkins, etc).

Configuração da keyword para Chrome:

```bash
Open the browser
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Open Browser    ${URL}    ${BROWSER}    options=${options}
    Maximize Browser Window
```
- Essa keyword é reutilizada nos testes para garantir que todos sejam executados no modo headless automaticamente.

▶️ Executando testes no modo headless
Como o modo headless já está configurado nas keywords, basta rodar os testes normalmente:

- Execução paralela com headless:
```bash
pabot --processes 4 --outputdir logs tests/
```
- Execução sequencial com headless:
```bash
robot --outputdir logs tests/
```

7. **Veja os relatórios**
   - Após a execução, acesse os artefatos gerados em  `/reports` e `/logs`.

## 🤝 Como contribuir

1. Faça um fork do projeto
2. Crie uma branch para sua feature/fix (`git checkout -b minha-feature`)
3. Commit suas alterações (`git commit -m 'Adicionar minha feature'`)
4. Push para a branch (`git push origin minha-feature`)
5. Abra um Pull Request

## 📝 Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais informações.

## 📧 Contato

Este projeto está em constante evolução e sugestões são sempre bem-vindas!  
Se você encontrar algum **bug**, tiver alguma **ideia de melhoria** ou quiser contribuir de alguma forma,  
sinta-se à vontade. 
- GitHub: [maiarasousa](https://github.com/maiarasousa)

