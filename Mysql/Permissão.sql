# https://receitasdecodigo.com.br/banco-de-dados/criar-usuario-no-mysql-e-conceder-permissoes
# Permissão ao usuário a um banco especifico

mysql -u root -p
CREATE USER 'wolmir'@'%' IDENTIFIED BY 'w123';
create database teste;
GRANT ALL PRIVILEGES ON teste.* TO 'wolmir'@'%';