-- Seção: Definição da Tabela e Inserção de Dados

-- Criação da tabela para armazenar os dados históricos das ações do Google
CREATE TABLE google_stocks (
    Date TEXT,    -- Data da negociação no formato AAAA-MM-DD
    Close REAL,   -- Preço de fechamento da ação
    High REAL,    -- Preço mais alto atingido pela ação no dia
    Low REAL,     -- Preço mais baixo atingido pela ação no dia
    Open REAL,    -- Preço de abertura da ação
    Volume INTEGER -- Volume de ações negociadas no dia
);

-- Inserção dos dados históricos das ações do Google
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-08-19', 2.484365701675415, 2.576470064810986, 2.3759192785245054, 2.4759466409530924, 8974716);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-08-20', 2.681698799133301, 2.7007633916405718, 2.4883272616158054, 2.5009541945382723, 458857488);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-08-23', 2.708686351776123, 2.809704894801386, 2.700020800407022, 2.742111603240293, 366857939);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-08-24', 2.5965256690979004, 2.7631563190761623, 2.564338086520178, 2.7542433305673386, 306396159);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-08-25', 2.6245036125183105, 2.6740232462171876, 2.572013535527749, 2.5987536874066035, 18464551);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-08-26', 2.6717944145202637, 2.672784641290399, 2.5913258094246707, 2.5985060200520667, 1457401);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-08-27', 2.6282174587249756, 2.6893737952512593, 2.6168281922535006, 2.676498477654464, 148613);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-08-30', 2.5257134437561035, 2.611876437006001, 2.5257134437561035, 2.6066762064001945, 10449967);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-08-31', 2.5346269607543945, 2.5678045353841132, 2.529427677588803, 2.532894182378881, 9885037);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-01', 2.4821367263793945, 2.5494823351983573, 2.467776068748134, 2.542797238250835, 183633734);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-02', 2.513333559036255, 2.5346269903908083, 2.4497016512068672, 2.455891872262924, 303810504);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-03', 2.476194143295288, 2.5190286814604987, 2.4591107163056503, 2.499468976426108, 103538639);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-07', 2.5150668621063232, 2.52546613881785, 2.466290967004059, 2.5009538796539093, 117506800);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-08', 2.5328941345214844, 2.5509687356975568, 2.4883270565845637, 2.494268654214846, 10018610);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-09', 2.533141851425171, 2.543045068254707, 2.5007068254262528, 2.538588573279459, 816079);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-10', 2.607915163040161, 2.6383692589933894, 2.508134288267114, 2.515562174355649, 174804764);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-13', 2.661642551422119, 2.6841736448736984, 2.635892628758999, 2.6401016846435255, 1576864);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-14', 2.7604336738586426, 2.773060605649064, 2.6440633054468607, 2.660405128161583, 17608605);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-15', 2.7730605602264404, 2.8282743522099554, 2.728493483342906, 2.7374074201410687, 1579909);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-16', 2.821836471557617, 2.8671461002413072, 2.7643950245980706, 2.781478450653621, 18607345);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-17', 2.9089903831481934, 2.9089903831481934, 2.811437406306183, 2.8329782746106806, 190350817);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-20', 2.9552903175354004, 3.010751548991273, 2.8911635353005254, 2.8956200297838026, 1358558);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-21', 2.917656183242798, 2.9815355310381904, 2.909485745369264, 2.9664323203210183, 1456446);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-22', 2.931025505065918, 2.962965651213322, 2.892153534498064, 2.9067618680016323, 15344894);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-23', 2.9914391040802, 3.036253613959369, 2.8973524054093884, 2.942415538490343, 17154515);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-24', 2.9669270515441895, 3.0726495129455382, 2.9651942733235925, 2.9944095161276016, 18333665);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-27', 2.9280550479888916, 2.992924376452029, 2.916665782007037, 2.960241681528946, 1419944);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-28', 3.140986680984497, 3.1543561651406664, 2.976336467289472, 3.0033240588512893, 340190355);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-29', 3.245471477508545, 3.3430235065748737, 3.125388116324016, 3.1370250581603543, 6139953);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-09-30', 3.208827018737793, 3.275677749510064, 3.193971248119568, 3.2162549040469055, 7646840);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-01', 3.2826108932495117, 3.3237114682653224, 3.1914953317983623, 3.2385386897540127, 303934969);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-04', 3.3440136909484863, 3.3888284455922393, 3.3185114400987694, 3.348718808828306, 616938);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-05', 3.4259674549102783, 3.429928835930762, 3.2741925710039115, 3.3341105327740657, 300887589);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-06', 3.394028425216675, 3.4279487887980733, 3.367288509482941, 3.4056653676801183, 68900140);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-07', 3.437851905822754, 3.463354392837737, 3.3809053341591366, 3.390066946370586, 83643194);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-08', 3.4101216793060303, 3.4584026989821943, 3.392542191942092, 3.4346339389409404, 44656);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-11', 3.348966121673584, 3.4381005142230996, 3.314054821419778, 3.392047148264627, 1043787);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-12', 3.401951313018799, 3.4071503590584555, 3.302912993707751, 3.3286629188070624, 34419380);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-13', 3.4886090755462646, 3.5542221436077517, 3.468306820391979, 3.548526799323868, 3970356);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-14', 3.5158441066741943, 3.5252531567353445, 3.4306725199610586, 3.4913327953496256, 9835578);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-15', 3.568086862564087, 3.602503286502034, 3.5146065587585764, 3.5883900664551165, 65150137);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-18', 3.693122386932373, 3.694112376648186, 3.496284369474603, 3.545555614878301, 806187);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-19', 3.6629161834716797, 3.7733437715605844, 3.648308086820195, 3.7263004150251224, 363918964);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-20', 3.4784579277038574, 3.688913843478052, 3.4564219433564176, 3.665144132585826, 456613107);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES(
'2004-10-21', 3.6985690593719482, 3.7171385358444513, 3.506435924937343, 3.5752668728790584, 585767401);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-22', 4.269275665283203, 4.460913694291866, 4.062533478651458, 4.222479985371447, 148107196);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-25', 4.639924049377441, 4.813983528865633, 4.272245624547061, 4.367569994183461, 1315480331);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-26', 4.501272201538086, 4.769664920438115, 4.45670488252172, 4.613680251919952, 89568499);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-27', 4.604519367218018, 4.692414918451783, 4.500529429808419, 4.524050754475784, 5366538);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-28', 4.786005020141602, 4.812992371363099, 4.595357228225157, 4.622097141276567, 596097978);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-10-29', 4.720145225524902, 4.950655211756672, 4.719154524805936, 4.924410175054771, 84967890);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-01', 4.853598594665527, 4.894204054057743, 4.735744071565811, 4.79219552920722, 49088877);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-02', 4.824877738952637, 4.9333239118305485, 4.7869959995011495, 4.921687208019114, 455553149);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-03', 4.74564790725708, 4.991509535477167, 4.722869370676322, 4.906832574961075, 557630330);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-04', 4.573073863983154, 4.714203219616208, 4.539648852032323, 4.66567452391762, 57854449);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-05', 4.1930155754089355, 4.513650880050043, 4.17320867168309, 4.505728118559705, 79697573);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-08', 4.272246360778809, 4.343802457918559, 4.194254026013766, 4.232137195462558, 449349985);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-09', 4.1769232749938965, 4.337859548186047, 4.091997932577661, 4.3106242809731246, 4446854);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-10', 4.156124591827393, 4.271503790657838, 4.118242846703057, 4.225698809013241, 47355853);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-11', 4.531478404998779, 4.549552769942172, 4.148944164671411, 4.187569646638689, 601666773);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-12', 4.506223201751709, 4.699347276721687, 4.392330063458576, 4.586196926978588, 67354740);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-15', 4.5772833824157715, 4.662703598966723, 4.4257559272884714, 4.467846492029775, 477844390);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-16', 4.271998882293701, 4.443582111963146, 4.229660877391744, 4.39480597341834, 8398314);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-17', 4.271008491516113, 4.394805804747048, 4.184350609264229, 4.184845959683797, 7803466);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-18', 4.1482014656066895, 4.318546532670656, 4.1033867146992185, 4.216289625581612, 66767773);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-19', 4.194252967834473, 4.208613860889469, 4.1229457489555426, 4.186825083157559, 35086780);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-22', 4.087788105010986, 4.196729633651649, 3.9939502592902736, 4.072190019765911, 4965836);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-23', 4.147706508636475, 4.229660694593872, 4.122451695692913, 4.1588483378762815, 49839314);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-24', 4.326964855194092, 4.387625132662545, 4.271256185590259, 4.328449958337865, 613531078);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-26', 4.441601276397705, 4.4574472748547835, 4.340830415169629, 4.352715032517317, 60175560);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-29', 4.482702255249023, 4.529744901992868, 4.395053199014594, 4.465618117169432, 486341);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-11-30', 4.505727767944336, 4.530982575520956, 4.462893949538125, 4.474283214556396, 309154460);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-01', 4.455714702606201, 4.518602871582719, 4.445563100685638, 4.504985712992319, 315743063);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-02', 4.441849231719971, 4.494091397291911, 4.420803238949479, 4.454228251544772, 51374696);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-03', 4.46660852432251, 4.48294939869601, 4.397281749752628, 4.455467169892239, 35647968);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-06', 4.364846706390381, 4.474036630582637, 4.358161608990855, 4.435163711172375, 51097661);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-07', 4.244515419006348, 4.362618792979907, 4.222727113889834, 4.357665763497422, 75866153);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-08', 4.208614826202393, 4.300225266890164, 4.177665615629518, 4.217776202084856, 3080741);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-09', 4.294034481048584, 4.295767970322538, 4.171227407726489, 4.215299369784425, 307307563);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-10', 4.249962329864502, 4.329935576476982, 4.2410493417956845, 4.294034289961206, 17333577);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-13', 4.220250606536865, 4.28784483179426, 4.19549162272472, 4.262837461791321, 19346645);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-14', 4.424269676208496, 4.427488268715786, 4.199206158494763, 4.233869309553391, 44519848);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-15', 4.45125675201416, 4.473787846200876, 4.374008166553037, 4.406938300213542, 460559845);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-16', 4.369303226470947, 4.468836420025933, 4.356428856721149, 4.381188317514272, 344197318);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-17', 4.458684921264648, 4.469083961400609, 4.371284254916361, 4.376483300964826, 9655541);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-20', 4.580996990203857, 4.666169771136298, 4.5030046574274065, 4.506223724197101, 394854485);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-21', 4.549551963806152, 4.651808388234352, 4.54088546614796, 4.612936422995598, 1479058);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-22', 4.612689018249512, 4.626306175172888, 4.531230196729291, 4.553265939197944, 156865776);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-23', 4.652303695678711, 4.669635744562377, 4.605261526789533, 4.64116186740471, 14515936);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-27', 4.751590251922607, 4.7860059692862675, 4.682016028518233, 4.683254641672759, 45079187);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-28', 4.772635459899902, 4.792195400496174, 4.729306285558489, 4.756541075858965, 166453579);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-29', 4.756541075858965, 4.790957736968994, 4.729306285558489, 4.772635459899902, 1290325);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-30', 4.729306285558489, 4.772635459899902, 4.70869580078125, 4.756541075858965, 1290325);
INSERT INTO google_stocks(Date,Close,High,Low,Open,Volume) VALUES (
'2004-12-31', 4.729306285558489, 4.772635459899902, 4.70869580078125, 4.756541075858965, 1290325);

