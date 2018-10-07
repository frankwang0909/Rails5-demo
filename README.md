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
Operation System  Ubuntu 14.04.4 LTS

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

update table `line_items`

```shell
 bin/rails generate migration add_order_to_line_item order:references

Running via Spring preloader in process 12827
      invoke  active_record
      create    db/migrate/20181006144305_add_order_to_line_item.rb
```

migrate:

```shell
bin/rails db:migrate

== 20181006144213 CreateOrders: migrating =====================================
-- create_table(:orders)
   -> 0.0190s
== 20181006144213 CreateOrders: migrated (0.0196s) ============================

== 20181006144305 AddOrderToLineItem: migrating ===============================
-- add_reference(:line_items, :order, {:foreign_key=>true})
   -> 0.0075s
== 20181006144305 AddOrderToLineItem: migrated (0.0077s) ======================
```

```shell
wxf@ubuntu:~/work/shopping$ sqlite3 -line db/development.sqlite3
SQLite version 3.8.2 2013-12-06 14:53:30
Enter ".help" for instructions
Enter SQL statements terminated with a ";"

sqlite> select * from orders;

        id = 1
      name = Dave Thomas
   address = 123 Main Street
     email = Dave@example.com
  pay_type = 0
created_at = 2018-10-07 02:02:19.613480
updated_at = 2018-10-07 02:02:19.613480

sqlite> select * from line_items;

        id = 60
product_id = 4
   cart_id =
created_at = 2018-10-07 01:57:06.989442
updated_at = 2018-10-07 02:02:19.616584
  quantity = 2
  order_id = 1

        id = 61
product_id = 3
   cart_id =
created_at = 2018-10-07 01:57:10.227145
updated_at = 2018-10-07 02:02:19.619097
  quantity = 2
  order_id = 1
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
