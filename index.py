from bottle import *
from sys import argv
from beaker.middleware import SessionMiddleware

session_opts = {
    "session.type": "file",
    "session.data_dir": "./data",
    "session.cookie_expires": 300,
    "session.auto": True
}
app = SessionMiddleware(app(), session_opts)

vara = [
    {"name": "Gamer Glasses", "price": "420"},
    {"name": "Gamer Hat", "price": "420"},
    {"name": "Gamer Gloves", "price": "420"},
    {"name": "Gamer Hoodie", "price": "420"},
    {"name": "Gamer Pants", "price": "420"},
    {"name": "Gamer Shoes", "price": "420"},
]

@route('/')
def index():
    return template("forsida")

@route("/static/<skra>")
def static_skrar(skra):
    return static_file(skra, root="./static/")

@route("/chart/<id>")
def add(id):
    bs = request.environ.get('beaker.session')
    bs[id] = 'check'
    bs.save()
    redirect("/")

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