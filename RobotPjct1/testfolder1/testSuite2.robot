*** Settings ***

Library    SeleniumLibrary   

Suite Setup    Log     I am in test suite set up

Suite Teardown    Log     I am in teardown 

Test Setup    Log       I am inside test case set up 

Test Teardown    Log      I am inside test case teardown 
     
Default Tags    Sanity

*** Test Cases ***

MyFirstTest
    [Tags]    Regression
    Log    HelloWorld....    
    

FirstSeleniumTest
    Open Browser    https://www.google.com     chrome    
    Set Browser Implicit Wait    5
    Input Text    name=q        robotframework    
    Sleep    5    
    Click Button    name=btnK    
    Log    Test completed    
    Close Browser


MyLoginTest

    [Documentation]      This is a sample login test
    
    Open Browser  ${URL}      chrome
    Set Browser Implicit Wait    5
    LoginKeywords  
    Click Element    id=welcome    
    Click Element    link=Logout    
    Log    The test is completed     
    Close Browser      
        
*** Variables ***

${URL}     https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin     admin123
&{LOGIN DATA}    username=Admin     password=admin123


*** Keywords ***

LoginKeywords
    Input Text    name=txtUsername    @{CREDENTIALS}[0]    
    Input Text    name=txtPassword    &{LOGIN DATA}[password]    
    Click Button    name=Submit 
    
