#PhotoApp
PhotoApp lets users interact with photos and friends.

##Setup
In your terminal, clone this repo:

```console
$ clone https://github.com/jozwright/photo_app.git
```

Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

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
It should now be available at `localhost:3000`.

Alternatively, the live app is on [Heroku](http://photobook-app.herokuapp.com/).

##Authors
[Josie](https://github.com/jozwright)
and
[Meghan](https://github.com/pdxmeghan)

##License
MIT
