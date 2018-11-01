<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Karfa</title>
    <link rel="stylesheet" type="text/css" media="screen" href="/static/styles2.css" />
</head>
<body>
% from bottle import *
% from beaker.middleware import SessionMiddleware
% bs = request.environ.get('beaker.session')
% empty = True
<header>
    <h1>Karfan</h1>
    <a href="/" class="til-baka">Til Baka</a>
</header>
<div class="container">
    % for i in range(6):
        %    if bs.get(str(i)):
            %   empty = False
        % end
    % end
    % if empty:
        <h3>Karfan er <i>tóm</i>, farðu að versla!</h3>
    % else:
        <table>
            <tr>
                <th>Vara:</th>
                <th>Verð:</th>
                <th>Fjarlægja Vöru:</th>
            </tr>
                % sum = 0
                % for i in range(6):
                    % if bs.get(str(i)):
                    % sum = sum + int(val[int(i)]['price'])
                <tr>
                    <td>{{val[int(i)]['name']}}</td>
                    <td>{{val[int(i)]['price']}}</td>
                    <td><a href="/del/{{i}}">Eyða</a></td>
                </tr>
            % end
        % end
                <tr>
                    <td>Heildarverð:</td>
                    <td><b>{{sum}} kr.</b></td>
                    <td><a href="/delall">Tæma</a></td>
                </tr>
        </table>
    % end
</div>
<footer>
    <p>Victor Wahid Ívarsson &copy; 2018</p>
</footer>
</body>
</html>