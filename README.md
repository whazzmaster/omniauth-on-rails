# OmniAuth-on-Rails Example App

This application was used during the [June 24th Mad-Railers Meetup](http://www.meetup.com/Mad-Railers/events/123440812/)
entitled "OAuth and Rails: Logging in With Twitter, Facebook, and More!" Clone this app to practice adding OAuth support
to a Rails application.

For some additional information check out the [presentation slides online](https://speakerdeck.com/whazzmaster/oauth-on-rails).

## Getting Started
Follow these steps to get the sample application up and running on your development machine:

#### Get the Code

~~~~sh
$ git clone https://github.com/whazzmaster/omniauth-on-rails
~~~~

#### Navigate to the Base State
The repository contains commits up to and including a working version of the omniauth-integration. To work
through the examples on your own roll back the repository to the 'base-state' tag.

~~~~sh
$ git reset --soft 01-base-state
~~~~

#### Install Dependencies
Thw two major (non-gem) dependencies you'll need to work through this example application are **SQLite 3** and
**Pygments**.

##### SQLite 3
May be installed via [Homebrew](http://mxcl.github.io/homebrew/) using `brew install sqlite` or via a
[downloaded package](http://www.sqlite.org/download.html).

##### Pygments
[Pygments](http://pygments.org/) is a [Python](http://www.python.org/) library used to highlight code. This application
uses the [pygments.rb](https://github.com/tmm1/pygments.rb) gem to pull code highlighting functionality into the
application.

Bundler will install Pygments itself when it gets pygments.rb as long as you have a Python interpreter installed.

#### Install Gems

~~~~sh
$ bundle install
~~~~

#### Prep the Database
Create and migrate the database.

~~~~sh
$ bundle exec rake db:create
$ bundle exec rake db:migrate
~~~~

#### Start the Application

~~~~sh
$ rails s
=> Booting WEBrick
=> Rails 3.2.13 application starting in development on http://0.0.0.0:3000
=> Call with -d to detach
=> Ctrl-C to shutdown server
[2013-06-23 13:47:33] INFO  WEBrick 1.3.1
[2013-06-23 13:47:33] INFO  ruby 2.0.0 (2013-05-14) [x86_64-darwin12.3.0]
[2013-06-23 13:47:33] INFO  WEBrick::HTTPServer#start: pid=54011 port=3000
~~~~

#### Work Through the Application to Add OAuth support
Open [localhost:3000](http://localhost:3000) to the home page and being adding OAuth support to the application:

* Browse the source code to see how everything is setup to begin with.
* Work through the steps on the home page to see how you go about adding OAuth support via omniauth.

## Contributing
This is an **educational application** intended to help folks understand the steps needed to add OAuth support
to a Ruby on Rails web application.

**Do not** clone this application and use it as a base for a real, production application. You should understand how
user authentication in general and OAuth works specifically before adding omniauth to your real-world applications.

If you see issues with this sample application, **please submit a
[pull request](https://github.com/whazzmaster/omniauth-on-rails/pulls)**. I'm always interested in improving this
application for use by future folks looking to understand OAuth, OmniAuth, and Rails.
