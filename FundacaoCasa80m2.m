%% Dados de entrada
largura = 8; % Largura da casa em metros
comprimento = 10; % Comprimento da casa em metros
profundidade = 1.5; % Profundidade da fundação em metros
peso_casa = 150000; % Peso total da casa em Newtons
peso_solo = 18000; % Peso do solo por metro cúbico em Newtons

%% Cálculo da área da fundação
area_fundacao = largura * comprimento;

%% Cálculo do peso do solo sobre a fundação
peso_solo_fundacao = area_fundacao * profundidade * peso_solo;

%% Cálculo do coeficiente de segurança de ruptura
forca_ruptura = peso_solo_fundacao / 2; % Força de ruptura do solo
momento_flexao = forca_ruptura * profundidade / 2; % Momento de flexão máximo
momento_casa = peso_casa * largura / 2; % Momento da casa sobre a fundação
coef_seguranca = momento_flexao / momento_casa; % Coeficiente de segurança de ruptura

%% Resultados
fprintf('A área da fundação é de %0.2f m²\n', area_fundacao);
fprintf('O peso do solo sobre a fundação é de %0.2f N\n', peso_solo_fundacao);
fprintf('O coeficiente de segurança de ruptura é de %0.2f\n', coef_seguranca);
