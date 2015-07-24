# Web Flash Cards 
 

## Summary
We're going to create a web-based flash card application.  Our application will present users with decks of flash cards.  Users will select a deck and play a round of flash cards.

This will be our most complicated web application yet.  In addition to getting over the technical hurdles, this challenge will also have dimensions of product management.  We'll begin to get a feel for how to manage complexity as projects grow and become more nuanced on both the front- and backends. We'll need to divide labor and collaborate as a team.  As in the real-world, we'll also be faced with incomplete and ambiguous specifications.


## Releases
### Release 0: Build the MVP
We're going to begin by focusing on building the minimum viable product (MVP).  There are a lot of interesting features a flashcard application can include, but let's start by getting the core functionality in place.  We have some requirements and descriptions of our application.  These might not be as complete and comprehensive as we'd like; we'll need to fill in some of the blanks ourselves.

**User story:**  As a user, I visit the homepage and see a list of decks.  I click on the name of a deck and play a round with that deck.  After the round, I see stats on how well I performed.  If I'm a registered user, I can then visit my profile to see stats for all the rounds I've played.

**Round description:**  After a user selects a deck, they play a round.  We have specific requirements for what should happen when a user plays a  round.

- The user plays every card in the deck.
- The cards are played in a random order.
- For each card, the user is shown a prompt and responds by submitting a guess.
- After submitting a guess, the user is informed whether or not the guess was correct and shown the correct answer.
- The round continues until each card is answered correctly—after going through each card, cards answered incorrectly will be displayed again.

**Round statistics description:**  After a user completes a round, the user should be shown statistics for the round.  We have specific requirements for what statistics should be displayed.

- Name of the deck played.
- The number of cards answered correctly on the first guess compared to the number of cards in the deck.
- Total number of guesses made.

**Profile description:**  Registered users should have a profile page that showcases their flashcard history.

- Statistics for all rounds played should be available.
- Statistics should be organized by deck and displayed in chronological order.
- For each round, required details are the date the round was played, the number of cards in the deck, the number of cards answered correctly on the first guess, and the total number of guesses needed to complete the round.

**Mockups:**  We have some mockups that provide guidance on how our pages should look.

- [Homepage](mockups/homepage.png)
- [Displaying a card to the user](mockups/display-a-card.png)
- [End of round statistics](mockups/round-statistics.png)
- [Profile page](mockups/profile.png)

We'll want to get a thorough understanding of the application that we need to build.  Once we understand what's expected of us, we can collaborate on how to get it done.  We'll be making a lot of decisions.  Maybe we make the right decision, maybe the wrong one.  As a team, we'll need to communicate and collaborate ... and most likely make some course corrections as we go along.

*Note:*  We'll most likely need at least the following models: `User`, `Deck`, `Card`, `Round`, and `Guess`.


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