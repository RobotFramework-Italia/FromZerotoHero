***Settings***
Library         SeleniumLibrary     run_on_failure=Nothing    
Library         robojslib
Resource        keywords.resource
Documentation   Scenario: User searches for a python issue and goes back to homepage
***Variables***
${url}      https://stackoverflow.com/
${question}  RobotFramework
***Test Cases***
Opening a new browser and smoke testing stackoverflow homepage
#I prefissi GWT non vengono "eseguiti" da robotframework
    [Tags]   UserSearch
    Given I Open a new Chrome session to stackoverflow
    When I land on stackoverflow
    Then I see the logged-out homepage
Searching for a problem on the Searchbar
#ereditiamo una keyword che diventerà il nostro pre-requisito
    [Tags]   UserSearch
    Given I see the logged-out homepage
    When I input a problem in the search bar
    and I press "Enter" key
    Then I land on "Questions tagged with ${question}" page
Going back to homepage
#ereditiamo due keyword che diventeranno pre-requisito e expected result
    [Tags]   UserSearch
    Given I land on "Questions tagged with ${question}" page
    When I click "stackoverflow" logo
    Then I see the logged-out homepage

