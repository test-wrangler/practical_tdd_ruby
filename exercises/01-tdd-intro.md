# TDD Intro

Let's get our feet wet with TDD and the red, green, refactor loop. To do this, we'll use TDD to build a new Taco class that tells us it's name.

## Concepts

1. Working backwards.
2. Wishful Programming.
3. Make it right, make it work, make it fast. ~ Kent Beck

## Steps

1. Open up the `spec/tdd_intro_spec.rb` file.
2. Start your specs in watch mode and verify that you have a single test that's passing.
3. Start with an assertion that specifies that the taco will tell us it's name. When writing this assertion, write it in a wishful style. What this means is that you'll just focus on writing a single line of code in the way that you _wish_ it to be implemented. Don't worry about the implementation as part of this step - we'll take care of that in the next step. Once you write this line of code, save the file, watch it fail, and make sure that the error is what you expect.
4. Implement only the code you need to fix the error that you encountered and save the file. When your tests run again, you should now see a new error.
5. Fix this error the same way that you fixed the previous error and continue repeating this process until the spec passes. Once you get to the point where you implement your function, return a static value at first just to get the spec to pass. After that, convert the value to be dynamic. Once the spec passes, you're done. Congratluations! You just used TDD to create a class. 💯
