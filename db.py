import os
import sqlite3
from sqlite3 import Error

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DATABASE = os.path.join(BASE_DIR, 'database.db')
SQL_DIR = os.path.join(BASE_DIR, 'sql')


if __name__ == "__main__":
    conn = sqlite3.connect(DATABASE)
    print('Construindo Banco de Dados')
    arquivos = os.listdir(SQL_DIR)
    arquivos.sort()
    try:
        for arq in arquivos:
            with open(os.path.join(SQL_DIR, arq), 'r') as arquivo:
                print('Aplicanto scritp '+arq)
                sql = arquivo.read()
                c = conn.cursor()
                c.executescript(sql)
    except Error as e:
        print(e)
