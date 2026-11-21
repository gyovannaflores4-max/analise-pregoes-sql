-- Projeto 1 · Análise de desempenho em pregões
-- Base FICTÍCIA criada para fins de estudo (não representa dados reais de nenhuma empresa)

DROP TABLE IF EXISTS pregoes;
DROP TABLE IF EXISTS orgaos;

CREATE TABLE orgaos (
  orgao TEXT,
  esfera TEXT,
  analista TEXT
);

INSERT INTO orgaos VALUES
('Pref. Maricá', 'Municipal', 'Bruno'),
('Pref. Itaguaí', 'Municipal', 'Bruno'),
('Pref. Niterói', 'Municipal', 'Bruno'),
('Pref. Nova Iguaçu', 'Municipal', 'Carla'),
('Pref. Duque de Caxias', 'Municipal', 'Carla'),
('SES RJ', 'Estadual', 'Ana'),
('Pref. Volta Redonda', 'Municipal', 'Carla'),
('Pref. Papagaios', 'Municipal', 'Ana'),
('Pref. Betim', 'Municipal', 'Ana'),
('Pref. Contagem', 'Municipal', 'Ana'),
('SES MG', 'Estadual', 'Carla'),
('Pref. Juiz de Fora', 'Municipal', 'Ana'),
('Pref. Campinas', 'Municipal', 'Bruno'),
('Pref. Guarulhos', 'Municipal', 'Bruno'),
('Pref. Sorocaba', 'Municipal', 'Carla'),
('Pref. Vila Velha', 'Municipal', 'Carla'),
('Pref. Serra', 'Municipal', 'Bruno');

CREATE TABLE pregoes (
  id INTEGER,
  data_sessao TEXT,
  orgao TEXT,
  uf TEXT,
  objeto TEXT,
  valor_estimado REAL,
  valor_proposto REAL,
  valor_arrematado REAL,
  resultado TEXT,
  motivo_perda TEXT
);

