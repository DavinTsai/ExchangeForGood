Action: Provider_ Create webpage of product

Feature: Given I am on the Exchange For Good home page
        When I follow “Upload Products”
        Then I should be on the Exchange For Good_New page
        When I fill in title with “Product name”
        And I select “clothes” from “Category”
        And I select “New” from “Product Condition”
        And I upload pictures
        And I fill in description about product
        And I press “Submit”
        Then I should see the product on the Exchange For Good home page

