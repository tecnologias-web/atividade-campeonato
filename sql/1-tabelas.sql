CREATE TABLE IF NOT EXISTS times (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    nome        VARCHAR(50) NOT NULL UNIQUE,
    sigla       VARCHAR(10) NOT NULL UNIQUE,
    localidade  VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS membros (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    nome        VARCHAR(50) NOT NULL UNIQUE,
    apelido     VARCHAR(50) NOT NULL UNIQUE,
    sexo        CHAR(1) NOT NULL,
    posicao     VARCHAR(100) NOT NULL,
    altura      DECIMAL(2,2) NOT NULL,
    time_id     INTEGER NOT NULL,
    FOREIGN KEY (time_id) REFERENCES times (id)
);

CREATE TABLE IF NOT EXISTS partidas (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,
    time_dono_id        INTEGER NOT NULL,
    time_visitante_id   INTEGER NOT NULL,
    pontos_dono         DECIMAL (5,2) NOT NULL,
    pontos_visitante    DECIMAL (5,2) NOT NULL,
    data                TEXT NOT NULL,
    FOREIGN KEY (time_dono_id) REFERENCES times (id),
    FOREIGN KEY (time_visitante_id) REFERENCES times (id)
);
