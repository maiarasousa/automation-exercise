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
- Navegador (Chrome, Firefox, etc.)
- WebDriver compatível com o navegador instalado

## 📑 Estrutura do Projeto
```text
automation-exercise/
├── .github/                     # Integrações com Github
│   ├── PULL_REQUEST_TEMPLATE.md # Template padrão para PRs
├── data/                        # Dados auxiliares para os testes
│   └── images
├── env/                        # Configurações de ambiente
│   └── dev.py
│   └── hml.py
│   └── prod.py       
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
├── .gitignore                   # Ignora arquivos irrelevantes para versionamento
└── README.md                    # Documentação do projeto
```
<p> A estrutura deste projeto foi planejada para garantir organização, reutilização e escalabilidade dos testes automatizados. Separar os arquivos de testes, recursos e dados facilita a manutenção e evita duplicação de código, seguindo o princípio DRY (Don't Repeat Yourself). 
   
   Além disso, essa abordagem torna o projeto mais acessível para novos colaboradores, permitindo que qualquer pessoa compreenda rapidamente o funcionamento dos testes e contribua com facilidade. A estrutura modular também favorece a integração com pipelines de CI/CD, possibilitando execuções automáticas e contínuas. Com padronização clara e responsabilidades bem definidas, o projeto se torna uma base sólida e reutilizável, podendo ser adotado como modelo para outras squads ou equipes. Esses fatores tornam a automação mais sustentável no longo prazo e aumentam significativamente a qualidade e produtividade da equipe de QA.</p>

## 🧪 Estrutura dos Testes

- Os testes automatizados estão organizados na pasta tests/, com arquivos .robot separados por funcionalidade (ex: login, cadastro, contato).
- Cada arquivo .robot utiliza a sintaxe Gherkin, uma linguagem legível por humanos, com estruturas como Dado, Quando, Então, que seguem o padrão BDD (Behavior-Driven Development).
- A abordagem BDD facilita a comunicação entre áreas técnicas e não técnicas, pois os testes são escritos de forma mais próxima da linguagem de negócio.
- Com isso, stakeholders, analistas e desenvolvedores conseguem entender os testes sem precisar conhecer a fundo a linguagem de automação.
- Essa estrutura torna os testes mais legíveis, colaborativos e alinhados com os critérios de aceitação das funcionalidades.
- Após a execução, são gerados automaticamente relatórios e reports detalhados em reports/ (fora da pasta tests/), incluindo log.html, report.html e output.xml.
  

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
- Para executar os testes em paralelo e salvar os reports na pasta reports, use o comando abaixo:
```bash
pabot --processes 4 --outputdir reports tests/
```

6. **Execute os testes de forma headless (ou não)**

🕶️ Os testes deste projeto estão configurados para rodar o navegador em modo headless, o que significa que o navegador não será aberto visualmente durante a execução, tornando os testes mais rápidos e compatíveis com ambientes como CI/CD (GitHub Actions, Jenkins, etc). No entanto, é possível alternar entre modo headless e modo visual usando uma variável de ambiente no momento da execução.

⚙️ Como funciona
- No projeto, a variável ${HEADLESS} controla se os testes devem rodar com ou sem headless. Por padrão, ela está definida como True, mas você pode sobrescrevê-la com o parâmetro --variable.

Configuração da keyword para Chrome:

```bash
Open the browser
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Run Keyword If    '${HEADLESS}'=='True'    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    ${URL}    ${BROWSER}    options=${options}
    Maximize Browser Window
```
- Essa keyword é reutilizada nos testes para garantir que todos sejam executados no modo headless automaticamente.
- Essa lógica está implementada nas keywords reutilizáveis dentro da pasta resources/, usando ChromeOptions.
- A keyword avalia o valor da variável ${HEADLESS} para decidir se deve ou não ativar o modo headless.

▶️ Executando testes no modo headless
Como o modo headless já está configurado nas keywords, basta rodar os testes normalmente:

- Executar com navegador headless (modo silencioso):
```bash
robot --variable HEADLESS:True --outputdir reports tests/
```
- Execução paralela com headless:
```bash
pabot --processes 4 --variable HEADLESS:True --outputdir reports tests/
```
- Executar com navegador visível (modo gráfico):
```bash
robot --variable HEADLESS:False --outputdir reports tests/
```
▶️ Executando testes por ambiente

🌎 Este projeto permite executar os testes em diferentes ambientes (ex: desenvolvimento, homologação, produção) usando arquivos de variáveis específicos para cada ambiente, localizados na pasta `env/`.

⚙️ Como funciona
- Para cada ambiente, existe um arquivo Python com as variáveis necessárias, com a URL.

- Para rodar os testes em um ambiente específico, utilize o parâmetro `--variablefile` na linha de comando, apontando para o arquivo desejado.

**Exemplo de execução em ambiente de desenvolvimento:**
```bash
robot --variablefile env/dev.py --outputdir reports tests/
```

**Exemplo de execução em ambiente de homologação:**
```bash
robot --variablefile env/hml.py --outputdir reports tests/
```

**Execução em ambiente de produção:**
```bash
robot --variablefile env/prod.py --outputdir reports tests/
```

**Execução default:**
Na execução default é utilizado o arquivo de dev.py onde está configurado o ambiente como padrão.
```bash
robot -- outputdir reports tests/
```


7. **Veja os relatórios**
   - Após a execução, acesse os artefatos gerados em  `/reports`.

## 🤝 Como contribuir

1. Faça um fork do projeto
2. Crie uma branch para sua feature/fix (`git checkout -b minha-feature`)
3. Commit suas alterações (`git commit -m 'Adicionar minha feature'`)
4. Dê push para a branch (`git push origin minha-feature`)
5. Abra um Pull Request

## 📝 Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais informações.

## 📧 Contato

Este projeto está em constante evolução e sugestões são sempre bem-vindas!  
Se você encontrar algum **bug**, tiver alguma **ideia de melhoria** ou quiser contribuir de alguma forma, sinta-se à vontade para entrar em contato.. 
- GitHub: [maiarasousa](https://github.com/maiarasousa)

