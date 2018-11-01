from bottle import *
from sys import argv
from beaker.middleware import SessionMiddleware

@route('/')
def index():
    return template("forsida")

@route("/static/<skra>")
def static_skrar(skra):
    return static_file(skra, root="./static/")

@route("/chart")
def chart():
    bs = request.environ.get('beaker.session')
    return template("chart", val=vara)

@route("/del/<id>")
def eyda(id):
    bs = request.environ.get('beaker.session')
    bs[id] = None
    redirect("/chart")

@route("/delall")
def eyda(id):
    bs = request.environ.get('beaker.session')
    bs.delete()
    bs.save
    redirect("/chart")

run(host="0.0.0.0", port=argv[1], debug=True, reloader=True)