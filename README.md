# README

This is a Rails back-end that allows the user to pick five cards from a standard deck. You can have multiple decks that persist in the back-end that is located <a href="https://github.com/Rygel-XVI/redtech-client">here</a>.

To be added. Game state persistence. A new migration that has the status of 5 cards set to null on creation of the deck and are updated as cards are drawn.

* Ruby version

This uses Rails v5.2.3 and Ruby v2.5

* System dependencies

* Configuration

* Database creation

After cloning the repo run rails db:migrate on the command line.

* Deployment instructions

To use the app please clone both the front and back end repos then npm install the front end and bundle install the backend.

Start the Rails server first with rails s

After starting the Rails server start React with npm start and hit enter when asked if it should use a different port.
