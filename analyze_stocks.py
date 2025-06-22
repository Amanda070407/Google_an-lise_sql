import sqlite3
import math
import re

class StDevAggregate:
    def __init__(self):
        self.values = []

    def step(self, value):
        self.values.append(value)

    def finalize(self):
        if len(self.values) < 2:
            return None
        # Calculate sample standard deviation
        mean = sum(self.values) / len(self.values)
        variance = sum([(x - mean) ** 2 for x in self.values]) / (len(self.values) - 1)
        return math.sqrt(variance)

def execute_sql_queries(db_path, sql_file_path):
    """
    Executa as consultas SQL de um arquivo em um banco de dados SQLite.
    """
    conn = None
    try:
        conn = sqlite3.connect(db_path)
        conn.create_aggregate("STDEV", 1, StDevAggregate) # Register the custom STDEV function
        cursor = conn.cursor()

        cursor.execute("PRAGMA foreign_keys = ON;")

        with open(sql_file_path, 'r') as f:
            sql_script = f.read()

        # Execute o script SQL completo para criar a tabela e inserir os dados
        try:
            cursor.executescript(sql_script)
            conn.commit()
        except sqlite3.Error as e:
            print(f"Erro ao executar o script SQL completo (criação/inserção): {e}")
            return None

        results = {}
        # Agora, execute as consultas SELECT individualmente para capturar os resultados
        # Vamos extrair as consultas SELECT do script SQL
        
        # Lista de consultas SELECT a serem executadas e seus títulos para o relatório
        # Estas são as consultas que queremos ver os resultados no relatório
        select_queries_to_run = [
            ("SELECT * FROM google_stocks LIMIT 10;", "Visualizar os primeiros 10 registros da tabela"),
            ("SELECT AVG(Close) FROM google_stocks;", "Calcular a média do preço de fechamento de todas as ações"),
            ("SELECT Date, Volume FROM google_stocks ORDER BY Volume DESC LIMIT 1;", "Encontrar o dia com o maior volume de negociação"),
            ("SELECT MAX(Close) AS MaxClosePrice, MIN(Close) AS MinClosePrice FROM google_stocks;", "Identificar o preço máximo e mínimo de fechamento no período"),
            ("SELECT AVG(Open) AS AvgOpen, AVG(Close) AS AvgClose, AVG(High) AS AvgHigh, AVG(Low) AS AvgLow, AVG(Volume) AS AvgVolume FROM google_stocks;", "Calcular a média diária dos preços de abertura, fechamento, máximos, mínimos e volume"),
            ("SELECT COUNT(DISTINCT Date) AS TotalTradingDays FROM google_stocks;", "Encontrar o número total de dias de negociação registrados"),
            ("SELECT Close FROM google_stocks WHERE Date = '2004-09-24';", "Encontrar o preço de fechamento para uma data específica (ex: '2004-09-24')"),
            ("SELECT * FROM google_stocks WHERE Close > Open;", "Encontrar todos os registros onde o preço de fechamento foi maior que o preço de abertura"),
            ("SELECT ((MAX(CASE WHEN Date = (SELECT MIN(Date) FROM google_stocks) THEN Close ELSE NULL END) - MIN(CASE WHEN Date = (SELECT MIN(Date) FROM google_stocks) THEN Close ELSE NULL END)) / MIN(CASE WHEN Date = (SELECT MIN(Date) FROM google_stocks) THEN Close ELSE NULL END)) * 100 AS PercentageChange FROM google_stocks;", "Calcular a variação percentual do preço de fechamento entre o primeiro e o último dia registrado"),
            ("SELECT Date, (High - Low) AS Amplitude FROM google_stocks ORDER BY Amplitude DESC LIMIT 5;", "Encontrar os 5 dias com a maior amplitude (diferença entre preço máximo e mínimo)"),
            ("SELECT Date, Close, AVG(Close) OVER (ORDER BY Date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS MovingAverage7Day FROM google_stocks ORDER BY Date;", "Calcular a média móvel de 7 dias para o preço de fechamento"),
            ("SELECT Date, ABS(Open - Close) AS DailyChange FROM google_stocks ORDER BY DailyChange DESC LIMIT 1;", "Encontrar o dia com a maior diferença absoluta entre o preço de abertura e fechamento"),
            ("SELECT COUNT(Date) AS DaysWithHighVolume FROM google_stocks WHERE Volume > 100000000;", "Contar o número de dias em que o volume de negociação foi superior a 100.000.000"),
            ("SELECT STRFTIME('%Y-%m', Date) AS Month, AVG(Close) AS AverageClosePrice FROM google_stocks GROUP BY Month ORDER BY Month;", "Encontrar o preço médio de fechamento por mês"),
            ("SELECT CASE STRFTIME('%w', Date) WHEN '0' THEN 'Sunday' WHEN '1' THEN 'Monday' WHEN '2' THEN 'Tuesday' WHEN '3' THEN 'Wednesday' WHEN '4' THEN 'Thursday' WHEN '5' THEN 'Friday' WHEN '6' THEN 'Saturday' END AS DayOfWeek, AVG(Volume) AS AverageVolume FROM google_stocks GROUP BY DayOfWeek ORDER BY AverageVolume DESC;", "Identificar o dia da semana com o maior volume médio de negociação"),
            ("SELECT Date, Close, (Close - LAG(Close, 1, Close) OVER (ORDER BY Date)) * 100.0 / LAG(Close, 1, Close) OVER (ORDER BY Date) AS DailyReturnPercentage FROM google_stocks ORDER BY Date;", "Calcular o retorno diário percentual"),
            ("WITH DailyReturns AS (SELECT Date, (Close - LAG(Close, 1, Close) OVER (ORDER BY Date)) * 100.0 / LAG(Close, 1, Close) OVER (ORDER BY Date) AS DailyReturn FROM google_stocks) SELECT STDEV(DailyReturn) AS Volatility FROM DailyReturns;", "Calcular a volatilidade (desvio padrão do retorno diário)"),
            ("SELECT STRFTIME('%Y', Date) AS Year, MAX(Close) AS MaxClosePrice, MIN(Close) AS MinClosePrice FROM google_stocks GROUP BY Year ORDER BY Year;", "Encontrar o preço de fechamento mais alto e mais baixo por ano"),
            ("SELECT SUM(CASE WHEN Close > Open THEN 1 ELSE 0 END) AS DaysUp, SUM(CASE WHEN Close < Open THEN 1 ELSE 0 END) AS DaysDown FROM google_stocks;", "Contar o número de dias de alta (Close > Open) e baixa (Close < Open)"),
            ("WITH EMA_Calc AS (SELECT Date, Close, AVG(Close) OVER (ORDER BY Date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS SMA_7_Day, ROW_NUMBER() OVER (ORDER BY Date) as rn FROM google_stocks) SELECT e1.Date, e1.Close, CASE WHEN e1.rn = 7 THEN e1.SMA_7_Day ELSE (e1.Close - LAG(e1.Close, 1) OVER (ORDER BY e1.Date)) * (2.0 / (7 + 1)) + LAG(e1.Close, 1) OVER (ORDER BY e1.Date) END AS EMA_7_Day FROM EMA_Calc e1 ORDER BY e1.Date;", "Calcular a média móvel exponencial (EMA) - Exemplo simplificado para 7 dias")
        ]

        query_counter = 0
        for query_text, query_title in select_queries_to_run:
            query_counter += 1
            try:
                cursor.execute(query_text)
                column_names = [description[0] for description in cursor.description]
                rows = cursor.fetchall()
                results[f'Consulta_{query_counter}: {query_title}'] = {'columns': column_names, 'rows': rows}
            except sqlite3.Error as e:
                print(f"Erro ao executar a consulta SELECT: {query_text}\nErro: {e}")
                results[f'Consulta_{query_counter}: {query_title}_Error'] = str(e)

        return results

    except sqlite3.Error as e:
        print(f"Erro ao conectar ao banco de dados: {e}")
        return None
    finally:
        if conn:
            conn.close()

