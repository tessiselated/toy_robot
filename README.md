# Toy Robot Challenge

## Synopsis

This project is an implementation of the Toy Robot challenge, and allows the user to interact with a toy robot through a command line interface. The Robot can be placed on tabletop which has a grid structure. It will move in the direction it is facing, turn left or turn right to face a different direction and won't accept a move or place command that would cause it to fall off the table. It will follow subsequent commands after any invalid commands.

## Environments

This application has been developed on `OSX 10.11.6`

## System Dependencies and Configuration

This was developed on `Ruby 2.3.1`
The test suite uses `RSpec 3.5.4`

## Installation

Clone this repository and `cd` to the root directory and run `bundle install`

To run the test suite run `rspec spec` from the command line.

To run the robot, run `ruby run_robot.rb` from the command line and follow the prompts

## Usage Instructions

To run the robot `cd` into the root directory, run `ruby run_robot.rb` from the command line and follow the prompts.

## Tests

To run the test suite `cd` into the root directory and run `rspec spec` from the command line.

## Discussion

This was made for a coding test.

I'm proud of the way that the classes were set out, and I think each class's purpose is clear and makes sense.

I'm still relatively new with using RSpec and Test Driven Development. I think some of the tests could be more intricate - but overall I'm happy with the test suite - and it did make the debugging process significantly easier when issues arose.
