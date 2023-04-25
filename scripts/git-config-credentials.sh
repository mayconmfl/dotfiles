#!/bin/bash

# Variáveis para armazenar o diretório inicial, nome de usuário e email
starting_dir=""
username=""
email=""

# Variável para armazenar a quantidade de diretórios .git encontrados
count=0

# Função para configurar o nome e o email do usuário
function configure_user {
    git config user.name "$username"
    git config user.email "$email"
}

# Captura o diretório inicial, nome de usuário e email informados pelo usuário
echo "Olá bem vindo a rotina de atualizacao do usuario e email do git!"
read -p "Digite o diretorio inicial para a busca dos diretorios .git: " starting_dir
read -p "Digite o seu nome de usuário para o git: " username
read -p "Digite o seu email para o git: " email

# Verifica se o diretório informado existe
if [ ! -d "$starting_dir" ]; then
    echo "Diretorio não encontrado!"
    exit 1
fi

# Procura recursivamente todos os diretórios .git a partir do diretório inicial informado e executa a função configure_user
while IFS= read -r -d '' git_dir; do
    cd "$git_dir/.."
    configure_user
    count=$((count+1))
done < <(find "$starting_dir" -type d -name ".git" -print0)

# Mostra a quantidade de diretórios .git encontrados
echo "Foram encontrados $count diretorio .git"

# Mensagem de conclusão
echo "Configuracao concluida!"