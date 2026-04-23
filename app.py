from flask import Flask, render_template
import mysql.connector
from flask import request

app = Flask(__name__)

# MySQL Connection
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="12345",
    database="animeNetflix"
)

cursor = db.cursor(dictionary=True)


@app.route("/")
def home():

    # Fetch Anime
    cursor.execute("SELECT * FROM anime")
    anime_result = cursor.fetchall()

    # Fetch Books (Manga/Manhwa)
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


@app.route("/search", methods=["GET"])
def search():

    query = request.args.get("q")

    results = []

    if query:
        cursor.execute(
            "SELECT * FROM anime WHERE title LIKE %s",
            ("%" + query + "%",)
        )
        results = cursor.fetchall()

    return render_template(
        "search.html",
        results=results
    )


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)