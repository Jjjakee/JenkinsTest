*** Settings ***
Library  Selenium2Library
Suite Setup  Open Browser  ${HOMEPAGE}  ${BROWSER}
Test Setup  Go To  ${HOMEPAGE}
Suite Teardown  Close All Browsers
Documentation  Testing some search results for thirst with chrome-browser



*** Variables ***
${HOMEPAGE}  http://google.com
${BROWSER}  chrome



*** Test Cases ***
Google "thirst" and try to find website from the results
    [Documentation]  Googling thirst and analyzing the results
    [Tags]  thirst  smoke
    Google and check results    thirst   thirst.launchaco.com

Google "thirst wallet" and try to find website from the results
    [Documentation]  Googling thirst and analyzing the results
    [Tags]  thirst  smoke
    Google and check results    thirst wallet  thirst.launchaco.com

Google "minimalist wallet" and try to find website from the results
    [Documentation]  Googling thirst and analyzing the results
    [Tags]  thirst  smoke
    Google and check results    minimalist wallet  thirst.launchaco.com

Google "thirst launchaco" and try to find it from the results
    [Documentation]  Googling thirst and analyzing the results
    [Tags]  thirst  smoke
    Google and check results    thirst launchaco  thirst.launchaco.com

    

*** Keywords ***
Google and check results 
    [Arguments]  ${searchkey}  ${result}
    Input Text  //input[@class='gLFyf gsfi']  ${searchkey}
    Click button   //div[@class='FPdoLc tfB0Bf']/center[1]/input[@class='gNO89b' and 1]    
    Page Should Contain  ${result}  10
    
