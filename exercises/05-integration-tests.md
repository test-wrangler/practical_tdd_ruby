# Integration Tests

Let's continue working our way up the stack with our tests by implementing an integration test. We'll continue on with the functionality to add tacos to our cart by adding the controller and routing logic that we need to add tacos to our cart.

## Steps

1. For the first part of this exercise, let's focus on the simplest use-case which is just adding tacos to the cart. Let's start with an assertion that there are two tacos in our cart.
2. We're going to expect that an action to add tacos to our cart will be defined as part of this spec. Issue a `patch` to our `add_to_cart_path` with the cart and the tacos that we want to add (which we'll define in later steps).
3. Create a cart and assign it to a variable named `cart`.
4. Add the `add_to_cart_path` route to the `routes.rb` file. (If you're not sure how to do this, you can take a quick peek at the solution.)
5. Create the two taco records.
6. Create the carts controller and define the add action.
7. Implement the logic to add our tacos to our cart.
8. The spec should pass! 🎆
