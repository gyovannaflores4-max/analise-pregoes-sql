-- =============================================================
-- Projeto 1 | Análise de desempenho em licitações públicas (SQL)
-- Base: dados/base_pregoes.sql (dados fictícios)
-- =============================================================

-- P0.1 Total de pregões na base
SELECT COUNT(*) AS total_pregoes FROM pregoes;

-- P0.2 Resultados possíveis
SELECT DISTINCT resultado FROM pregoes;

-- P0.3 Motivos de perda registrados
SELECT DISTINCT motivo_perda FROM pregoes;

-- P1 Panorama: quantidade de pregões por resultado
SELECT resultado, COUNT(*) AS total FROM pregoes GROUP BY resultado;
