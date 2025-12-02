-- 1. Consultar todas as entregas de um cliente
SELECT e.id_entrega, c.razao_social, e.status_entrega, e.data_solicitacao
FROM Entrega e
JOIN Cliente c ON e.id_cliente = c.id_cliente
WHERE c.razao_social = 'Empresa ABC';

-- 2. Listar motoristas disponíveis
SELECT nome, telefone
FROM Motorista
WHERE status_disponibilidade = 'Disponível'
ORDER BY nome;

-- 3. Listar entregas com rota e veículo
SELECT en.logradouro AS endereco_origem, ed.logradouro AS endereco_destino, v.placa, v.modelo
FROM Entrega e
JOIN Rota r ON e.id_rota = r.id_rota
JOIN Endereco en ON r.id_endereco_origem = en.id_endereco
JOIN Endereco ed ON r.id_endereco_destino = ed.id_endereco
JOIN Veiculo v ON e.id_veiculo = v.id_veiculo;

-- 4. Consultar ocorrências recentes
SELECT o.data_hora, o.descricao, o.tipo_ocorrencia, u.nome AS usuario
FROM Ocorrencia o
JOIN Usuario u ON o.id_usuario = u.id_usuario
ORDER BY o.data_hora DESC
LIMIT 5;

-- 5. Consultar clientes por cidade
SELECT c.razao_social, ci.nome AS cidade
FROM Cliente c
JOIN Endereco e ON c.id_endereco = e.id_endereco
JOIN Cidade ci ON e.id_cidade = ci.id_cidade
ORDER BY ci.nome;
