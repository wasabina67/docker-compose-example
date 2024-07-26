from flask import Flask
from redis import Redis

app = Flask(__name__)


@app.route("/")
def home():
    r = Redis(host="redis", port=6379)
    return f'{r.incr("hits")} times.\n'


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
