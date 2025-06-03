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
├── data/
│   └── image/
│       └── Test_Qa.jpg          # Dados auxiliares para os testes
├── reports/ 
├── resources/                   # Keywords e recursos reutilizáveis
│   ├── ContactUsPage.resource
│   ├── LoginUserPage.resource
│   ├── LogoutUser.resource
│   ├── ProductsDetailsPage.resource
│   ├── RegisterUserPage.resource
│   ├── SubscriptionHomePage.resource
│   ├── TestCasePage.resource
├── tests/                       # Casos de teste organizados por funcionalidade
│   ├── contact_us.robot
│   ├── login_user.robot
│   ├── logout_user.robot
│   ├── register_user.robot
│   ├── test_case_page.robot
│── logs/                        # Relatórios de execução dos testes
│   ├── log.html
│   ├── output.xml
│   └── report.html
├── .gitignore                   # Ignora logs e resultados no controle de versão
└── README.md                    # Documentação do projeto
```
## 📁 Descrição das Pastas e Arquivos
- data/
  - Contém arquivos auxiliares utilizados durante os testes.
  - image/Test_Qa.jpg: Imagem usada para testes de upload.
- reports/
   - Diretório reservado para relatórios personalizados de execução (PDF, JSON, etc.).
- resources/
   - Armazena arquivos .resource com keywords reutilizáveis e elementos das páginas, seguindo o padrão Page Object Model.
   - ContactUsPage.resource: Elementos e ações da página de contato.
   - LoginUserPage.resource: Keywords relacionadas ao login.
   - LogoutUser.resource: Keywords para realizar logout.
   - ProductsDetailsPage.resource: Ações relacionadas à página de detalhes do produto.
   - RegisterUserPage.resource: Keywords de registro de novos usuários.
   - SubscriptionHomePage.resource: Ações com o componente de assinatura/newsletter.
   - TestCasePage.resource: Funcionalidades da página de casos de teste.
- tests/
   - Contém os testes automatizados escritos em arquivos .robot, organizados por funcionalidade.
   - contact_us.robot: Testes da página de contato.
   - login_user.robot: Testes de login de usuário.
   - logout_user.robot: Testes de logout.
   - register_user.robot: Testes de cadastro de usuário.
   - test_case_page.robot: Validações na página de casos de teste.
- logs/
   - Armazena os relatórios gerados automaticamente após a execução dos testes com Robot Framework.
   - log.html: Log completo com todos os passos executados.
   - output.xml: Arquivo de saída para uso interno do Robot.
   - report.html: Relatório final com resumo da execução.

- 🔒 Esta pasta está listada no .gitignore e não é versionada.
- .gitignore
   - Lista os arquivos/pastas que devem ser ignorados pelo Git (como logs, arquivos temporários, etc.).

- README.md
   - Arquivo atual, com a documentação do projeto, instruções de uso e estrutura.
<p> A estrutura deste projeto foi planejada para garantir organização, reutilização e escalabilidade dos testes automatizados. Separar os arquivos de testes, recursos e dados facilita a manutenção e evita duplicação de código, seguindo o princípio DRY (Don't Repeat Yourself). 
   
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

4. **Execute os testes**
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

6. **Veja os relatórios**
   - Após a execução, acesse os arquivos `report.html` e `log.html` na pasta `tests/logs`.

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

