CREATE DATABASE BancoAPI;

USE BancoAPI;

CREATE TABLE IF NOT EXISTS area(
    id_area INT AUTO_INCREMENT PRIMARY KEY,
    cod_area VARCHAR(2),
    nome_area VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS usuario(
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    cod_usuario VARCHAR(6),
    nome_usuario VARCHAR(30) NOT NULL,
    num_acessos INT,
    area INT,
    FOREIGN KEY (area)
        REFERENCES area(id_area)
        ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS acesso(
    id_acessos INT AUTO_INCREMENT PRIMARY KEY,
    data_validacao DATETIME,
    status_validacao VARCHAR(64)
);

INSERT INTO area(cod_area, nome_area)
Values("00", "Administração"),
    ("01", "Produção"),
    ("10", "Logística"),
    ("11", "Gerência");

INSERT INTO usuario(cod_usuario, nome_usuario, num_acessos, area)
Values("000000", "Usuario admin", 0, 1),
    ("000001", "Usuario Prod", 0, 2),
    ("000010", "Usuario Log", 0, 3),
    ("000011", "Usuario Gerente", 0, 4);

select * from usuario;