from flask import Flask, request, render_template
import database_connection

app = Flask(__name__)
@app.route("/flutter")

def index():
    return database_connection.data
if __name__ == "__main__":
    app.run(debug=True)