# Phase 4 Final Project : Muziki App

## Focus 🎯
Building a MUSIC APP API backend that uses Active Record to access and persist data in a database, which will be used by a separate React frontend that interacts with the database via the API.

## Learning Goals 👨‍🚀

- Use Active Record to interact with a database.
- Have a minimum of Four models with a one-to-many relationship.
- Create API routes in Ruby on Rails that handles at least Four different CRUD actions for at least one of your Active Record models.
- Build a separate React frontend application that interacts with the API to perform CRUD actions.
- Use good OO design patterns. You should have separate classes for each of your models, and create instance and class methods as necessary.




# Front-End Repo
View [LIVE](https://github.com/Mr-Randell/muziki-front-end):

## Backend Setup ✴️
- [x] cd into muziki-back-end folder and run `bundle install` from your terminal which will install all the gems 
- [x] seed the database with data using cmd `rails db:seed` or alternatively you can use `rails db:reset` to delete everything in the database and seed it with data to be fetched by an API
- [x] Finally run `rails server` to keep your backend running on `http://127.0.0.1:3000` :boom:

## Endpoints API 🛠️

✅ Your base URL API for storing songs in SQLite: `http://localhost:3000/songs`

✅ Your base URL API for storing artists in SQLite: `http://localhost:3000/artists`

✅ Your base URL API for storing users in SQLite: `http://localhost:3000/users`

✅ Your base URL API for storing playslist in SQLite: `http://localhost:3000/playlist`

✅ Your base URL API for login in SQLite: `http://localhost:3000/login`

✅ Your base URL API for registration SQLite: `http://localhost:3000/register`


## Core Deliverables 📈

As a user 👨‍💻, I can:

- `C`reate playlist, songs
- `R`ead songs, playslist, artists
- `U`pdate playlist, songs, password,
- `D`elete playlist
- Search for playlist, songs, artist using search input 👍

## Authors 🖊️

This project was contributed to by:

- [Kevin Lomenen](https://github.com/kevin-lomenen) Backend Developer
- [Randell Hera](https://github.com/Mr-Randell) Frontend Developer, Scrum Master
- [Denis Muturi](https://github.com/dennismuturi) Backend Developer\
- [Alex Karumbi](https://github.com/alexkarumbi) Frontend Developer


## License 📄

The project is licensed under MIT