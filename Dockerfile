# Use a imagem oficial do Python como base
FROM python:3.9-slim

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o arquivo requirements.txt e instalar dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar toda a estrutura do projeto para o container
COPY ./src/ .

# Comando para executar os testes e salvar os resultados na pasta Result
CMD ["robot", "-d", "Result", "Tests"]