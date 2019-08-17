# Unit Test Intro

Now that you're familiar with unit tests, let's write a few to start building our taco order app. The first piece of functionality we'll tackle is adding tacos to our cart. The second piece of functionality that we'll tackle is preventing tacos that contain ingredients that our user is allergic to from being added to the cart.

## Exercise

For the first feature in our taco order app, we want to add functionality to be able to add tacos to a cart. Since we're using what I would consider to be the conventional flow for TDD, we'll start with unit tests for our model. Using TDD, implement functionality to be able to add tacos to the cart. Right now, this just means creating an association between our cart and tacos. I recommend using a `has_and_belongs_to_many` association for this. Remember also that we talked about how the mockist approach considers a unit test only something that has been isolated from other units. While I advise against this approach because it leads to brittle tests and reduces confidence, let's implement these unit tests with a mockist approach to highlight the problems. You can use RSpec's [`allow`](1) method to stub out the functionality of the tacos.

After you've implemented the functionality for adding tacos to the cart, add some functionality that prevents tacos from being added to the cart if the tacos contains ingredients that the user is allergic to. Again, just focus on the model here. I would use callbacks to perform the validation and add errors to the cart object. Also, be sure to use the mockist approach to isolate the cart unit from the taco unit.

[1]: https://relishapp.com/rspec/rspec-mocks/v/3-8/docs/basics/allowing-messages
