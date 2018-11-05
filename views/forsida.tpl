<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Gamer Gear</title>
    <link rel="stylesheet" type="text/css" media="screen" href="/static/styles.css" />
</head>
<body>
    % from bottle import *
    % from beaker.middleware import SessionMiddleware
    % bs = request.environ.get("beaker.session")
    <header>
        <h1>Verkefni 6</h1>
    </header>
    <div class="container">
        <div>
            <p>Gamer Glasses</p>
            <a href="/chart/0">
            <img src="/static/glasses.jpg" alt="glasses"></a>
            <p>420 kr.</p>
        </div>
        <div>
            <p>Gamer Cap</p>
            <a href="/chart/1">
            <img src="/static/caps.jpg" alt="Caps"></a>
            <p>420 kr.</p>
        </div>
        <div>
            <p>Gamer Gloves</p>
            <a href="/chart/2">
            <img src="/static/gloves.jpg" alt="Gloves"></a>
            <p>420 kr.</p>
        </div>
        <div>
            <p>Gamer Hoodie</p>
            <a href="/chart/3">
            <img src="/static/hoodie.jpg" alt="Hoodie"></a>
            <p>420 kr.</p>
        </div>
        <div>
            <p>Gamer Pants</p>
            <a href="/chart/4">
            <img src="/static/pants.jpg" alt="Pants"></a>
            <p>420 kr.</p>
        </div>
        <div>
            <p>Gamer Shoes</p>
            <a href="chart/5">
            <img src="/static/shoes.jpg" alt="Shoes"></a>
            <p>420 kr.</p>
        </div>
    </div>
    <%
        cnt = 0
        for i in range(6):
            if bs.get(str(i)):
                cnt += 1
                end
            end
    %>
    <aside class="kerra">
            ( {{ cnt }} )
            <a href="/chart" title="Skoða körfu">
            <img src="/static/kerra.svg" alt="kerra"></a>
    </aside>

    <footer>
        <p>Victor Wahid Ívarsson &copy; 2018</p>
    </footer>
</body>
</html>