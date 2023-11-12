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
    'adrian@hotmail.com', 
    crypt(
      'teste123', 
      gen_salt('bf')
    ), 
    'Adrian', 
    'manager', 
    12345678900, 
    'Rua dos bobos, 0', 
    11912345678
  );
