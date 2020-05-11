# Climbing Logbook
The goal of this project is to get guiding into the 21st century providing a way
for guides to organize route notes, client information and lesson plan.
its also Lani's first real project TODO Lani update this with what you want

## What you will need to start developing
Here is a list of some thing that you will need to download and or install before you can get started:

* IDE(I recommend [atom](https://atom.io) and installing plugins that you think will be helpful perhaps solorgraph)
* Ruby (you probably already have it)
* [npm](https://www.npmjs.com/get-npm) (we need it for compiling some front end stuff)
* [jets](https://rubyonjets.com/docs/install/) (don't worry about the database install section since we are using a different database then the default)
* [dynamodb-local](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.DownloadingAndRunning.html) (there is an easy way to do it on mac or linux but I think you are using windows)
* [dynamodb-admin](https://github.com/aaronshaf/dynamodb-admin)

## Running the app for the first time
Running the app should be simple once you have everything downloaded all you need to do is
run the dynamodb local so that it hosts on localhost:8000. and then in the terminal run the following in the project directory:

```
bundle install
jets s
```

then in chrome go to http://localhost:8888 and you should see the default jets page.
Now we need to setup the database with the required tables. to do this, with dynamo local running execute the following command
```
jets dynamodb:migrate dynamodb/migrate/20200509151149-create_ClimbingRoutes_migration.rb
```

after that go to http://localhost:8888/climbing_routes and you will see the current state of the app
