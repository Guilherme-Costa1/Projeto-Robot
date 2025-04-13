# 🚀 Projeto de Automação de Testes com Robot Framework

Este projeto utiliza o Robot Framework em conjunto com Selenium para automação de testes em uma aplicação web. Os resultados dos testes são armazenados na pasta Result.

---

## 🔧 **Pré-requisitos**
Antes de rodar os testes, certifique-se de que tenha instalado:
- **Python (3.6 ou superior)**: ([Baixar aqui](https://www.python.org/downloads/))
- **Pip** Gerenciador de pacotes do Python (normalmente incluído).

---

## ⚙️ **Configuração do Projeto**
Agora, siga os passos abaixo para configurar o ambiente corretamente:

### **1️⃣ Para o Ambiente Local (sem Docker)**
```sh
git clone https://github.com/seu-repositorio/seu-projeto.git
cd seu-projeto
```

### 2️⃣ Criar e Ativar Ambiente Virtual  
#### ✅Criar o ambiente virtual:
```sh
   python -m venv venv
```
#### ✅Ativar o ambiente virtual:

venv\Scripts\activate

### 3️⃣ Instale as Dependências
```sh
pip install -r requirements.txt
```
## 🚀 Como Executar os Testes

Agora que tudo está configurado, você pode rodar testes 

### 📌Executando Localmente

1️⃣ Executar os Testes:
```sh
robot -d Result Tests
```

📊 Visualizar os Resultados do Teste
Após executar os testes abra a pasta Result e verá um resultado detalhado da sua execução 


---

### **📌 Principais Componentes da Arquitetura**
A arquitetura do projeto é baseada em dois conceitos principais: modularização e Page Object Model (POM).


###  Modularização
A modularização ajuda a organizar o código em diferentes componentes e diretórios, permitindo uma manutenção mais fácil e uma escalabilidade eficiente. A estrutura do projeto é dividida em várias pastas:

#### **1️⃣ `src/Elements` -  Contém os elementos de interface do usuário que estão sendo testados, armazenando localizadores (ex: seletores XPath ou CSS).**

#### **2️⃣ `src/Resource` -  Armazena arquivos que contêm palavras-chave reutilizáveis e variáveis que são utilizadas em diferentes testes.**

#### **3️⃣ `src/Result` - Nesta pasta, são salvos os resultados dos testes executados, incluindo relatórios e logs para análise posterior.**

#### **4️⃣ `src/Steps` - Inclui os arquivos que definem os passos a serem executados nos testes. As ações que o Robot Framework deve realizar estão aqui.**

#### **5️⃣ `src/Tests` -  Contém os scripts dos testes propriamente ditos, que utilizam palavras-chave e elementos definidos nas pastas acima.**

---

### **📌 Page Object Model (POM)**

O Page Object Model é um padrão de design que facilita a automação de testes, mantendo o código limpo e organizado. Com o POM:

* Cada página da aplicação é representada como uma classe separada, encapsulando a lógica de interação com essa página.


* As ações que podem ser realizadas em cada página (como cliques e preenchimento de formulários) são definidas como métodos dentro dessa classe.


* Isso reduz a duplicação de código, pois a lógica de interação com a UI é centralizada em uma única classe para cada página, facilitando a manutenção e a atualização dos testes.


Essa abordagem modular e o uso do POM permitem que o projeto seja escalável, legível e fácil de manter, ajustando-se às mudanças na interface da aplicação com mínima intervenção.

---

### **📌 Benefícios da Arquitetura Modularizada**
✅ **Separação de responsabilidades** → Código organizado e fácil de manter.  
✅ **Reutilização de código** → Funções podem ser reutilizadas em diferentes testes.  
✅ **Facilidade de escalar** → Podemos facilmente adicionar novos testes sem modificar a estrutura geral.  
✅ **Monitoramento eficiente** → A integração com o InfluxDB e Grafana permite que os testes sejam analisados em tempo real.  

---
