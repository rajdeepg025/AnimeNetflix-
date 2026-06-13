# AnimeNetflex 🎬📚🎵

AnimeNetflex is a personal web project built to organize and discover Anime, Manga, Manhwa, and Music in one place.

## Features

* 🔍 Search Anime, Manga, Manhwa, and Music
* 🎬 Anime categories (Popular, Latest, Movies)
* 📚 Manga and Manhwa sections
* 🎵 Music section with audio playback
* 🌙 Dark/Light mode support
* 📱 Mobile responsive design
* 🗄️ Data stored using MySQL database
* ⚡ Built with Flask and Jinja templates

## Technologies Used

### Frontend

* HTML5
* CSS3
* JavaScript

### Backend

* Python
* Flask

### Database

* MySQL

## Project Structure

AnimeNetflex/
│
├── static/
│ ├── css/
│ ├── js/
│ └── images/
│
├── templates/
│ ├── index.html
│ ├── search.html
│ ├── music.html
│ └── reading.html
│
├── animenetflix.sql
├── app.py
└── README.md

## Home Page

![Home Page](screenshots/home.png)

## Home Page - light mode

![Home Page](screenshots/home-light.png)

## Search Page

![Search Page](screenshots/search.png)

## Manga Section

![Manga Section](screenshots/manga.png)

## Music Section

![Music Section](screenshots/music.png)

## Mobile interface 
## Home Page

![Home Page](screenshots/home-mob.png)

## Home Page - light mode

![Home Page](screenshots/home-mob-light.png)

## Search Page

![Search Page](screenshots/search-1-mob.png)

## Manga Section

![Manga Section](screenshots/manga-mob.png)

## Music Section

![Music Section](screenshots/music-mob.png)

## Installation

1. Clone the repository

git clone https://github.com/rajdeepg025/AnimeNetflix-.git

2. Install dependencies

pip install flask mysql-connector-python

3. Import the database

Import `animenetflix.sql` into MySQL.

4. Run the application

python app.py

5. Open in browser

http://127.0.0.1:5000

## Future Improvements

* User accounts
* Favorites list
* Watchlist system
* Better search filters
* Admin dashboard

## Author

Created by Rajdeep

This project was built for learning web development using Flask, MySQL, HTML, CSS, and JavaScript.
