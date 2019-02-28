# Pizza Shop API
## Prerequisites

Make sure you have ruby 2.2.3 installed

## Setup

Run the following commands to setup the project:

```
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

## Run the local server

Start the server with:
```
bundle exec rails s -p 3010
```
It is **IMPORTANT** that the app runs on
http://localhost:3010 because the client app
will connect to it, therefore the `-p 3010` option should
not be omitted.

## Architecture

This is a RESTful API that uses the MVC (Model-View-Controller) design pattern. Although, due to its simplicity, in this app most of the controller actions are not
linked to a view, but directly render the JSON data from the controller.
