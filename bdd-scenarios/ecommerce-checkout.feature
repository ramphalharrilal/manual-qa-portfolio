@checkout @regression
Feature: Reliable ecommerce checkout
  As a shopper
  I want checkout to validate my order and payment details
  So that I can complete a purchase without incorrect charges or missing information

  Background:
    Given the storefront is available
    And the shopper has an in-stock item in the cart
    And the shopper is on the checkout page

  @smoke @positive
  Scenario: Complete checkout with valid customer and payment details
    When the shopper enters valid contact and delivery information
    And the shopper enters valid payment details
    And the shopper submits the order
    Then the order should be created once
    And a unique order confirmation number should be displayed
    And the cart should be empty
    And a confirmation message should be sent to the shopper

  @negative @validation
  Scenario Outline: Block checkout when a required field is invalid
    When the shopper enters "<input>" in the "<field>" field
    And the shopper completes all other required fields with valid data
    And the shopper submits the order
    Then the order should not be created
    And the "<field>" field should show "<message>"
    And the shopper's entered information should remain available for correction

    Examples:
      | field       | input                | message                          |
      | Email       | invalid-email        | Enter a valid email address      |
      | Postal code |                     | Postal code is required          |
      | Card number | 4111111111111112     | Enter a valid card number        |
      | Expiry date | 01/20                | Enter a valid expiration date    |

  @boundary @cart
  Scenario: Prevent purchase when stock changes during checkout
    Given only one unit of the cart item remains
    And another shopper purchases that unit
    When the shopper submits the order
    Then the order should not be created
    And the shopper should not be charged
    And the unavailable item should be identified
    And the shopper should be given a clear way to update the cart

  @resilience @payment
  Scenario: Recover safely from an interrupted payment response
    Given the payment provider does not return a response before the timeout
    When the shopper submits the order
    Then the interface should not allow repeated submissions
    And the shopper should see a clear processing or retry message
    And no duplicate order should be created
    And no duplicate payment should be recorded
