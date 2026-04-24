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
    cursor = db.cursor(dictionary=True)

    cursor.execute("SELECT * FROM music")
    music_result = cursor.fetchall()

    return render_template(
        "music.html",
        music_list=music_result
    )


@app.route("/reading")
def reading():
    cursor = db.cursor(dictionary=True)

    cursor.execute("SELECT * FROM book where category_id=8")
    Manhwa_result = cursor.fetchall()

    cursor.execute("SELECT * FROM book where category_id=7")
    Manga_result = cursor.fetchall()

    return render_template(
        "reading.html",
        Manhwa_list = Manhwa_result,
        Manga_list = Manga_result
    )


@app.route("/search")
def search():
    cursor = db.cursor(dictionary=True)

    cursor.execute("SELECT * FROM anime where category_id=2")
    category_result_2 = cursor.fetchall()

    cursor.execute("SELECT * FROM book")
    book_result = cursor.fetchall()

    cursor.execute("SELECT * FROM music")
    music_result = cursor.fetchall()

    cursor.execute("SELECT * FROM anime where category_id=1")
    category_result_1 = cursor.fetchall()

    cursor.execute("SELECT * FROM anime where category_id=4")
    category_result_4 = cursor.fetchall()

    return render_template(
        "search.html",
        book_list=book_result,
        music_list=music_result,
        category_1_list = category_result_1,
        category_4_list = category_result_4,
        category_2_list = category_result_2
    )


if __name__ == "__main__":
    app.run(debug=True)