def generate_report(results, output_file='analysis_report.md'):
    """
    Gera um relatório Markdown com os resultados das consultas.
    """
    with open(output_file, 'w') as f:
        f.write("# Relatório de Análise de Ações do Google\n\n")
        f.write("Este relatório apresenta os resultados das consultas SQL executadas nos dados históricos das ações do Google.\n\n")

        for query_name, result_data in results.items():
            f.write(f"## {query_name}\n\n")
            if isinstance(result_data, str) and 'Error' in query_name:
                f.write(f"**Erro:** {result_data}\n\n")
            elif result_data and 'rows' in result_data and result_data['rows']:
                columns = result_data['columns']
                rows = result_data['rows']
                
                # Escrever cabeçalho da tabela
                f.write("|" + "|".join(columns) + "|\n")
                f.write("|" + "-" * (len("|".join(columns)) + len(columns) - 1) + "|\n")
                
                # Escrever linhas da tabela
                for row in rows:
                    f.write("|" + "|".join(map(str, row)) + "|\n")
                f.write("\n")
            else:
                f.write("Nenhum resultado retornado ou consulta não SELECT.\n\n")

if __name__ == "__main__":
    db_name = 'google_stocks.db'
    sql_script_file = 'google_stock_analysis.sql'

    query_results = execute_sql_queries(db_name, sql_script_file)

    if query_results:
        generate_report(query_results)
        print(f"Relatório gerado com sucesso: {generate_report.__defaults__[0]}")
    else:
        print("Não foi possível gerar o relatório devido a erros na execução das consultas.")


