[![Kvizo-Ed-img](https://img.shields.io/badge/KvizoEd-ff69b4.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAaQAAAGkAQMAAABEgsN2AAAABlBMVEXSVJvw8PBBhms0AAAAk0lEQVR4nO3LywmAMABEwYAFWJKtWWpK8OhJPcUPMSiCiGTedXfC/KAhUBRFURR1rWK4X0dRFEVRFEVRFEVRv1NZU/o0pzNFURRFURRFURRFURRFURRFURRFUVQ9KqZTV1SHS0HlURRFURRFURRFUdRbai2dx2zZ1FpfVO3+RlEURVEURVEURVGfq5tRFEVRVEVqAQt/yMKEdYNrAAAAAElFTkSuQmCC)](https://kvizofe.herokuapp.com/)

[![Kvizo](https://circleci.com/gh/Kvizo-Ed/kvizo-be.svg?style=svg)](https://app.circleci.com/pipelines/github/Kvizo-Ed/kvizo-be?)

# Kvizo Backend

## Background and Description

Kvizo is an application that allows users to create and take quizzes.  The backend of Kvizo utilizes a Ruby on Rails framework, as well as WebSockets with Action Cable to facilitate live quizzes.  It was developed as a capstone project at Turing School of Software and Design.  Project requirements can be found [here](https://mod4.turing.edu/projects/capstone/).

[Github Project](https://github.com/Kvizo-Ed)

[Frontend Repository](https://github.com/Kvizo-Ed/kvizo-fe)

## Schema

<img width="1091" alt="Kvizo Schema" src="https://user-images.githubusercontent.com/87659229/154350131-e3793dc1-8c58-4692-95cc-aede5b96057f.png">


## Endpoints

[Endpoints](https://github.com/Kvizo-Ed/kvizo-be/blob/main/endpoints.md)

## Setup and Testing

This project utilizes Rails 5.2.6 and Ruby 2.7.2

* Fork this repository
* Clone your fork
* From the command line, install gems and set up the users database:
    * `bundle install`
    * `rails db{create,migrate,seed}`
* Run the test suite with `bundle exec rspec`.
  * The [![RSPEC-img](https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white)](https://rspec.info/)
 test suite can be found in the project's spec directory.
* This app is deployed on [![Heroku-img](https://img.shields.io/badge/Heroku-430098.svg?&style=flaste&logo=heroku&logoColor=white)](https://www.heroku.com/) and uses [![Circle CI-img](https://img.shields.io/badge/-CircleCi-brightgreen.svg?logo=LOGO)](https://circleci.com/)
 for continuous integration

## Technologies

### Development
[![Atom-img](https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white)](https://atom.io/)
[![Git-img](https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white)](https://git-scm.com/)
[![Github-img](https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white)](https://github.com/)
[![Markdown-img](https://img.shields.io/badge/Markdown-000000.svg?&style=flaste&logo=markdown&logoColor=white)](https://www.markdownguide.org/)
[![PostgreSQL-img](https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=flaste&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Postman-img](https://img.shields.io/badge/Postman-FF6C37.svg?&style=flaste&logo=Postman&logoColor=white)](https://www.postman.com/)
[![Ruby on Rails-img](https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white)](https://rubyonrails.org/)

### Testing
[![Pry-img](https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white)](https://rubygems.org/gems/pry-rails)
[![RSPEC-img](https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white)](https://rspec.info/)
[![Shoulda Matchers-img](https://img.shields.io/badge/shoulda--matchers-b81818.svg?&style=flaste&logo=rubygems&logoColor=white)](https://matchers.shoulda.io/)
[![Simplecov-img](https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white)](https://rubygems.org/gems/simplecov)


## Contributers

[![Github-img](https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white)](https://github.com/)

- [Lesley Sanders](https://github.com/lgsriclas)
- [Nate Brown](https://github.com/yosoynatebrown)
- [Anna Kummer](https://github.com/annamkummer)
- [Edward Krupicka](https://github.com/edwardkrupicka)

[![LinkedIn-img](https://img.shields.io/badge/LinkedIn-0077B5?style=flaste&logo=linkedin&logoColor=white)](https://www.linkedin.com/)

- [Lesley Sanders](https://www.linkedin.com/in/lesley-sanders/)
- [Nate Brown](https://www.linkedin.com/in/nathanbrownco/)
- [Anna Kummer](https://www.linkedin.com/in/anna-m-kummer/)
- [Edward Krupicka](https://www.linkedin.com/in/edwardkrupicka/)

