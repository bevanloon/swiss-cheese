# What

A simple Sinatra based application with security holes in it.

# Set up

Step 1. Install the gems

```
bundle
```

Step 2. Set up the database

```
bundle exec rake db:migrate
```

or if you want the seed data as well

```
bundle exec rake db:setup
```

# Running

To run the application

```
bundle exec rerun rackup
```

# Migrations

The project uses ActiveRecord.

To add a migration:

```
bundle exec rake db:create_migration NAME=migration_name
```
