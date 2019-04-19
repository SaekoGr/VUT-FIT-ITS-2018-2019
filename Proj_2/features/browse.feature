Feature: Browse
    Background: the shops sells MacBook

    Scenario Outline: Add item to Wish List
        Given user is looking at <page>
        And user is logged in
        When user clicks on "Add to Wish List" button <where>
        Then MacBook is added to the Wish list

        Examples:
            | page | where |
            | the online shop page | next to MacBook |
            | MacBook product page | |

    Scenario: Show subcategories list
        Given user is looking at the online shop page
        When user clicks on "Components" button
        Then list of products is shown:
            | product |
            | Mice and Trackballs (0)|
            | Monitors (2)|
            | Printers (0)|
            | Scanners (0)|
            | Web Cameras (0)|

    Scenario: Show products list
        Given user is looking at the online shop page
        When user clicks on "Phones & PDAs"
        Then products are displayed:
            | HTC Touch HD |
            | iPhone |
            | Palm Treo Pro |

    Scenario: Show empty category
        Given user is looking at the online shop page
        When user clicks on "Software" button
        Then "There are no products to list in this category" is displayed