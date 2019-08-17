# Overview

Now that you're familiar with unit tests, let's write a few to start building out different features for our taco order app.

# Exercise

The first piece of functionality we'll tackle is being able to add tacos to our cart. Since we're starting off with what I would consider to be the conventional flow for TDD, we'll write unit tests for our model first. These tests will also go in our `spec/models` directory. Right now, adding a taco to a cart just means creating an association between our cart and tacos. I recommend using a `has_and_belongs_to_many` association for this. Remember also that we talked about how the mockist approach considers a unit test only something that has been isolated from other units. While I advise against this approach because it leads to brittle tests and reduces confidence, let's implement these unit tests with a mockist approach to highlight the problems with mocking. You can use RSpec's [`allow`](1) method to stub out the functionality of the tacos.

After you've implemented the functionality for adding tacos to the cart, add some functionality that prevents tacos from being added to the cart if the tacos contains ingredients that the user is allergic to. Again, just focus on the model here. I would use callbacks to perform the validation and add errors to the cart object. Also, be sure to use the mockist approach to isolate the cart unit from the taco unit.

Finally a couple of things to note here. I'm using the term mocking loosely. What we're actually doing here is called stubbing, but I don't want us to go to deep down this rabbit hole. Also, these tests aren't truly isolated from each other. We're relying on some of Rails' functionality that would be very messy to try to mock out. However, we are mocking out the core functionality that we're testing here - ingredients and allergens.

[1]: https://relishapp.com/rspec/rspec-mocks/v/3-8/docs/basics/allowing-messages
