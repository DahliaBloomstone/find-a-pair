-think in terms of URLS

-A GET request is when your browser is asking for information.

-POST - browser is giving information. submitting a form is a post request because you're taking all the stuff you put in and sending it to the server.

-rails generate model --> shows commands. generate a ruby class called a model
ex: rails generate model User email:string

-in rails, the way we tell our app about what it can do it through routes
config routes.rb
domain specific language

-MVC:
Model:database - active record
Controller: web requests - actioncontroller
View: HTML - actionview

-rails generate controller

- the way we get access to the data we submitted in a form is through
the params object THE PARAMS OBJECT!
ex: params[:email] returns user email

- Ruby = classes 
Rails - MVC framework
