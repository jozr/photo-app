#PhotoApp
PhotoApp lets users interact with photos and friends.

##Setup
In your terminal, clone this repository:

```console
$ clone https://github.com/jozwright/photo_app.git
```

Make sure you have [postgres](http://www.postgresql.org/download/) installed and have started the server:

```console
$ postgres
```

Install all the dependencies:

```console
$ bundle install
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:schema:load
```

Finally, start the rails server:

```console
$ rails s
```
Now, it will be available at `http://localhost:3000`.

The live app is also on [Heroku](http://photobook-app.herokuapp.com/).

##Authors
[Josie](https://github.com/jozwright)
and
[Meghan](https://github.com/pdxmeghan)

##Tools
Rails
PostgreSQL
ActiveRecord
Ruby Gems

##License
MIT
