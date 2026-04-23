from flask import Flask, render_template
import mysql.connector
import os

app = Flask(__name__)

# Railway MySQL connection using environment variables
db = mysql.connector.connect(
    host="roundhouse.proxy.rlwy.net",
    user="root",
    password="wLnxuZvWEwSWEnfASOYTyqNGlROolOCP",
    database="railway",
    port=34681
)
cursor = db.cursor(dictionary=True)


@app.route("/")
def home():

    cursor = db.cursor(dictionary=True)

    cursor.execute("SELECT * FROM anime")
    anime_result = cursor.fetchall()

    cursor.execute("SELECT * FROM book")
    book_result = cursor.fetchall()

    cursor.execute("SELECT * FROM music")
    music_result = cursor.fetchall()

    return render_template(
        "index.html",
        anime_list=anime_result,
        book_list=book_result,
        music_list=music_result
    )


@app.route("/music")
def music():
    return render_template("music.html")


@app.route("/reading")
def reading():
    return render_template("reading.html")


@app.route("/search")
def search():
    return render_template("search.html")


if __name__ == "__main__":
    app.run(debug=True)