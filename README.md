# README

This README would normally document whatever steps are necessary to get the
application up and running.

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


El scaffolding se hizo de la siguiente manera:
```
rails g scaffold VehicleType name:string description:string
rails g scaffold Vehicle brand:string model:string plate:string year:integer vehicle_type:references
rails g scaffold Driver first_name:string last_name:string document:integer picture_url:string
rails g scaffold Trip date:datetime vehicle:references driver:references destination:string kilometers:integer

```