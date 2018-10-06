# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

```code
Rails version             5.2.1
Ruby version              2.3.1-p112 (x86_64-linux)
RubyGems version          2.7.7
Rack version              2.0.5
```

* System dependencies

```code
Database adapter          sqlite3
```

* Configuration

* Database creation

migrate

```shell
bin/rails db:migrate

== 20181006073835 CombineItemsInCart: migrating ===============================
== 20181006073835 CombineItemsInCart: migrated (0.0978s) ======================
```

rollback

```shell
bin/rails db:rollback

== 20181006073835 CombineItemsInCart: reverting ===============================
== 20181006073835 CombineItemsInCart: reverted (0.1615s) ======================
```

```shell
bin/rails db:migrate:status

database: /home/wxf/work/shopping/db/development.sqlite3

 Status   Migration ID    Migration Name
--------------------------------------------------
   up     20181005064649  Create products
   up     20181006062429  Create carts
   up     20181006063326  Create line items
   up     20181006072930  Add quantity to line items
  down    20181006073835  Combine items in cart
```

* Database initialization

* How to run the test suite

run unit test

```shell
bin/rails test
```

functional testing of Controllers

```shell
bin/rails test:controllers
```

* Services (job queues, cache servers, search engines, etc.)

```shell
rails dev:cache

# Development mode is now being cached.
```

```shell
rails dev:cache
# Development mode is no longer being cached.
```

* Deployment instructions

* ...
