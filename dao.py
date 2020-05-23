
from flask import g


def alterar_membro(nome, apelido, sexo, posicao, altura, time_id, membro_id):
    return g.execute_db(
        '''
        UPDATE membros
           SET nome = ?,
               apelido = ?,
               sexo = ?,
               posicao = ?,
               altura = ?,
               time_id = ?
         WHERE id = ?
        ''',
        (nome, apelido, sexo, posicao, altura, time_id, membro_id)
    )


def alterar_time(nome, sigla, localidade, time_id):
    return g.execute_db(
        '''
        UPDATE times
           SET nome = ?,
               sigla = ?,
               localidade = ?
         WHERE id = ?
        ''',
        (nome, sigla, localidade, time_id)
    )


def alterar_partida(
    time_dono_id, time_visitante_id,
    pontos_dono, pontos_visitante, partida_id
):
    return g.execute_db(
        '''
        UPDATE partidas
           SET time_dono_id = ?,
               time_visitante_id = ?,
               pontos_dono = ?,
               pontos_visitante = ?
         WHERE id = ?
        ''',
        (
            time_dono_id, time_visitante_id, pontos_dono,
            pontos_visitante, partida_id
        )
    )


def incluir_membro(nome, apelido, sexo, posicao, altura, time_id):
    return g.execute_db(
        '''
        INSERT INTO membros (nome, apelido, sexo, posicao, altura, time_id)
        VALUES (?, ?, ?, ?, ?, ?)
        ''',
        (nome, apelido, sexo, posicao, altura, time_id)
    )


def incluir_partida(
    time_dono_id, time_visitante_id,
    pontos_dono, pontos_visitante
):
    return g.execute_db(
        '''
        INSERT INTO partidas (
            time_dono_id,
            time_visitante_id,
            pontos_dono,
            pontos_visitante
        ) VALUES (?, ?, ?, ?)
        ''',
        (time_dono_id, time_visitante_id, pontos_dono, pontos_visitante)
    )


def incluir_time(nome, sigla, localidade):
    return g.execute_db(
        '''
        INSERT INTO times (nome, sigla, localidade)
        VALUES (?, ?, ?)
        ''',
        (nome, sigla, localidade)
    )


def listar_membros(time_id):
    return g.query_db(
        'SELECT * FROM membros WHERE id = ?',
        [time_id]
    )


def listar_partidas(time_id):
    return g.query_db(
        '''
            SELECT *
              FROM partidas
             WHERE time_dono_id = ?
                OR time_visitante_id = ?
        ''',
        [time_id, time_id]
    )


def listar_resultados():
    partidas = g.query_db('SELECT * FROM partidas')
    times = []
    for p in partidas:
        visitante = next(
            filter(
                lambda x: x['id'] == p['time_visitante_id'],
                times
            ),
            None
        )
        if not visitante:
            visitante = obter_time(p['time_visitante_id'])
            visitante['vitorias'] = 0
            visitante['empates'] = 0
            visitante['derrotas'] = 0
            times.append(visitante)
        dono = next(
            filter(
                lambda x: x['id'] == p['time_dono_id'],
                times
            ),
            None
        )
        if not dono:
            dono = obter_time(p['time_dono_id'])
            dono['vitorias'] = 0
            dono['empates'] = 0
            dono['derrotas'] = 0
            times.append(dono)

        if p['pontos_dono'] > p['pontos_visitante']:
            dono['vitorias'] += 1
            visitante['derrotas'] += 1
        elif p['pontos_dono'] < p['pontos_visitante']:
            dono['derrotas'] += 1
            visitante['vitorias'] += 1
        else:
            dono['empates'] += 1
            visitante['empates'] += 1
    times.sort(key=lambda x: x['vitorias'], reverse=True)
    return times


def listar_times():
    return g.query_db(
        'SELECT * FROM times'
    )


def obter_partida(partida_id):
    return g.query_db(
        'SELECT * FROM partidas WHERE id = ?',
        [partida_id],
        one=True
    )


def obter_time(time_id):
    return g.query_db(
        'SELECT * FROM times WHERE id = ?',
        [time_id],
        one=True
    )
