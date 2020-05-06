import sqlite3
import os
from flask import Flask, g


BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DATABASE = os.path.join(BASE_DIR, 'database.db')


def get_db():
    db = getattr(g, '_database', None)
    if db is None:
        db = g._database = sqlite3.connect(DATABASE)
    db.row_factory = sqlite3.Row
    return db


def query_db(query, args=(), one=False):
    cur = get_db().execute(query, args)
    rv = cur.fetchall()
    cur.close()
    return (rv[0] if rv else None) if one else rv


app = Flask(__name__)


@app.before_request
def before_request():
    g.db = get_db()
    g.query_db = query_db


@app.teardown_request
def teardown_request(exception):
    db = getattr(g, '_database', None)
    if db is not None:
        db.close()


if __name__ == "__main__":
    app.run(
        debug=True
    )
