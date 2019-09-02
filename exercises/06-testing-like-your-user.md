# Testing Like Your User

As we discussed, we should have tests that exercise our application like a user to make sure that everything is working from the user's standpoint. Let's write one of those tests now to finish building out the functionality to add items to the cart.

## Exercise

Use a feature spec to drive out the remaining functionality that we need to add tacos to our cart. This work should mostly be done in the controller and view layer. To verify that the tacos were added to the cart, just reload the cart record that you created and perform your assertions there. We'll add in functionality to actually display the tacos in the cart in a future lesson.

💡 I created an HTML template for you at `exercises/06/index.html.erb` to use so that you don't have to worry about the specifics of the HTML and CSS. So that you can get a feel for the flow, I recommend still trying to implement the template using TDD by referencing the prebuilt template, but actually typing it out yourself. If you're curious, it uses Rails' [form](1) and [`collection_check_boxes`](2) helpers to easily create a form that handles this logic for you.

For debugging, remember, that you can use `save_and_open_page` to have Capybara take an HTML snapshot of the page and open it in the browser for you so that you can see what's going on. Additionally, you can use `binding.pry` to open up the debugger - which I find to be extremely helpful. I also created some seed data for you so that you can fire up the application and get a visual as you develop things. Run `bin/rails db:seed` to setup the seed data and then start the server: `bin/rails s`.

Finally, here's a [cheatsheet for Capybara](3) for you to reference as you write the spec.

[1]: https://guides.rubyonrails.org/form_helpers.html
[2]: https://apidock.com/rails/v4.0.2/ActionView/Helpers/FormOptionsHelper/collection_check_boxes
[3]: https://devhints.io/capybara
