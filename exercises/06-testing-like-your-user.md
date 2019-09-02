# Overview

As we discussed, we should have tests that exercise our application like a user to make sure that everything is working from the user's standpoint. This exercise will demonstrate how to use feature specs with Capybara to accomplish this.

# Exercise

Use a feature spec to drive out the remaining functionality that we need to add tacos to our cart. This work should mostly be done in the controller and view layer. Once you've implemented the steps in the test to add the tacos to the cart, make sure to add assertions that verify that the taco is in the cart or not in the cart. Make sure that you add a test for adding tacos to the cart and making sure that tacos that the user is allergic to aren't added to the cart and instead show an error.

We'll be using Rails [`collection_check_boxes`](1) to make building the form for the association easy.

For debugging, remember, that you can use `save_and_open_page` to have Capybara take an HTML snapshot of the page and open it in the browser for you so that you can see what's going on. Additionally, you can use `binding.pry` to open up the debugger - which I find to be extremely helpful. I also created some seed data for you so that you can fire up the application and get a visual as you develop things. Run `bin/rails db:seed` to setup the seed data and then start the server: `bin/rails s`.

Finally, here's a [cheatsheet for Capybara](2) for you to reference as you write the spec.

[1]: https://apidock.com/rails/v4.0.2/ActionView/Helpers/FormOptionsHelper/collection_check_boxes
[2]: https://devhints.io/capybara
