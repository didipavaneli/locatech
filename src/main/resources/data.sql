CREATE TABLE veiculos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(255),
    modelo VARCHAR(255),
    placa VARCHAR(10),
    ano INT,
    cor VARCHAR(255),
    valor_diaria DECIMAL(10,2)
);

CREATE TABLE pessoas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cpf VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(255)
);

CREATE TABLE alugueis (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    pessoa_id BIGINT NOT NULL,
    veiculo_id BIGINT NOT NULL,
    data_inicio DATE,
    data_fim DATE,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (pessoa_id) REFERENCES pessoas(id),
    FOREIGN KEY (veiculo_id) REFERENCES veiculos(id)
);


INSERT INTO veiculos (marca, modelo, placa, ano, cor, valor_diaria)
VALUES ('Chevrolet', 'Onix', 'XPT-1234', 2020, 'preto', 100.00);

INSERT INTO pessoas (nome, cpf, telefone, email)
VALUES ('Adriano Pavaneli', '123456789-12', '017 999740777', 'adriano@gmail.com');


INSERT INTO alugueis (pessoa_id, veiculo_id, data_inicio, data_fim,valor_total)
VALUES (1, 1, '2026-11-3', '2026-11-3', 100.00);



