import socket
from http.server import HTTPServer, SimpleHTTPRequestHandler

SimpleHTTPRequestHandler.extensions_map['.js'] = 'application/javascript'
SimpleHTTPRequestHandler.extensions_map['.wasm'] = 'application/wasm'


with HTTPServer(('', 80), SimpleHTTPRequestHandler) as server:
    while 1:
        server.handle_request()