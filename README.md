# Event Organizing Application

This is my project for the `Revisit Ruby and Rails` chapter of my own curriculum.

The whole project is developed in TDD.

Learning goals:
- TDD (RSpec, Factory Girl etc.)
- More Ruby
- Modeling data
- Rails Associations
- Rails Mailing

## What does the app do?

The app is a management tool for events e.g. ClojureBridge workshops.
It wants to provide neat way sign up for an event or to organize one.


## How to get started

- Get Postgresql with `brew install postgresql`
- Clone the repository and run `bundle`
- Start Postgresql in terminal `postgres -D /usr/local/var/postgres`
- For more info on Postgresql do `brew info postgres`
- If you set up the app for the first time use `bundle exec rake db:create`
- Then migrate the database with `bundle exec rake db:migrate`
- To start the app run `rails s`

## How to run the specs

- Run the specs with `bundle exec guard`
