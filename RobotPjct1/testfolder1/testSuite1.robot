*** Settings ***
Library    SeleniumLibrary            




*** Test Cases ***

MyFirstTest
    Log    HelloWorld.... 
    

MySecondTest
    Log    HelloWorld2....    



MyThirdTest
    Log    HelloWorld3....    
   

MyFirstTest
    Log    HelloWorld....    

    

FirstSeleniumTest
    Open Browser    https://www.google.com     chrome    
    Set Browser Implicit Wait    5
    Input Text    name=q    robotframework    
    Sleep    5    
    Click Button    name=btnK    
    Log    Test completed    
    Close Browser
