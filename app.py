import os
from flask import Flask, g
from db import get_db, query_db


BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DATABASE = os.path.join(BASE_DIR, 'database.db')

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
