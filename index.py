from bottle import *
from sys import argv
from beaker.middleware import SessionMiddleware

@route('/')
def index():
    return template("forsida")

@route("/static/<skra>")
def static_skrar(skra):
    return static_file(skra, root="./static/")

run(host="0.0.0.0", port=argv[1], debug=True, reloader=True)