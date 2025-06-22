# Análise de Dados Históricos de Ações do Google com SQL

Este é um mini projeto desenvolvido para demonstrar habilidades em SQL e análise de dados. Ele utiliza um conjunto de dados históricos das ações do Google (GOOGL) para explorar tendências e extrair insights através de consultas SQL.

## Objetivo do Projeto

O principal objetivo deste projeto é:

* Praticar a criação de tabelas e inserção de dados em um banco de dados SQLite.
* Desenvolver e executar consultas SQL para extrair informações relevantes.
* Analisar o comportamento de preços e volumes de negociação ao longo do tempo.
* Servir como um item de portfólio para demonstrar proficiência em SQL.

## Conjunto de Dados

Os dados utilizados neste projeto são históricos das ações do Google (GOOGL), contendo as seguintes colunas:

* **Date**: Data da negociação (formato `AAAA-MM-DD`).
* **Close**: Preço de fechamento da ação.
* **High**: Preço mais alto atingido pela ação no dia.
* **Low**: Preço mais baixo atingido pela ação no dia.
* **Open**: Preço de abertura da ação.
* **Volume**: Volume de ações negociadas no dia.

## Estrutura do Projeto

O projeto é composto por:

* `google_stock_analysis.sql`: Arquivo SQL contendo a criação da tabela, inserção de dados e consultas de análise.
* `README.md`: Este arquivo, descrevendo o projeto.
* `reports/Relatorio_Analise_Acoes_Google.md`: Relatório detalhado com os resultados das análises (você pode linkar para ele aqui: [Link para o Relatório Completo](reports/Relatorio_Analise_Acoes_Google.md))

## Como Executar

Para executar este projeto, você precisará de um cliente SQLite (como o `sqlite3` no terminal ou [DB Browser for SQLite](https://sqlitebrowser.org/)).

1.  Clone este repositório:
    ```bash
    git clone [https://github.com/Amanda070407/google-stock-data-analysis-sql.git](https://github.com/Amanda070407/google-stock-data-analysis-sql.git)
    ```
2.  Navegue até o diretório do projeto:
    ```bash
    cd google-stock-data-analysis-sql
    ```
3.  Abra o arquivo `google_stock_analysis.sql` no seu cliente SQLite e execute os comandos.

## Consultas de Análise (Exemplos)

O arquivo `google_stock_analysis.sql` inclui exemplos de consultas para:

* Visualizar os primeiros registros: `SELECT * FROM google_stocks LIMIT 10;`
* Calcular a média do preço de fechamento: `SELECT AVG(Close) FROM google_stocks;`
* Encontrar o dia com o maior volume de negociação: `SELECT Date, Volume FROM google_stocks ORDER BY Volume DESC LIMIT 1;`
* Identificar o preço máximo e mínimo de fechamento: `SELECT MAX(Close), MIN(Close) FROM google_stocks;`

## Novas Funcionalidades e Melhorias

Além das consultas básicas, o arquivo `google_stock_analysis.sql` foi aprimorado com as seguintes funcionalidades e melhorias:

* **Comentários Explicativos:** O código SQL agora inclui comentários detalhados para cada seção e consulta, facilitando a compreensão e manutenção.
* **Organização Lógica:** As consultas foram organizadas em seções lógicas para melhor clareza e navegação.
* **Cálculo de Retorno Diário Percentual:** Uma nova consulta (`16. Calcular o retorno diário percentual`) foi adicionada para analisar a variação percentual do preço de fechamento diariamente.
* **Cálculo de Volatilidade:** Uma consulta (`17. Calcular a volatilidade`) foi incluída para determinar o desvio padrão do retorno diário, servindo como um indicador de risco.
* **Preço Máximo e Mínimo Anual:** Adicionada consulta (`18. Encontrar o preço de fechamento mais alto e mais baixo por ano`) para identificar os preços extremos por ano.
* **Contagem de Dias de Alta e Baixa:** Uma nova consulta (`19. Contar o número de dias de alta (Close > Open) e baixa (Close < Open)`) para quantificar os dias de valorização e desvalorização.
* **Média Móvel Exponencial (EMA):** Implementada uma consulta (`20. Calcular a média móvel exponencial (EMA)`) para calcular a EMA de 7 dias, um indicador técnico popular para suavizar os dados de preço.

## Automação com Python

Um script Python (`analyze_stocks.py`) foi criado para automatizar a execução das consultas SQL e gerar um relatório em formato Markdown (`analysis_report.md`).

### Como Usar o Script Python

1.  Certifique-se de ter Python instalado em seu ambiente.
2.  Execute o script a partir do terminal:
    ```bash
    python3 analyze_stocks.py
    ```
3.  Um arquivo `analysis_report.md` será gerado no mesmo diretório, contendo os resultados de todas as consultas SQL.

---

## Melhorias Futuras (Ideias)

* Adicionar mais consultas de análise (ex: média móvel avançada, indicadores técnicos adicionais).
* Integrar com uma linguagem de programação (Python, R) para visualização de dados mais robusta e gráficos.
* Automatizar a extração de dados de uma API de ações em tempo real ou histórica.
* Criar um dashboard interativo (ex: com Streamlit, Dash ou Power BI) para explorar os insights.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.
