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

# Running Webpack 
# ---------------------------------------------------------------------------------------------
- ssh into the box via `bash -c "clear && docker exec -it rails_react bash"` 
- then use  `webpack -w` to watch the files from webpack.

# debugging app 
# ---------------------------------------------------------------------------------------------


# create and empty docker container 
# ---------------------------------------------------------------------------------------------
docker run --rm -v $(pwd):/usr/src -w /usr/src -ti djdaviswvu/rails_react_docker bash ; cd my_app

# install rails 
# ---------------------------------------------------------------------------------------------
gem install rails                                                 # install rails 
rails new --help                                                  # verify rails exists
rails new my_app --webpack=react --database=mysql --skip-bundle   # create the new project 
exit                                                              # exit the container 