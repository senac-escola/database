CREATE EXTENSION pgcrypto;
CREATE TABLE users (
  id serial NOT NULL,
  user_email varchar(250) NOT NULL UNIQUE, 
  user_password varchar(250) NOT NULL, 
  user_name varchar(250) NOT NULL UNIQUE, 
  user_type varchar(8) NOT NULL, 
  document_id varchar(14) NOT NULL UNIQUE, 
  user_address varchar(250) NOT NULL, 
  user_phone bigint NOT NULL UNIQUE, 
  PRIMARY KEY (id)
);
INSERT INTO users (
  user_email, user_password, user_name, 
  user_type, document_id, user_address, 
  user_phone
) 
VALUES 
  (
    'maria@escola.com', 
    crypt(
      'Teste123', 
      gen_salt('bf')
    ), 
    'Maria', 
    'manager', 
    12345678900, 
    'Rua dos bobos, 0', 
    11912345678
  ),
  (
    'fernanda@escola.com', 
    crypt(
      'Senha123', 
      gen_salt('bf')
    ), 
    'Fernanda', 
    'teacher', 
    12345678910, 
    'Rua dos bobos, 0', 
    11912345679
  ),
  (
    'henrique@hotmail.com', 
    crypt(
      'Aluno123', 
      gen_salt('bf')
    ), 
    'Henrique', 
    'student', 
    12345678911, 
    'Rua dos bobos, 0', 
    11912345670
  ),
  (
    'joao@papelaria.com', 
    crypt(
      'Papelaria123', 
      gen_salt('bf')
    ), 
    'João', 
    'supplier', 
    12345678000122, 
    'Rua dos bobos, 0', 
    11912345671
  );
