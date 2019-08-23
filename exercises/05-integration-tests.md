# Integration Tests

Let's continue working our way up the stack with our tests by implementing an integration test. We'll continue on with the functionality to add tacos to our cart by adding the controller and routing logic that we need to add tacos to our cart.

## Steps

For the first part of this exercise, let's focus on the simplest use-case which is just adding tacos to the cart.

1. We're going to expect that an action to add tacos to our cart will be defined as part of this spec. Issue a `patch` to our `add_to_cart_path` with the cart and the tacos that we want to add (which we'll define in later steps).
2. Create a cart and assign it to a variable named `cart`.
3. Add the `add_to_cart_path` route to the `routes.rb` file. (If you're not sure how to do this, you can take a quick peek at the solution.)
4. Create the 2 taco records.
5. Create the carts controller and define the add action.
6. Add an assertion that our cart now has 2 tacos in it.
7. Implement the logic to add our tacos to our cart.
8. The spec should pass! 🎆

Now that we have the functionality to add tacos to our carts, see if you can use TDD to exercise the functionality that prevents tacos from being added to the cart that the user is allergic to. You can follow a pretty similar workflow to what we need above. Just note that you won't get failures at certain steps because some of the functionality has already been implemented. Hint: You're going to need to rescue the error that's thrown in the controller. Also, I'm sending some text back in the error handling block, just for fun.