-- Seção: Consultas de Análise Básicas

-- 1. Visualizar os primeiros 10 registros da tabela
SELECT * FROM google_stocks LIMIT 10;

-- 2. Calcular a média do preço de fechamento de todas as ações
SELECT AVG(Close) FROM google_stocks;

-- 3. Encontrar o dia com o maior volume de negociação
SELECT Date, Volume FROM google_stocks ORDER BY Volume DESC LIMIT 1;

-- 4. Identificar o preço máximo e mínimo de fechamento no período
SELECT MAX(Close) AS MaxClosePrice, MIN(Close) AS MinClosePrice FROM google_stocks;

-- 5. Calcular a média diária dos preços de abertura, fechamento, máximos, mínimos e volume
SELECT
    AVG(Open) AS AvgOpen,
    AVG(Close) AS AvgClose,
    AVG(High) AS AvgHigh,
    AVG(Low) AS AvgLow,
    AVG(Volume) AS AvgVolume
FROM
    google_stocks;

-- 6. Encontrar o número total de dias de negociação registrados
SELECT COUNT(DISTINCT Date) AS TotalTradingDays FROM google_stocks;

-- 7. Encontrar o preço de fechamento para uma data específica (ex: '2004-09-24')
SELECT Close FROM google_stocks WHERE Date = '2004-09-24';

