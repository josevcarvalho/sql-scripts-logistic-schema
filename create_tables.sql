CREATE DATABASE IF NOT EXISTS transporte;
USE transporte;

CREATE TABLE Pais (
    id_pais INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sigla VARCHAR(3) NOT NULL
);

CREATE TABLE Estado (
    id_estado INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    id_pais INT NOT NULL,
    FOREIGN KEY (id_pais) REFERENCES Pais(id_pais)
);

CREATE TABLE Cidade (
    id_cidade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_estado INT NOT NULL,
    FOREIGN KEY (id_estado) REFERENCES Estado(id_estado)
);

CREATE TABLE Endereco (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    logradouro VARCHAR(150),
    numero VARCHAR(10),
    complemento VARCHAR(50),
    bairro VARCHAR(50),
    cep VARCHAR(10),
    id_cidade INT NOT NULL,
    FOREIGN KEY (id_cidade) REFERENCES Cidade(id_cidade)
);

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    razao_social VARCHAR(150) NOT NULL,
    cnpj VARCHAR(20) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    id_endereco INT NOT NULL,
    FOREIGN KEY (id_endereco) REFERENCES Endereco(id_endereco)
);

CREATE TABLE Motorista (
    id_motorista INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    cnh VARCHAR(20) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    status_disponibilidade VARCHAR(20)
);

CREATE TABLE Veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) UNIQUE NOT NULL,
    modelo VARCHAR(50),
    capacidade_kg INT,
    status_disponibilidade VARCHAR(20)
);

CREATE TABLE TipoCarga (
    id_tipo_carga INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(150),
    categoria VARCHAR(50),
    risco VARCHAR(50)
);

CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150),
    login VARCHAR(50) UNIQUE,
    senha_hash VARCHAR(255),
    senha_salt VARCHAR(255),
    tipo_usuario VARCHAR(50)
);

CREATE TABLE Rota (
    id_rota INT AUTO_INCREMENT PRIMARY KEY,
    distancia_km DECIMAL(8,2),
    tempo_estimado INT,
    descricao VARCHAR(255),
    id_endereco_origem INT NOT NULL,
    id_endereco_destino INT NOT NULL,
    FOREIGN KEY (id_endereco_origem) REFERENCES Endereco(id_endereco),
    FOREIGN KEY (id_endereco_destino) REFERENCES Endereco(id_endereco)
);

CREATE TABLE Entrega (
    id_entrega INT AUTO_INCREMENT PRIMARY KEY,
    data_solicitacao DATETIME,
    prazo_previsto DATETIME,
    previsao_entrega DATETIME,
    status_entrega VARCHAR(50),
    id_rota INT NOT NULL,
    id_cliente INT NOT NULL,
    id_motorista INT NOT NULL,
    id_veiculo INT NOT NULL,
    id_tipo_carga INT NOT NULL,
    id_endereco_origem INT NOT NULL,
    id_endereco_destino INT NOT NULL,
    FOREIGN KEY (id_rota) REFERENCES Rota(id_rota),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_motorista) REFERENCES Motorista(id_motorista),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo),
    FOREIGN KEY (id_tipo_carga) REFERENCES TipoCarga(id_tipo_carga),
    FOREIGN KEY (id_endereco_origem) REFERENCES Endereco(id_endereco),
    FOREIGN KEY (id_endereco_destino) REFERENCES Endereco(id_endereco)
);

CREATE TABLE Ocorrencia (
    id_ocorrencia INT AUTO_INCREMENT PRIMARY KEY,
    data_hora DATETIME,
    descricao TEXT,
    tipo_ocorrencia VARCHAR(50),
    id_entrega INT NOT NULL,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_entrega) REFERENCES Entrega(id_entrega),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);
