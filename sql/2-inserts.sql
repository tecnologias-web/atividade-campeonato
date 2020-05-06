/**
 * Coloque aqui os inserts separados por ponto e vírgula (;).
 * Os exemplos foram tirados da liga de Overwatch: https://www.overwatchleague.com/en-us/teams
 */

INSERT INTO times (nome, sigla, localidade)
VALUES ('Los Angeles Valiant', 'VAL', 'Los Angeles - US');
INSERT INTO times (nome, sigla, localidade)
VALUES ('Atlanta Reign', 'ATL', 'Atlanta - US');
INSERT INTO times (nome, sigla, localidade)
VALUES ('Boston Uprising', 'BOS', 'Boston - US');
INSERT INTO times (nome, sigla, localidade)
VALUES ('Houston Outlaws', 'HOU', 'Houston - US');

INSERT INTO membros (nome, apelido, sexo, posicao, altura, time_id)
VALUES ('Kyle Frandanisa', 'KSF', 'M', 'Ataque', 1.56, 1);
INSERT INTO membros (nome, apelido, sexo, posicao, altura, time_id)
VALUES ('Caleb McGarvey', 'MCGRAVY', 'M', 'Suporte', 1.68, 1);
INSERT INTO membros (nome, apelido, sexo, posicao, altura, time_id)
VALUES ('JeongWon Moon', 'Lastro', 'M', 'Defesa', 1.8, 1);

INSERT INTO membros (nome, apelido, sexo, posicao, altura, time_id)
VALUES ('Hugo Sahlberg', 'Sharp', 'M', 'Ataque', 1.66, 2);
INSERT INTO membros (nome, apelido, sexo, posicao, altura, time_id)
VALUES ('Anthony King', 'Fire', 'M', 'Suporte', 1.78, 2);
INSERT INTO membros (nome, apelido, sexo, posicao, altura, time_id)
VALUES ('Xader Domecq', 'Hawk', 'M', 'Defesa', 1.72, 2);

INSERT INTO membros (nome, apelido, sexo, posicao, altura, time_id)
VALUES ('Kesley Birse', 'Colourhex', 'M', 'Ataque', 1.7, 3);
INSERT INTO membros (nome, apelido, sexo, posicao, altura, time_id)
VALUES ('Thomas Brussen', 'Brussen', 'M', 'Suporte', 1.68, 3);
INSERT INTO membros (nome, apelido, sexo, posicao, altura, time_id)
VALUES ('Kobe Hamand', 'Halo', 'M', 'Defesa', 1.7, 3);

INSERT INTO membros (nome, apelido, sexo, posicao, altura, time_id)
VALUES ('Dante Cruz', 'Danteh', 'M', 'Ataque', 1.65, 4);
INSERT INTO membros (nome, apelido, sexo, posicao, altura, time_id)
VALUES ('Shane Flaherty', 'Rawkus', 'M', 'Suporte', 1.58, 4);
INSERT INTO membros (nome, apelido, sexo, posicao, altura, time_id)
VALUES ('Alexander Vanhomwegen', 'Spree', 'M', 'Defesa', 1.89, 4);

INSERT INTO partidas (time_dono_id, time_visitante_id, pontos_dono, pontos_visitante, data)
VALUES (1, 2, 3, 2, DATE('2020-05-02'));
INSERT INTO partidas (time_dono_id, time_visitante_id, pontos_dono, pontos_visitante, data)
VALUES (2, 1, 1, 5, DATE('2020-05-03'));
INSERT INTO partidas (time_dono_id, time_visitante_id, pontos_dono, pontos_visitante, data)
VALUES (1, 3, 0, 2, DATE('2020-05-04'));
INSERT INTO partidas (time_dono_id, time_visitante_id, pontos_dono, pontos_visitante, data)
VALUES (3, 1, 1, 4, DATE('2020-05-05'));
INSERT INTO partidas (time_dono_id, time_visitante_id, pontos_dono, pontos_visitante, data)
VALUES (1, 4, 10, 3, DATE('2020-05-06'));
INSERT INTO partidas (time_dono_id, time_visitante_id, pontos_dono, pontos_visitante, data)
VALUES (4, 1, 2, 8, DATE('2020-05-07'));
INSERT INTO partidas (time_dono_id, time_visitante_id, pontos_dono, pontos_visitante, data)
VALUES (2, 3, 1, 0, DATE('2020-05-08'));
INSERT INTO partidas (time_dono_id, time_visitante_id, pontos_dono, pontos_visitante, data)
VALUES (3, 2, 4, 2, DATE('2020-05-09'));
INSERT INTO partidas (time_dono_id, time_visitante_id, pontos_dono, pontos_visitante, data)
VALUES (2, 4, 2, 1, DATE('2020-05-10'));
INSERT INTO partidas (time_dono_id, time_visitante_id, pontos_dono, pontos_visitante, data)
VALUES (4, 2, 1, 2, DATE('2020-05-11'));
INSERT INTO partidas (time_dono_id, time_visitante_id, pontos_dono, pontos_visitante, data)
VALUES (3, 4, 8, 5, DATE('2020-05-12'));
INSERT INTO partidas (time_dono_id, time_visitante_id, pontos_dono, pontos_visitante, data)
VALUES (4, 3, 3, 1, DATE('2020-05-13'));