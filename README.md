# Análise de desempenho em licitações públicas com SQL

> ⚠️ **Dados 100% fictícios**, criados para estudo. Não representam nenhuma empresa ou órgão real.

## Contexto do problema
Uma empresa de **gestão em saúde** participa de pregões eletrônicos para prestar serviços a órgãos públicos. A diretoria quer entender **onde ganha, onde perde e por quê**, para decidir em quais pregões vale a pena entrar e o que melhorar nas propostas.

## Base de dados
O arquivo [`dados/base_pregoes.sql`](dados/base_pregoes.sql) cria e popula duas tabelas:

**`pregoes`**: um registro por pregão disputado (40 registros, jan a out/2026).

| Coluna | Tipo | Descrição |
|---|---|---|
| `id` | INTEGER | Identificador do pregão |
| `data_sessao` | TEXT | Data da sessão pública (AAAA-MM-DD) |
| `orgao` | TEXT | Órgão que abriu o pregão (liga com `orgaos.orgao`) |
| `uf` | TEXT | Estado do órgão (RJ, MG, SP, ES) |
| `objeto` | TEXT | Serviço licitado (ex.: Clínica médica, Anestesiologia, Plantão médico) |
| `valor_estimado` | REAL | Valor de referência do edital (R$) |
| `valor_proposto` | REAL | Valor da nossa proposta (R$) |
| `valor_arrematado` | REAL | Valor vencedor do pregão (R$) |
| `resultado` | TEXT | Ganho, Perdido ou Desclassificado |
| `motivo_perda` | TEXT | Preço, Documentação ou Atestado técnico (vazio quando ganho) |

**`orgaos`**: órgãos públicos acompanhados pela empresa (17 registros).

| Coluna | Tipo | Descrição |
|---|---|---|
| `orgao` | TEXT | Nome do órgão |
| `esfera` | TEXT | Municipal ou Estadual |
| `analista` | TEXT | Analista de licitações responsável (Ana, Bruno ou Carla) |

## Perguntas de negócio
1. Qual é o panorama geral: quantos pregões ganhamos, perdemos ou fomos desclassificados?
2. Quais são os principais motivos de perda e desclassificação?
3. Em quais órgãos, estados, esferas e objetos temos melhor e pior desempenho?
4. Quão longe ficamos do preço vencedor quando perdemos por preço?
5. O desempenho varia entre os analistas responsáveis?

## Ferramentas
- **SQL** (SQLite)
- [sqliteonline.com](https://sqliteonline.com) para executar as consultas no navegador

## Principais conclusões *(em andamento)*
| Indicador | Resultado |
|---|---:|
| Pregões analisados | **40** |
| Vitórias | **60%** |
| Perdidos | **27,5%** |
| Desclassificados | **12,5%** |

As consultas estão em [`consultas/analise_pregoes.sql`](consultas/analise_pregoes.sql), cada uma identificada pela pergunta que responde (P0.1, P1...).

## Como executar
1. Acesse [sqliteonline.com](https://sqliteonline.com) (motor **SQLite**).
2. Copie e execute todo o conteúdo de `dados/base_pregoes.sql` para criar as tabelas.
3. Execute as consultas de `consultas/analise_pregoes.sql`, uma de cada vez.

## Estrutura
```
analise-pregoes-sql/
├── dados/base_pregoes.sql
├── consultas/analise_pregoes.sql
└── README.md
```
