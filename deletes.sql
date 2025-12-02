-- Excluir uma ocorrência específica
DELETE FROM Ocorrencia
WHERE id_ocorrencia = 1;

-- Excluir uma entrega cancelada
DELETE FROM Entrega
WHERE status_entrega = 'Cancelada';

-- Excluir um cliente específico
DELETE FROM Cliente
WHERE razao_social = 'Empresa XYZ';
