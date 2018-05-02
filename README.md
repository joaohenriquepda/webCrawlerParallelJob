# Web Crawler with Parallel Jobs


### This project is web crawler get html tags HTML H1,H2,H3 and links

### Project dependencies
- Ruby on Rails 5.1
- Postgres
- Sidekiq
- Redis

This project uses Docker to manage project dependencies, for run this project you need Docker Compose


## Start project

Executing the command below in the root folder project, the docker will be responsible for downloading all dependencies for this project

```
docker-compose up
```

After download this command will run all dependency services for the project, they are Postgres, Redis and Sidekiq.

Now just access the browser with **localhost:3000/pages**


This page will have a field to insert the url that you want to analyze.


## How works?

When the url is inserted it is called the taks that are stacked executed in parallel, so the Sidekiq Redis are working together to accomplish this work.

There is a task for each type of capture tags that the system performs. There are also tasks responsible for reading all the links in the url and other responsible tasks only by entering this information into the record of that url

### Tests

To run the tests of this project, with the docker running open another tab of the terminal and execute:

```
docker-compose exec api /bin/bash
bundle exec rspec
```

The tests for this project are set up using RSpec and SimpleCov





