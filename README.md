# Web Flash Cards 1 Multiple Decks 
 
##Learning Competencies 

- Manage application complexity via proper modeling.
- Use project management fundamentals, including division of labor.
- Use product management fundamentals in the face of incomplete specifications.
- Further practice with ActiveRecord, Sinatra, and ERB.

##Summary 

We're going to create a web-based flash card application, starting with one that has a single deck.  Eventually we'll add support for user-generated decks and improve the interface via AJAX.

This will be our most complicated web application yet.  The goal is to get a feel for how you manage complexity as projects grow and become more nuanced on both the front-end and back-end.

This challenge will also have dimensions of product management and everyday engineering.  Often specifications you receive are incomplete, ambiguous, or even contradictory.

##Releases

###Release 0 : Application Details

You'll pre-determine the set of decks.  Later we'll add the ability for users to add their own, but for now you can add them via `seeds.rb` if you want.  Add more than one.  Ideas:

* English-to-other-language dictionaries. [Try these](http://wiki.webz.cz/dict/).
* US state capitals
* World capitals
* Historical events

Decks have many cards.  A card belongs to a single deck.  When a user signs in, they'll see a list of decks.

Users can play a "round," which is a series of guesses over all the cards in a deck.  User should be able to see a list of all the rounds they've completed and statistics for that round (deck used, number guessed, number correct, number incorrect, etc.)

To make it easier, we'll say that a user can only use the flash cards if they're logged in.

###Release 1 : Routes &amp; Models

Determine your routes, and use multiple controller files.  When I'm logged in, I'll want to be able to do things like:

* Start a round by picking a deck
* Play through a round
* Get feedback on how my round went
* See how all my past rounds went

What routes and models will you need?  Most likely you'll need *at least* the following models: `User`, `Deck`, `Card`, `Round`, and `Guess`.

Think about how you're going to model a `Round` in particular.  You make a guess and see the answer regardless of whether you were correct, although the system tells you whether you were correct.  If your guess was incorrect, you're given another random card so far that you haven't guessed correctly, until you've run out of guesses.

There are other ways to conduct a round, but this is how we'll do it for now.  Feel free to do something more interesting if the spirit moves you.

###Release 2 : Simple UI

Create a simple UI that lets you submit guesses and, if correct, advances to the next card in the round.  You should log both incorrect and correct guesses.

When a user is done they should be redirected to a page that shows a list of all the rounds they've completed in chronological order from most recent to least recent.  On this page you should also include stats about the round, like total number of guesses, total number of cards in the round, % correct, etc.

###Release 3 : Testing
If you haven't been writing tests as you go, or even better using TDD, then now is the time to add them.  You should have ample test coverage of your model and controller.  If you want you can explore testing of your views as well.

##Optimize Your Learning 
This project is as much about project management and team dynamics as it is about the code.  What skills / lessons did you learn from working with a team?  How will you work better next time?

##Resources

* [Rspec](http://rspec.info/)
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
* [Capybara](https://github.com/jnicklas/capybara)
* [Flash card example][card example]

[card example]: http://wiki.webz.cz/dict/