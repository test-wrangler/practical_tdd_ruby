# Practical Test Driven Ruby

What if you could make changes to your code with near instant feedback from your computer? What if you could also be confident that the changes you're making aren't breaking existing functionality? In this workshop, we'll learn how to achieve both of these benefits through TDD in a hands-on way as we build a taco order app. Whether TDD is part of your daily workflow or you are looking to incorporate it into your workflow, I believe you'll walk away with the tools and knowledge that you need to make your coding more productive and fun by using automated tests to build your system, practically.

## Prerequisites

Please complete the items on the list below before the workshop. This will allow us to spend as much time as possible on the good stuff. Also, I highly recommend working through the [Resources](#Resources) in this README prior to the workshop. The workshop will be more productive for you if you have at least a base level familiarity with the tools that we're using. Please reach out to me at don@testwrangler.io or open an issue on this repo if you run into any problems or have any feedback. I look forward to seeing you at the workshop! :fireworks:

1. Install all of the [Dependencies](#dependencies)
2. [Clone](https://help.github.com/en/articles/cloning-a-repository) the repo locally.
3. Complete the [Getting Started](#getting-started) section.

## Dependencies

Please make sure you have the following installed before beginning:

- Ruby 2.6.x. I highly recommend using [rbenv](2) to manage your Ruby versions.
- [git](https://git-scm.com/): 2.22.x (a different version of git should work fine, but try installing this version if you run into issues).

## Getting Started

1. Clone the repo.
2. Install the dependencies: `bundle`.
3. Setup the database: `bin/rails db:setup`.
4. Run the tests: `bin/rspec`. If you get a `Selenium::WebDriver::Error::UnknownError` when running your tests, you'll need to install the latest version of Geckodriver with Brew: `brew install geckodriver`. See [here](1) for more info.
5. Seed the database: `bin/rails db:seed`.
6. Start the app: `bin/rails s`.

# Prerequisites

This workshop is targeted at intermediate to advanced developers who are comfortable with Ruby and Rails. Beginners are of course totally welcome too! Please just be aware that you may not get as much out of this workshop if you’re not comfortable with Ruby and Rails.

With that out of the way, here are the resources that I recommend going through or at least being somewhat familiar with prior to the workshop:

- [Fundamentals of TDD](3). A free online video course from ThoughtBot that walks you through the fundamentals of TDD such as red, green, refactor.
- [RSpec](4). The Ruby testing framework we'll be using.
- [Factory Bot](5). A library that makes it easier to setup spec data.
- [Capybara](6). The tool that we'll be using to write our feature specs (specs that test the app like a user).

# Further Learning

- Martin Fowler's definition of a unit test: https://www.martinfowler.com/bliki/UnitTest.html
- Write tests. Not too many. Mostly integration: https://kentcdodds.com/blog/write-tests

[1]: https://stackoverflow.com/questions/53008773/seleniumwebdrivererrorunknownerror-newsession
[2]: https://github.com/rbenv/rbenv
[3]: https://thoughtbot.com/upcase/fundamentals-of-tdd
[4]: http://rspec.info/
[5]: https://github.com/thoughtbot/factory_bot
[6]: https://github.com/teamcapybara/capybara
