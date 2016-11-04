# Today

katalyst
- patch - do on staging first, make sure all good and then do - generally all pretty good
- if restart or db setting change then may need downtime, preferred is to spin up a new server
- rubocop - on commit hook for git just add a script


Code review
- tdd
- should use traits for different types of string input?
- if testing shortlist - how to load a recipe
Presenters
Pry - how to get to the end
Heroku db sync
AWS command line sync
Test for shortlist refactor - feature spec - how to load

# To Do

Work out questions for raz
- how best to work with data. want to start adding in content and start using
- eg add to live sync to local
- dragonfly images
- wheres my database.yml?
- run through basic app
- run through testing
- csv imports?
- better options than heroku?
- slow tests?
– warning message in tests?
- singular resource route for shortlists

Get basic tests setup

Get sortable working

# Done

Get items working again

Check through heroku setup

# Notes from meeting

https://github.com/colszowka/simplecov

Don't use default scope - scope is hidden

Test scopes
Controller tests for session access - request a round and see whether you get the right response back
before and after tests for logging in as user etc
check for routes that are enabled or disabled

Also...

Spend time daily on tools etc

defaults write com.apple.finder AppleShowAllFiles YES


# Today

should shortlist be a resource
create a presenter


aws - sync cli, or transmit

# Done

get rubocop setup
configure rubocop for stuff
create a helper for items
refactor routes for shortlist
120 lines rather than 80


# Future

Work out how to customise linter and tie into Katalyst workflow
