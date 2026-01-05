
# Minimal Flask app placeholder (replace with your Phase 1 app.py)
from flask import Flask, jsonify
app = Flask(__name__)
@app.route('/')
def index():
    return '<h2>Parts Web App — Website Mode</h2><p>แอพรันอยู่บน Gunicorn + Nginx Reverse Proxy</p>'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
