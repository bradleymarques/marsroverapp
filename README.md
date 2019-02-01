# The Mars Rovers App


**Test on local machine**

* git clone https://github.com/Vutivi/marsroverapp.git

* cd marsroverapp

* bundle

* rspec

* ruby lib/app.rb test_data

**Design decisions**

I have used Object-oriented design because it allows me to apply the DRY
principle as I can reuse my code. I think it would also be
easier to make changes on the solution should there be a need.

**Testing decisions**

I used rspec for testing following the TDD approach. rspec is a free gem and
allows me to write tests faster. The TDD approach ensures that I can test every
unit of my code ensuring that the code I write after will always work the way I
expect it to. Moreover, I can confidently refactor my code since if it passes
the tests then it means my app will work as expected.