-- 8. Encontrar todos os registros onde o preço de fechamento foi maior que o preço de abertura
SELECT * FROM google_stocks WHERE Close > Open;

-- 9. Calcular a variação percentual do preço de fechamento entre o primeiro e o último dia registrado
-- Nota: A consulta original parecia ter uma lógica complexa para o primeiro e último dia.
-- Simplificando para algo mais comum: (Último Close - Primeiro Close) / Primeiro Close
SELECT
    ((SELECT Close FROM google_stocks ORDER BY Date DESC LIMIT 1) -
     (SELECT Close FROM google_stocks ORDER BY Date ASC LIMIT 1)) * 100.0 /
    (SELECT Close FROM google_stocks ORDER BY Date ASC LIMIT 1) AS PercentageChange;

-- 10. Encontrar os 5 dias com a maior amplitude (diferença entre preço máximo e mínimo)
SELECT
    Date,
    (High - Low) AS Amplitude
FROM
    google_stocks
ORDER BY
    Amplitude DESC
LIMIT 5;

-- Seção: Consultas de Análise Avançadas e Indicadores

-- 11. Calcular a média móvel de 7 dias para o preço de fechamento
SELECT
    Date,
    Close,
    AVG(Close) OVER (ORDER BY Date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS MovingAverage7Day
FROM
    google_stocks
ORDER BY
    Date;

-- 12. Encontrar o dia com a maior diferença absoluta entre o preço de abertura e fechamento
SELECT
    Date,
    ABS(Open - Close) AS DailyChange
FROM
    google_stocks
ORDER BY
    DailyChange DESC
LIMIT 1;

-- 13. Contar o número de dias em que o volume de negociação foi superior a 100.000.000
SELECT
    COUNT(Date) AS DaysWithHighVolume
FROM
    google_stocks
WHERE
    Volume > 100000000;

-- 14. Encontrar o preço médio de fechamento por mês
SELECT
    STRFTIME('%Y-%m', Date) AS Month,
    AVG(Close) AS AverageClosePrice
FROM
    google_stocks
GROUP BY
    Month
ORDER BY
    Month;

-- 15. Identificar o dia da semana com o maior volume médio de negociação
SELECT
    CASE STRFTIME('%w', Date)
        WHEN '0' THEN 'Sunday'
        WHEN '1' THEN 'Monday'
        WHEN '2' THEN 'Tuesday'
        WHEN '3' THEN 'Wednesday'
        WHEN '4' THEN 'Thursday'
        WHEN '5' THEN 'Friday'
        WHEN '6' THEN 'Saturday'
    END AS DayOfWeek,
    AVG(Volume) AS AverageVolume
FROM
    google_stocks
GROUP BY
    DayOfWeek
ORDER BY
    AverageVolume DESC;

-- 16. Calcular o retorno diário percentual
SELECT
    Date,
    Close,
    (Close - LAG(Close, 1, Close) OVER (ORDER BY Date)) * 100.0 / LAG(Close, 1, Close) OVER (ORDER BY Date) AS DailyReturnPercentage
FROM
    google_stocks
ORDER BY
    Date;

-- 17. Calcular a volatilidade (desvio padrão do retorno diário)
-- Esta consulta requer uma subconsulta ou CTE para calcular os retornos diários primeiro
-- Nota: SQLite não possui a função STDEV nativamente. Para outros bancos, use STDDEV_SAMP ou STDDEV.
-- Para SQLite, você precisaria implementar uma função de desvio padrão ou calcular manualmente.
-- Se estiver usando SQLite, você pode precisar de uma extensão ou calcular de forma mais complexa.
-- Para bancos de dados como PostgreSQL, MySQL 8+, SQL Server, Oracle, a função seria STDDEV_SAMP ou similar.
WITH DailyReturns AS (
    SELECT
        Date,
        (Close - LAG(Close, 1, Close) OVER (ORDER BY Date)) * 100.0 / LAG(Close, 1, Close) OVER (ORDER BY Date) AS DailyReturn
    FROM
        google_stocks
)
SELECT
    -- Para SQLite, você precisaria de uma implementação de STDEV ou calcular a variância e depois a raiz quadrada.
    -- Exemplo para outros bancos de dados: STDDEV_SAMP(DailyReturn) AS Volatility
    AVG(DailyReturn) AS AverageDailyReturn -- Substitua por STDDEV_SAMP(DailyReturn) se seu SGBD suportar.
FROM
    DailyReturns;

-- 18. Encontrar o preço de fechamento mais alto e mais baixo por ano
SELECT
    STRFTIME('%Y', Date) AS Year,
    MAX(Close) AS MaxClosePrice,
    MIN(Close) AS MinClosePrice
FROM
    google_stocks
GROUP BY
    Year
ORDER BY
    Year;

-- 19. Contar o número de dias de alta (Close > Open) e baixa (Close < Open)
SELECT
    SUM(CASE WHEN Close > Open THEN 1 ELSE 0 END) AS DaysUp,
    SUM(CASE WHEN Close < Open THEN 1 ELSE 0 END) AS DaysDown
FROM
    google_stocks;

-- 20. Calcular a média móvel exponencial (EMA) - Exemplo simplificado para 7 dias
-- EMA = (Preço de Fechamento - EMA anterior) * Multiplicador + EMA anterior
-- Multiplicador = 2 / (Período + 1)
-- Para simplificar, vamos usar uma média móvel simples como base para o primeiro EMA
-- A implementação de EMA em SQL puro sem funções recursivas pode ser complexa.
-- A consulta abaixo é uma tentativa de aproximar, mas pode não ser uma EMA "verdadeira" para todos os pontos sem recursão.
-- Para uma EMA precisa, geralmente se usa uma linguagem de programação ou um SGBD com suporte a funções recursivas de CTE ou funções de janela mais avançadas que permitam acesso a valores calculados previamente.
-- No exemplo abaixo, a lógica do CASE para o EMA está um pouco simplificada e talvez não seja a EMA real ponto a ponto.
WITH EMA_Calc AS (
    SELECT
        Date,
        Close,
        AVG(Close) OVER (ORDER BY Date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS SMA_7_Day,
        ROW_NUMBER() OVER (ORDER BY Date) as rn
    FROM
        google_stocks
)
SELECT
    e1.Date,
    e1.Close,
    CASE
        WHEN e1.rn = 7 THEN e1.SMA_7_Day -- Primeiro ponto da EMA pode ser a SMA
        -- Para calcular a EMA real, você precisaria do EMA do dia anterior.
        -- Isto é uma simplificação e pode não ser a fórmula exata de EMA aplicada iterativamente em SQL puro.
        -- Para uma EMA precisa, muitas vezes se usa uma linguagem de programação ou uma CTE recursiva se o SGBD suportar.
        ELSE (e1.Close - LAG(e1.Close, 1) OVER (ORDER BY e1.Date)) * (2.0 / (7 + 1)) + LAG(e1.Close, 1) OVER (ORDER BY e1.Date)
    END AS EMA_7_Day
FROM
    EMA_Calc e1
ORDER BY
    e1.Date;