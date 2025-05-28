# Automation Exercise

Este projeto tem como objetivo automatizar casos de teste para aplicações web, utilizando o framework Robot Framework. Ele inclui suítes e casos de teste organizados, além de relatórios detalhados de execução.

## 📋 Descrição

O repositório contém scripts de automação de testes desenvolvidos para facilitar a validação de funcionalidades em diferentes cenários. Os testes são escritos seguindo boas práticas de automação e podem ser facilmente adaptados para diferentes aplicações web.

## 🛠️ Tecnologias Utilizadas

- **Robot Framework**: Estrutura principal para automação dos testes.
- **Linguagem**: Os testes são escritos em arquivos `.robot`, que permitem uma sintaxe simples e legível.
- **Relatórios HTML**: Geração de logs e reports automáticos após cada execução.

## 📑 Estrutura do Projeto
```text
automation-exercise/
├── data/                        # Dados auxiliares para os testes
├── resources/                   # Keywords e recursos reutilizáveis
│   ├── ContactUsPage.resource
│   ├── LoginUserPage.resource
│   ├── LogoutUser.resource
│   ├── ProductsDetailsPage.resource
│   ├── RegisterUserPage.resource
│   ├── SubscriptionHomePage.resource
│   ├── TestCasePage.resource
│   └── image/
│       └── Test_Qa.jpg
├── tests/                       # Casos de teste organizados por funcionalidade
│   ├── contact_us.robot
│   ├── login_user.robot
│   ├── logout_user.robot
│   ├── register_user.robot
│   ├── test_case_page.robot
│   └── logs/                    # Relatórios de execução dos testes
│       ├── log.html
│       ├── output.xml
│       └── report.html
├── .gitignore                   # Ignora logs e resultados no controle de versão
└── README.md                    # Documentação do projeto
```

- data/ : Pasta opcional para armazenar dados auxiliares, como arquivos CSV, JSON ou outros dados de entrada para os testes.

- resources/ : Contém arquivos .resource com keywords customizadas e reutilizáveis, facilitando a organização e manutenção do código de automação. Também pode conter subpastas, como image/, para armazenar imagens usadas nos testes.

- resources/image/ : Armazena imagens utilizadas nos testes, por exemplo, para upload ou validação visual.

- tests/: Guarda os arquivos .robot com os cenários de teste automatizados, separados por funcionalidade (ex: login, cadastro, contato, etc). Pode conter uma subpasta logs para os relatórios.

- tests/logs/ : Pasta onde são salvos os relatórios de execução dos testes, como log.html, output.xml e report.html.

- .gitignore :  Arquivo de configuração do Git para ignorar pastas e arquivos que não devem ser versionados, como logs e resultados de testes.

- README.md : Arquivo de documentação do projeto, com instruções de uso, requisitos e informações gerais.

## 🧪 Estrutura dos Testes

- Os testes estão localizados na pasta `tests/`.
- Os arquivos `.robot` descrevem diferentes cenários e funcionalidades.
- Relatórios e logs são gerados automaticamente em `tests/logs/`.

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
   - Para executar um cenário em específico via tag digite o comando:
  
   ```bash
     robot -i nome da tag tests/
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

Em caso de dúvidas ou sugestões, entre em contato:
- GitHub: [maiarasousa](https://github.com/maiarasousa)

