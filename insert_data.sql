INSERT INTO Pais (nome, sigla) VALUES 
('Brasil', 'BR'),
('Argentina', 'AR');

INSERT INTO Estado (nome, sigla, id_pais) VALUES
('São Paulo', 'SP', 1),
('Rio de Janeiro', 'RJ', 1);

INSERT INTO Cidade (nome, id_estado) VALUES
('São Paulo', 1),
('Rio de Janeiro', 2);

INSERT INTO Endereco (logradouro, numero, complemento, bairro, cep, id_cidade) VALUES
('Rua das Flores', '123', '', 'Centro', '01001-000', 1),
('Avenida Brasil', '456', 'Apto 12', 'Copacabana', '22010-000', 2);

INSERT INTO Cliente (razao_social, cnpj, telefone, email, id_endereco) VALUES
('Empresa ABC', '12.345.678/0001-90', '11999999999', 'contato@abc.com', 1),
('Empresa XYZ', '98.765.432/0001-21', '21988888888', 'vendas@xyz.com', 2);

INSERT INTO Motorista (nome, cpf, cnh, telefone, status_disponibilidade) VALUES
('João Silva', '123.456.789-00', 'CNH12345', '11911112222', 'Disponível'),
('Maria Souza', '987.654.321-00', 'CNH54321', '21933334444', 'Indisponível');

INSERT INTO Veiculo (placa, modelo, capacidade_kg, status_disponibilidade) VALUES
('ABC-1234', 'Van', 1000, 'Disponível'),
('XYZ-5678', 'Caminhão', 5000, 'Indisponível');

INSERT INTO TipoCarga (descricao, categoria, risco) VALUES
('Eletrônicos', 'Eletrônica', 'Baixo'),
('Químicos', 'Industrial', 'Alto');

INSERT INTO Usuario (nome, login, senha_hash, senha_salt, tipo_usuario) VALUES
('Administrador', 'admin', 'hash123', 'salt123', 'Administrador'),
('Operador', 'operador', 'hash456', 'salt456', 'Operador');

INSERT INTO Rota (distancia_km, tempo_estimado, descricao, id_endereco_origem, id_endereco_destino) VALUES
(10.5, 30, 'Centro SP → Centro RJ', 1, 2);

INSERT INTO Entrega (data_solicitacao, prazo_previsto, previsao_entrega, status_entrega, id_rota, id_cliente, id_motorista, id_veiculo, id_tipo_carga, id_endereco_origem, id_endereco_destino) VALUES
(NOW(), DATE_ADD(NOW(), INTERVAL 2 DAY), NULL, 'Pendente', 1, 1, 1, 1, 1, 1, 2);

INSERT INTO Ocorrencia (data_hora, descricao, tipo_ocorrencia, id_entrega, id_usuario) VALUES
(NOW(), 'Entrega atrasada', 'Atraso', 1, 2);
