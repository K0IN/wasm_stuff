#!/usr/bin/python3
# This file runs a Webserver on port 8080 
# Run with: python3 server4.py

from http.server import HTTPServer, SimpleHTTPRequestHandler

SimpleHTTPRequestHandler.extensions_map['.js'] = 'application/javascript'
SimpleHTTPRequestHandler.extensions_map['.wasm'] = 'application/wasm'

with HTTPServer(('', 8080), SimpleHTTPRequestHandler) as server:
    while 1:
        server.handle_request()