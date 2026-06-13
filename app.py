from flask import Flask, render_template, request
import mysql.connector
import os

app = Flask(__name__)

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

    query = request.args.get("q", "")

    anime_results = []
    book_results = []
    music_results = []

    if query:

        cursor.execute(
            "SELECT * FROM anime WHERE title LIKE %s",
            (f"%{query}%",)
        )
        anime_results = cursor.fetchall()

        cursor.execute(
            "SELECT * FROM book WHERE title LIKE %s",
            (f"%{query}%",)
        )
        book_results = cursor.fetchall()

        cursor.execute(
            "SELECT * FROM music WHERE title LIKE %s",
            (f"%{query}%",)
        )
        music_results = cursor.fetchall()

    cursor.execute("SELECT * FROM book WHERE category_id = 8")
    Manhwa_result = cursor.fetchall()

    cursor.execute("SELECT * FROM book WHERE category_id = 7")
    Manga_result = cursor.fetchall()

    cursor.execute("SELECT * FROM music")
    music_result = cursor.fetchall()

    cursor.execute("SELECT * FROM anime WHERE category_id = 2")
    category_result_2 = cursor.fetchall()

    cursor.execute("SELECT * FROM anime WHERE category_id = 4")
    category_result_4 = cursor.fetchall()

    return render_template(
        "search.html",

        anime_results=anime_results,
        book_results=book_results,
        music_results=music_results,

        category_2_list=category_result_2,
        category_4_list=category_result_4,

        music_list=music_result,
        Manhwa_list=Manhwa_result,
        Manga_list=Manga_result,

        query=query
        
    )



if __name__ == "__main__":
    app.run(debug=True)
