# Testes automatizados com Ruby e cucumber

## Apresentação

Este repositório apresenta um sistema que realiza testes automatizados em uma site chamado https://front.serverest.dev/login com a utilização do cucumber e a linguagem de programação Ruby, Selenium e as gems cucumber, capybara, site_prism, selenium-webdriver, rspec, pry e faker 

### Pré requisitos

Para começar a realizar os testes é necessário atender os seguintes pré-requisitos:

* [Ruby 3.1+](http://rubyinstaller.org/downloads/)
* [Cmder](https://github.com/cmderdev/cmder)
* [Gems cucumber, capybara, site_prism, selenium-webdriver, rspec, pry e faker](Gemfile)
* [Git](https://git-scm.com/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Chromedriver](http://chromedriver.chromium.org/downloads)

### Instalação

No sistema operacional Windows, baixe o instalador do Ruby para prosseguir.

Executar o instalador Ruby:<br/>
Instalar no diretório "C:/Ruby31x64"<br/>
Marcar a opção "Add Ruby executables to your Path"<br/>
Marcar a opção "Associate .rb and .rbw files with this Ruby installantion".

Instalação das Gems<br/>
Executar os seguintes comandos no Cmder:
```
gem install win32console
gem install bundler
gem install ruby-debug-ide
```
Instalação Visual Studio Code<br/>
1.Executar o instalador:<br/>
a. Selecionar a opção “Add ‘Open with Code’ action to Windows Explorer file context menu”<br/>
b. Selecionar a opção “Add ‘Open with Code’ action to Windows Explorer directory context menu”<br/>
2. Abrir o VSCode e ir em File > Preferences > Settings;<br/>
3. Pesquisar por "http.proxyStrictSSL" e setar para false;

Instalar as seguintes extensões no VScode:
* Ruby
* Snippets and Syntax Highlight for Gherkin (Cucumber)
* Gherkin Indent
* EditorConfig
* Ruby Solargraph

Instalação do Chromedriver<br/>
1.Executar os seguintes comandos no Cmder:
```
npm config set strict-ssl false
npm install -g chromedriver
```
2. Baixar a versão do chromedriver correspondente a versão do Chrome instalada na sua máquina.
3. Extrair o zip e adicionar o arquivo .exe no diretório “C:\Ruby31-x64\bin”

Para obter os testes em sua maquina, basta clonar o repositório para o diretório local que desejar.
```
git clone https://github.com/chrisOsilva/ProjetoFinal_Christian_Compass.git
```

## Execução dos testes

Para executar os testes é necessario clonar o repositório em uma pasta local<br/>
Abra a pasta para ter acesso aos arquivos<br/>
Execute o terminal Cmder com o botão direito do mouse dentro da pasta, de o comando a seguir para abrir o VScode:
```
code .
```
Com o terminal Cmder execute o comando:
```
bundle exec cucumber
```
Os testes começam automaticamente.

## Tecnologias utilizadas
* [Cucumber] (https://cucumber.io/)
* [Ruby] (https://www.ruby-lang.org/pt/)
* Selenium WebDriver 4.0

## Autores

Olá, me chamo Christian e estou cursando Sistemas para Internet, este projeto vem do Programa de Bolsas de Automação de testes front-end com Ruby da Compass.UOL, como uma forma de estudar a linguagem Ruby e a utilização do Selenium.

### Contato
* [chrissilva3330@gmail.com](chrissilva3330@gmail.com)
* [Linkedin](https://www.linkedin.com/in/christian-oliveira-da-silva/)

## Contribuidores
[Compass](https://compass.uol) - Larissa Campos - Bruno Leite Mesquita - Jacques de Jesus Figueredo Schmitz J.


## License

[MIT LICENSE](https://github.com/chrisOsilva/ProjetoFinal_Christian_Compass/blob/main/LICENSE)

## Créditos
* [Medium](https://medium.com/cwi-software/automatizando-testes-de-aplica%C3%A7%C3%B5es-web-com-capybara-e-selenium-webdriver-8e630c7f6f03)
* [YouTube](https://www.youtube.com/watch?v=nh-tU29Tm8s&t=7791s)
* [CWI](https://cwi.com.br/blog/automacao-de-testes-o-que-precisamos-planejar-antes-de-iniciar/)
* [REVELO](https://blog.revelo.com.br/teste-funcional/)
