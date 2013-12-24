Action:  Provider_ Receive and check information of user B
Feature:  Given I am on the My Account page
         And I should see the list of message from Users
         And I press the message from User B
         Then I should see the information of User B
         When I press “Check”
         Then I should be on the My Account page