INSERT INTO pregoes VALUES
(1, '2026-01-05', 'SES MG', 'MG', 'Clínica médica', 704000, 647000, 647000, 'Ganho', NULL),
(2, '2026-01-13', 'Pref. Juiz de Fora', 'MG', 'Anestesiologia', 459000, 417000, 417000, 'Ganho', NULL),
(3, '2026-01-22', 'Pref. Niterói', 'RJ', 'Clínica médica', 392000, 362000, 362000, 'Ganho', NULL),
(4, '2026-01-26', 'Pref. Papagaios', 'MG', 'Ginecologia e obstetrícia', 896000, 810000, 810000, 'Ganho', NULL),
(5, '2026-02-04', 'Pref. Papagaios', 'MG', 'Plantão médico', 1070000, 937000, 937000, 'Ganho', NULL),
(6, '2026-02-11', 'Pref. Nova Iguaçu', 'RJ', 'Anestesiologia', 715000, 660000, 660000, 'Ganho', NULL),
(7, '2026-02-17', 'Pref. Volta Redonda', 'RJ', 'Pediatria', 349000, 324000, 300000, 'Perdido', 'Preço'),
(8, '2026-02-27', 'Pref. Guarulhos', 'SP', 'Clínica médica', 670000, 589000, 589000, 'Ganho', NULL),
(9, '2026-03-06', 'Pref. Papagaios', 'MG', 'Plantão médico', 1088000, 1040000, 1040000, 'Ganho', NULL),
(10, '2026-03-11', 'Pref. Sorocaba', 'SP', 'Pediatria', 324000, 285000, 260000, 'Perdido', 'Preço'),
(11, '2026-03-19', 'Pref. Vila Velha', 'ES', 'Ortopedia', 270000, 249000, 239000, 'Perdido', 'Preço'),
(12, '2026-03-29', 'SES MG', 'MG', 'Pediatria', 608000, 553000, 553000, 'Ganho', NULL),
(13, '2026-04-02', 'Pref. Niterói', 'RJ', 'Pediatria', 735000, 689000, 689000, 'Ganho', NULL),
(14, '2026-04-11', 'Pref. Sorocaba', 'SP', 'Pediatria', 645000, 587000, 587000, 'Ganho', NULL),
(15, '2026-04-20', 'SES RJ', 'RJ', 'Anestesiologia', 519000, 490000, 490000, 'Ganho', NULL),
(16, '2026-04-27', 'Pref. Duque de Caxias', 'RJ', 'Ginecologia e obstetrícia', 553000, 529000, 529000, 'Ganho', NULL),
(17, '2026-05-04', 'Pref. Niterói', 'RJ', 'Clínica médica', 759000, 726000, 692000, 'Perdido', 'Preço'),
(18, '2026-05-11', 'Pref. Betim', 'MG', 'Ginecologia e obstetrícia', 725000, 654000, 654000, 'Ganho', NULL),
(19, '2026-05-17', 'Pref. Papagaios', 'MG', 'Clínica médica', 384000, 358000, 358000, 'Ganho', NULL),
(20, '2026-05-24', 'Pref. Maricá', 'RJ', 'Ortopedia', 675000, 581000, 581000, 'Ganho', NULL),
(21, '2026-06-02', 'Pref. Guarulhos', 'SP', 'Anestesiologia', 778000, 728000, 701000, 'Desclassificado', 'Documentação'),
(22, '2026-06-10', 'Pref. Sorocaba', 'SP', 'Gestão de UPA', 8575000, 7746000, 7152000, 'Perdido', 'Preço'),
(23, '2026-06-14', 'Pref. Campinas', 'SP', 'Plantão médico', 695000, 631000, 598000, 'Desclassificado', 'Documentação'),
(24, '2026-06-22', 'Pref. Nova Iguaçu', 'RJ', 'Plantão médico', 1080000, 1042000, 975000, 'Perdido', 'Preço'),
(25, '2026-07-01', 'Pref. Niterói', 'RJ', 'Clínica médica', 452000, 419000, 406000, 'Desclassificado', 'Documentação'),
(26, '2026-07-09', 'Pref. Vila Velha', 'ES', 'Ortopedia', 495000, 434000, 434000, 'Ganho', NULL),
(27, '2026-07-16', 'SES MG', 'MG', 'Ginecologia e obstetrícia', 571000, 501000, 501000, 'Ganho', NULL),
(28, '2026-07-23', 'Pref. Maricá', 'RJ', 'Clínica médica', 840000, 773000, 773000, 'Ganho', NULL),
(29, '2026-07-30', 'Pref. Maricá', 'RJ', 'Plantão médico', 1212000, 1163000, 1061000, 'Perdido', 'Preço'),
(30, '2026-08-06', 'Pref. Papagaios', 'MG', 'Anestesiologia', 954000, 885000, 885000, 'Ganho', NULL),
(31, '2026-08-13', 'Pref. Volta Redonda', 'RJ', 'Clínica médica', 1057000, 966000, 966000, 'Ganho', NULL),
(32, '2026-08-21', 'Pref. Maricá', 'RJ', 'Plantão médico', 1309000, 1154000, 1078000, 'Perdido', 'Preço'),
(33, '2026-08-28', 'Pref. Juiz de Fora', 'MG', 'Ortopedia', 663000, 597000, 578000, 'Desclassificado', 'Atestado técnico'),
(34, '2026-09-03', 'Pref. Vila Velha', 'ES', 'Clínica médica', 645000, 625000, 625000, 'Ganho', NULL),
(35, '2026-09-12', 'Pref. Maricá', 'RJ', 'Ortopedia', 584000, 508000, 535000, 'Desclassificado', 'Documentação'),
(36, '2026-09-20', 'Pref. Volta Redonda', 'RJ', 'Ortopedia', 341000, 306000, 291000, 'Perdido', 'Preço'),
(37, '2026-09-24', 'Pref. Campinas', 'SP', 'Ortopedia', 455000, 400000, 357000, 'Perdido', 'Preço'),
(38, '2026-10-03', 'Pref. Duque de Caxias', 'RJ', 'Anestesiologia', 876000, 811000, 748000, 'Perdido', 'Preço'),
(39, '2026-10-10', 'Pref. Juiz de Fora', 'MG', 'Clínica médica', 861000, 816000, 816000, 'Ganho', NULL),
(40, '2026-10-17', 'Pref. Nova Iguaçu', 'RJ', 'Anestesiologia', 1167000, 1116000, 1116000, 'Ganho', NULL);
