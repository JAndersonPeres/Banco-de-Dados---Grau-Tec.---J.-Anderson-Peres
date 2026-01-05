CREATE USER 'admin_sistema'@'localhost' IDENTIFIED BY '123';
CREATE USER 'operador_sistema'@'localhost' IDENTIFIED BY '123';
CREATE USER 'consulta_sistema'@'localhost' IDENTIFIED BY '123';

GRANT ALL PRIVILEGES ON hospital.* TO 'admin_sistema'@'localhost';
GRANT SELECT, INSERT, UPDATE ON hospital.* TO 'operador_sistema'@'localhost';
GRANT SELECT ON hospital.* TO 'consulta_sistema'@'localhost';

FLUSH PRIVILEGES;