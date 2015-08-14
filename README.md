# Web Flash Cards 

## Summary
We're going to create a web-based flash card application.  Our application will present users with decks of flash cards.  Users will select a deck and play a round of flash cards.

This will be our most complicated web application yet.  In addition to getting over the technical hurdles, this challenge will also have dimensions of product management.  We'll begin to get a feel for how to manage complexity as projects grow and become more nuanced on both the front- and backends. We'll need to divide labor and collaborate as a team.  As in the real-world, we'll also be faced with incomplete and ambiguous specifications.


## Releases
### Release 0: Build the MVP
We're going to begin by focusing on building the minimum viable product (MVP).  There are a lot of interesting features a flashcard application can include, but let's start by getting the core functionality in place.  We have some requirements and descriptions of our application.  These might not be as complete and comprehensive as we'd like; we'll need to fill in some of the blanks ourselves.

**User story:**  As a user, I visit the homepage and see a list of decks.  I click on the name of a deck and play a round with that deck.  After the round, I see stats on how well I performed.  If I've logged in, I can then visit my profile to see stats for all the rounds I've played.

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


### Release 2: Additional Features
With our MVP in place, we can add features to enhance our application.  We have a short wish list of features that we can choose to implement.  Or maybe we have a feature or two of our own that we'd like to add.

**User-created decks:**  In the MVP, users were able to select pre-existing decks to play.  It would be nice if users were able to create their own custom decks with custom cards.  In addition, users should be able to mark a deck as private so that only they can play their private decks.

**Visualize profile statistics:**  In the MVP, the historical round statistics are displayed in a tabular form.  It would be nice if users could track their progress over time in a visual format—perhaps in graphs generated using the [d3.js JavaScript library](http://d3js.org/).

*Note:* Time-box exploring the d3.js library; it can have a steep learning curve and become a rabbit hole.

**Listing decks:**  In the MVP, all decks are listed on the homepage.  It would be nice if the decks were organized: a list of the newest decks, a list of the most commonly played decks, etc.  Some way of highlighting to users decks that they might want to play.

**Mobile friendly:**  In the MVP, we designed our site for display on a laptop, desktop, or other larger screen device.  It would be nice if our [layouts were responsive](http://learn.shayhowe.com/advanced-html-css/responsive-web-design/) to the dimensions of device screens, so that users could easily use the application on their phones.


### Release 3: Testing
If we haven't been writing tests as we go—or even better using TDD—then now is the time to add them.  We should have ample test coverage of our models and controllers.  We could explore testing our features as well.

*Note:*  The `db:create` Rake task created both a developlment and a test database.  The `db:migrate` Rake task runs the migrations only in the development database.  To prepare our test database for testing, we'll need to execute the `db:test:prepare` Rake task.

*Testing Active Record models:*
- [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)

*Testing Sinatra controllers:*
- [Taryn's Blog](http://tarynsauer.tumblr.com/post/72337538488/using-rspec-to-test-sinatra-controller)
- [GetLaura](http://www.getlaura.com/how-to-test-a-sinatra-app-with-rspec/)

*Feature testing:*
- [capybara](https://github.com/jnicklas/capybara)


## Conclusion
The application we built in this challenge represents a step up in complexity compared to our previous web application challenges—both technically and organizationally.  This challenge is as much about project management and team dynamics as it is about the code.  What skills/lessons did you learn from working with a team?  How will you work better next time?
