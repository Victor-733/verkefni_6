% from bottle import *
% from beaker.middleware import SessionMiddleware
% bs = request.environ.get('beaker.session')
<h2>Karfan</h2>

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