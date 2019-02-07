# Steps to create dice game using TDD

## Step 1

### Red
/t I initialized rspec and created a file dice_spec.rb in the spec folder to run my test. In dice_spec.rb I wrote a describe block for the class Dice and required dice.rb. The test failed as dice.rb does not exist. I create the file dice.rb in a new lib folder. I run the test again and it still fails. This time is because there is an uninitialized contsant as I have not made the class Dice in dice.rb.

### Green
/t I run rspec again. It passes.

### Refactor
/t My code is as clear and simple as possible

## Step 2

### Red
/t I read the user story table and see that I need to be able to roll a dice. I create a
test to check if a dice object responds to the method roll. It fails.

### Green
/t I write a method for roll for Dice. It passes

### Refactor
/t I could refactor my test to be on one line. However, I think it is clearer having it in the longer format and so keep it that way.

## Step 3

## Red
/t I go back to the user stories. Rolling a dice should return a number between 1 and 6. So I write a test for rolling a die returing between a 1 and a 6.
## Green
/t I write as little code as possible to pass the test. So I just write a 2 in the roll. It passes
## Refactor
/t I now have written dice.new twice in my test file. I should write it before all the test but have a new one each time so that it does not effect the next test. I do this. I run rspec to check that the test still pass.

## Step 4

## Red
/t I check the user story. The dice roll needs to have a random output. I write a test that checks that their is a least one different result by 10 rolls. There is a 1 in 6^^10 chance of this not happening. I am okay with such a low false positive rate. It fails
## Green
I use 1 + rand(5) to return a random number between 1 and 6
## Refactor
My code is succinct and clear

## Step 5

## Red
/t I check the user story
## Green

## Refactor

## Step 6
## Red

## Green

## Refactor
