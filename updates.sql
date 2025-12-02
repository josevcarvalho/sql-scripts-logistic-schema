-- Atualizar status do motorista
UPDATE Motorista
SET status_disponibilidade = 'Indisponível'
WHERE nome = 'João Silva';

-- Atualizar previsão de entrega
UPDATE Entrega
SET previsao_entrega = DATE_ADD(NOW(), INTERVAL 3 DAY)
WHERE id_entrega = 1;

-- Atualizar telefone do cliente
UPDATE Cliente
SET telefone = '11977778888'
WHERE razao_social = 'Empresa ABC';
