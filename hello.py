from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
    return 'Server works!'

@app.route('/hello')
def say_hello():
    return 'Hello World!'