# README

## User Stories

- In order to plan ahead, as a planner I want to see all todo items
- In order to plan ahead, as a planner I want to see all pending todo items
- In order to update my plans, as a planner I want to create a new todo item
- In order to make progress and feel successful, as a planner I want to complete a todo item
- In order to change my plans, as a planner I want to edit or remove todo items

## Creating

- `mkdir -d ~/db/postgres`
- `initdb -D ~/db/postgres/data -EUTF-8 --locale=en_US.UTF-8`
- `pg_ctl start -D ~/db/postgres/data -l ~/db/postgres/postgres.log`
- `createdb todo_development`
- `rails g scaffold TodoItem title:string completed_at:timestamp`

## Technicals

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
