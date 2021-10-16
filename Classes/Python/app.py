from flask import Flask,render_template, url_for
import games.RockPaperScissor, games.GuessNumber, random
app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/GuessNumber')
def Jeux1():
    file = open(r'E:\Travaux\DevOps\Classes\Python\games\GuessNumber.py' ,'r').read()
    return exec(file)

@app.route('/RockPaperScissor')
def Jeux2():
    file1 = open(r'E:\Travaux\DevOps\Classes\Python\games\RockPaperScissor.py', 'r').read()
    return exec(file1)

if __name__ == "__main__":
    app.run(debug=True,port=5001)