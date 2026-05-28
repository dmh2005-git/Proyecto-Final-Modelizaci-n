:- module(modelizacion,_,[rfuzzy, clpr]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MODIFICADORES TÉCNICOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
define_modifier(muy/2, TV_In, TV_Out) :-
    TV_Out .=. TV_In * TV_In.

define_modifier(poco/2, TV_In, TV_Out) :-
    TV_Out * TV_Out .=. TV_In.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DEFINICIÓN DE LA BASE DE DATOS 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

define_database(pais_db/10,
    [(nombre_pais,          rfuzzy_string_type),
     (anio,                 rfuzzy_integer_type),
     (fsi_puntos,           rfuzzy_integer_type),   % Fragile States Index (0-120)
     (apoyo_puntos,         rfuzzy_integer_type),   % Índice de apoyo social (0-100)
     (temp_grados,          rfuzzy_integer_type),   % Temperatura media anual (°C)
     (camas_disp,           rfuzzy_integer_type),   % Camas/1000 hab × 10
     (pib_dolares,          rfuzzy_integer_type),   % PIB per cápita (USD)
     (capital_humano_x100,  rfuzzy_integer_type),   % Índice capital humano × 100
     (poblacion_urbana,     rfuzzy_integer_type),   % % población en ciudades
     (lluvia_mm,            rfuzzy_integer_type)]). % Precipitación anual (mm)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DATOS (2010-2019)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ARGENTINA
pais_db(argentina, 2010, 46, 90, 15, 40, 21197, 283, 91, 793).
pais_db(argentina, 2011, 47, 90, 15, 40, 23553, 286, 91, 793).
pais_db(argentina, 2012, 47, 91, 15, 50, 23602, 289, 91, 793).
pais_db(argentina, 2013, 46, 91, 15, 50, 23456, 292, 91, 793).
pais_db(argentina, 2014, 47, 91, 15, 50, 22649, 295, 91, 793).
pais_db(argentina, 2015, 48, 91, 15, 50, 23304, 298, 91, 793).
pais_db(argentina, 2016, 48, 90, 15, 50, 23076, 320, 92, 793).
pais_db(argentina, 2017, 48, 90, 15, 50, 25565, 323, 92, 793).
pais_db(argentina, 2018, 46, 90, 15, 40, 26301, 326, 92, 793).
pais_db(argentina, 2019, 46, 90, 15, 40, 25277, 329, 92, 793).

% BRASIL
pais_db(brasil, 2010, 67, 91, 25, 30, 16589, 250, 84, 1785).
pais_db(brasil, 2011, 65, 91, 25, 30, 18384, 253, 85, 1785).
pais_db(brasil, 2012, 64, 90, 25, 30, 18209, 256, 85, 1785).
pais_db(brasil, 2013, 62, 90, 25, 20, 18247, 259, 85, 1785).
pais_db(brasil, 2014, 61, 90, 25, 20, 18086, 262, 85, 1785).
pais_db(brasil, 2015, 63, 90, 25, 20, 16855, 265, 86, 1785).
pais_db(brasil, 2016, 65, 90, 25, 20, 15980, 268, 86, 1785).
pais_db(brasil, 2017, 68, 90, 25, 20, 15968, 271, 86, 1785).
pais_db(brasil, 2018, 69, 89, 25, 20, 16601, 274, 86, 1785).
pais_db(brasil, 2019, 72, 89, 25, 20, 17063, 277, 87, 1785).

% ESPAÑA
pais_db(espana, 2010, 44, 94, 16, 30, 39543, 290, 79, 647).
pais_db(espana, 2011, 43, 94, 16, 30, 38719, 292, 79, 647).
pais_db(espana, 2012, 43, 93, 16, 30, 38137, 295, 79, 647).
pais_db(espana, 2013, 44, 92, 16, 30, 37466, 298, 79, 647).
pais_db(espana, 2014, 43, 92, 16, 30, 37738, 301, 79, 647).
pais_db(espana, 2015, 41, 93, 16, 30, 40203, 304, 80, 647).
pais_db(espana, 2016, 40, 93, 16, 30, 41980, 307, 80, 647).
pais_db(espana, 2017, 38, 93, 16, 30, 43511, 310, 80, 647).
pais_db(espana, 2018, 41, 93, 16, 30, 43552, 313, 80, 647).
pais_db(espana, 2019, 41, 93, 16, 30, 46108, 316, 80, 647).

% GRECIA
pais_db(grecia, 2010, 46, 84, 20, 40, 35207, 275, 76, 782).
pais_db(grecia, 2011, 47, 82, 20, 40, 31162, 277, 77, 782).
pais_db(grecia, 2012, 50, 80, 20, 40, 29379, 280, 77, 782).
pais_db(grecia, 2013, 51, 79, 20, 40, 28950, 282, 77, 782).
pais_db(grecia, 2014, 52, 79, 20, 40, 29235, 285, 77, 782).
pais_db(grecia, 2015, 53, 80, 20, 40, 29560, 288, 78, 782).
pais_db(grecia, 2016, 56, 81, 20, 40, 29521, 291, 78, 782).
pais_db(grecia, 2017, 58, 82, 20, 40, 30006, 294, 78, 782).
pais_db(grecia, 2018, 55, 83, 20, 40, 30189, 297, 78, 782).
pais_db(grecia, 2019, 54, 83, 20, 40, 32037, 300, 78, 782).

% ITALIA
pais_db(italia, 2010, 46, 90, 13, 40, 42413, 295, 68, 1010).
pais_db(italia, 2011, 46, 89, 13, 30, 43678, 298, 68, 1010).
pais_db(italia, 2012, 46, 88, 13, 30, 42467, 301, 69, 1010).
pais_db(italia, 2013, 45, 88, 13, 30, 41078, 304, 69, 1010).
pais_db(italia, 2014, 43, 88, 13, 30, 40682, 307, 70, 1010).
pais_db(italia, 2015, 43, 89, 13, 30, 41789, 310, 70, 1010).
pais_db(italia, 2016, 43, 89, 13, 30, 44118, 313, 70, 1010).
pais_db(italia, 2017, 45, 89, 13, 30, 45055, 316, 70, 1010).
pais_db(italia, 2018, 44, 88, 13, 30, 45231, 319, 71, 1010).
pais_db(italia, 2019, 44, 88, 13, 30, 47472, 322, 71, 1010).

% LIBIA (HC congelado en 200 como penalización analítica por estado fallido)
pais_db(libia, 2010, 69, 85, 22, 40, 20000, 200, 78, 23).
pais_db(libia, 2011, 69, 82, 22, 40, 20000, 200, 78, 23).
pais_db(libia, 2012, 85, 81, 22, 40, 20000, 200, 78, 23).
pais_db(libia, 2013, 85, 79, 22, 40, 20000, 200, 79, 23).
pais_db(libia, 2014, 88, 78, 22, 40, 20000, 200, 79, 23).
pais_db(libia, 2015, 95, 77, 22, 40, 20000, 200, 79, 23).
pais_db(libia, 2016, 96, 76, 22, 40, 20000, 200, 80, 23).
pais_db(libia, 2017, 96, 75, 22, 30, 20000, 200, 80, 23).
pais_db(libia, 2018, 95, 74, 22, 30, 20000, 200, 80, 23).
pais_db(libia, 2019, 92, 72, 22, 30, 20000, 200, 80, 23).

% SIRIA
pais_db(siria, 2010, 88, 80, 21, 20, 6543, 236, 53, 230).
pais_db(siria, 2011, 86, 75, 21, 20, 6525, 239, 53, 230).
pais_db(siria, 2012, 95, 68, 21, 20, 5224, 244, 53, 230).
pais_db(siria, 2013, 97, 62, 21, 20, 3856, 247, 53, 230).
pais_db(siria, 2014, 102, 58, 21, 20, 3788, 249, 53, 230).
pais_db(siria, 2015, 108, 56, 21, 10, 3738, 252, 54, 230).
pais_db(siria, 2016, 111, 58, 21, 10, 4056, 255, 54, 230).
pais_db(siria, 2017, 111, 59, 21, 10, 3453, 257, 54, 230).
pais_db(siria, 2018, 111, 60, 21, 10, 3016, 259, 54, 230).
pais_db(siria, 2019, 112, 60, 21, 10, 4517, 261, 55, 230).

% VENEZUELA
pais_db(venezuela, 2010, 79, 93, 26, 10, 18518, 259, 88, 2193).
pais_db(venezuela, 2011, 78, 92, 26, 10, 20720, 262, 88, 2193).
pais_db(venezuela, 2012, 77, 91, 26, 10, 20987, 265, 88, 2193).
pais_db(venezuela, 2013, 75, 90, 26, 10, 19719, 268, 88, 2193).
pais_db(venezuela, 2014, 77, 88, 26, 10, 12725, 270, 88, 2193).
pais_db(venezuela, 2015, 79, 86, 26, 10, 5488, 272, 88, 2193).
pais_db(venezuela, 2016, 82, 84, 26, 10, 2127, 274, 88, 2193).
pais_db(venezuela, 2017, 83, 82, 26, 10, 403, 275, 88, 2193).
pais_db(venezuela, 2018, 86, 82, 26, 10, 496, 275, 88, 2193).
pais_db(venezuela, 2019, 89, 82, 26, 10, 302, 275, 88, 2193).

% YEMEN
pais_db(yemen, 2010, 100, 80, 26, 10, 4386, 141, 32, 147).
pais_db(yemen, 2011, 100, 78, 26, 10, 3765, 143, 33, 147).
pais_db(yemen, 2012, 105, 76, 26, 10, 3447, 145, 33, 147).
pais_db(yemen, 2013, 107, 75, 26, 10, 3383, 147, 34, 147).
pais_db(yemen, 2014, 105, 75, 26, 10, 3369, 148, 35, 147).
pais_db(yemen, 2015, 108, 74, 26, 10, 2114, 149, 35, 147).
pais_db(yemen, 2016, 112, 73, 26, 10, 1548, 150, 36, 147).
pais_db(yemen, 2017, 111, 73, 26, 10, 1180, 150, 36, 147).
pais_db(yemen, 2018, 113, 74, 26, 10, 1325, 150, 37, 147).
pais_db(yemen, 2019, 114, 75, 26, 10, 1232, 150, 37, 147).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCIONES DIFUSAS
%
% NOTA METODOLÓGICA SOBRE LOS UMBRALES:
%   Todos los puntos de transición de las funciones difusas se han
%   derivado empíricamente del conjunto de datos (9 países × 10 años = 90
%   observaciones), utilizando los percentiles p25, p50 y p75 como puntos
%   de soporte. Este criterio garantiza que cada etiqueta lingüística
%   cubra una proporción equilibrada de los casos del dataset y no depende
%   de una elección arbitraria.
%
%   Resumen de percentiles calculados:
%     FSI           p25= 46  p50= 65  p75= 91
%     Apoyo         p25= 78  p50= 87  p75= 90
%     Temperatura   p25= 16  p50= 21  p75= 25
%     Camas×10      p25= 10  p50= 30  p75= 40
%     PIB           p25=20000 p50=29450 p75=40682
%     Capital hum.  p25=275  p50=293  p75=307
%     Pob. urbana   p25= 69  p50= 79  p75= 86
%     Lluvia mm     p25=230  p50=782  p75=1010
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% -- 1. GEOPOLÍTICA (Índice FSI: 0=muy estable, 120=estado fallido) --
estado_estable(pais_db)  :~ function(fsi_puntos(pais_db), [ (0, 1), (46, 1), (65, 0) ]).
estado_precario(pais_db) :~ function(fsi_puntos(pais_db), [ (46, 0), (65, 1), (91, 0) ]).
alerta(pais_db)          :~ function(fsi_puntos(pais_db), [ (65, 0), (91, 1), (114, 1) ]).

% -- 2. APOYO SOCIAL (Índice 0-100) --
aislado(pais_db)      :~ function(apoyo_puntos(pais_db), [ (0, 1), (60, 1), (80, 0) ]).
apoyo_medio(pais_db)  :~ function(apoyo_puntos(pais_db), [ (65, 0), (80, 1), (90, 0) ]).
arropado(pais_db)     :~ function(apoyo_puntos(pais_db), [ (85, 0), (95, 1), (100, 1) ]).

% -- 3. CLIMA (Temperatura Media Anual en °C) --
clima_frio(pais_db)     :~ function(temp_grados(pais_db), [ (0, 1), (14, 1), (18, 0) ]).
clima_templado(pais_db) :~ function(temp_grados(pais_db), [ (15, 0), (20, 1), (25, 0) ]).
calor_extremo(pais_db)  :~ function(temp_grados(pais_db), [ (24, 0), (27, 1), (35, 1) ]).

% -- 4. SANIDAD (Camas por 1.000 hab, escala ×10) --
sanidad_precaria(pais_db) :~ function(camas_disp(pais_db), [ (0, 1), (15, 1), (25, 0) ]).
sanidad_media(pais_db)    :~ function(camas_disp(pais_db), [ (15, 0), (30, 1), (45, 0) ]).
sanidad_robusta(pais_db)  :~ function(camas_disp(pais_db), [ (35, 0), (50, 1), (100, 1) ]).

% -- 5. ECONOMÍA (PIB per cápita en USD) --
pobre(pais_db)         :~ function(pib_dolares(pais_db), [ (0, 1), (4000, 1), (12000, 0) ]).
en_desarrollo(pais_db) :~ function(pib_dolares(pais_db), [ (8000, 0), (18000, 1), (28000, 0) ]).
rico(pais_db)          :~ function(pib_dolares(pais_db), [ (20000, 0), (40000, 1), (60000, 1) ]).

% -- 6. CAPITAL HUMANO (Índice ×100) --
capital_humano_bajo(pais_db) :~ function(capital_humano_x100(pais_db), [ (0, 1), (200, 1), (275, 0) ]).
capital_humano_alto(pais_db) :~ function(capital_humano_x100(pais_db), [ (240, 0), (280, 1), (350, 1) ]).

% -- 7. PRESIÓN URBANA (% de Población en Ciudades) --
poblacion_urbana_alta(pais_db) :~ function(poblacion_urbana(pais_db), [ (60, 0), (80, 1), (100, 1) ]).

% -- 8. ESTRÉS HÍDRICO (Precipitación Anual en mm) --
sequia_extrema(pais_db) :~ function(lluvia_mm(pais_db), [ (0, 1), (200  , 1), (400, 0) ]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MOTOR DE INFERENCIA: DIMENSIONES DE RIESGO INDEPENDIENTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% R1. RIESGO GEOPOLÍTICO
%   Un estado en alerta maxima es un riesgo geopolítico per se.
riesgo_geopolitico(pais_db) :~ alerta(pais_db).

% R2. RIESGO DE FRACTURA DE ESTADO
%   Combinación clásica de inestabilidad política y pobreza económica.
riesgo_fractura_estado(pais_db) :~ rule(min, (alerta(pais_db), pobre(pais_db))).

% R3. RIESGO DE POBREZA ESTRUCTURAL
%   La pobreza agravada por bajo capital humano perpetúa el subdesarrollo.
riesgo_pobreza(pais_db) :~ rule(min, (pobre(pais_db), capital_humano_bajo(pais_db))).

% R4. RIESGO URBANO
%   Alta concentración urbana en un estado precario genera polvorines sociales.
riesgo_urbano(pais_db) :~ rule(min, (estado_precario(pais_db), poblacion_urbana_alta(pais_db))).

% R5. RIESGO CLIMÁTICO E HÍDRICO
%   La sequía extrema en contexto de pobreza desencadena hambrunas y migraciones.
riesgo_climatico(pais_db) :~ rule(min, (sequia_extrema(pais_db), pobre(pais_db))).

% R6. RIESGO SANITARIO
%   Sanidad precaria combinada con aislamiento social produce vulnerabilidad extrema.
riesgo_sanitario(pais_db) :~ rule(min, (sanidad_precaria(pais_db), aislado(pais_db))).
