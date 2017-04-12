# README

## User Stories

- In order to plan ahead, as a planner I want to see all todo items
- In order to plan ahead, as a planner I want to see all pending todo items
- In order to update my plans, as a planner I want to create a new todo item
- In order to make progress and feel successful, as a planner I want to complete a todo item
- In order to change my plans, as a planner I want to edit or remove todo items

## Creating

### New app
```
rails new MY_APP -T --database=postgresql
cd MY_APP
rails g rspec:install
```

### Database
- Install PostgreSQL: `brew install postegresql`
- Create folders for PostgreSQL: `mkdir -p ~/db/postgres`
- Create database files: `initdb -D ~/db/postgres/data -EUTF-8 --locale=en_US.UTF-8`
- Start database server: `pg_ctl start -D ~/db/postgres/data -l ~/db/postgres/postgres.log`
- Create local database for my todo app: `createdb todo_development`
- Scaffold Model + Controller + Views in Rails for my todo items: `rails g scaffold TodoItem title:string completed_at:timestamp`

## Deploying

```bash
git remote add origin git@github.com:BurntCaramel/aspire-todo-rails.git
git push -u origin master
heroku create
heroku apps:rename aspire-todo
git push heroku master
heroku run rails db:migrate
```

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
