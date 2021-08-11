# README
## StudioAssistant

StudioAssistant is a web application designed for the working music producer to organize their upcoming sessions, manage studio spaces they use, and get an overview of what each session will require.

## Prerequisites

Before you continue, make sure you meet the following requirements:

Ruby 2.6.3
Rails 6.1.4

## Install

### Clone the repository
```
git clone git@github.com:Ksamuel92/studioassistant-rails.git
cd studioassistant-rails
```
### Install Dependencies (with Bundle and Yarn)
```
bundle install  
yarn install
```
### Initialize the database
```
rails db:create db:migrate db:seed
```
### Run the server
```
rails s
```
Once you are on the home page, simply signup, create your first studio, and start adding your sessions!

## Contributing to StudioAssistant
To contribute to StudioAssistant, follow these steps:

Fork this repository.
Create a branch: git checkout -b <branch_name>.
Make your changes and commit them: git commit -m '<commit_message>'
Push to the original branch: git push origin studioassistant-rails
Create the pull request.
Alternatively see the GitHub documentation on creating a pull request.

## Contact

If you would like to contact me, please email ksamuel92@mgail.com

## License

This project uses the following license: MIT License
