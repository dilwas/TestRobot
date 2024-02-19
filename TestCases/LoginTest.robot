*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}            chrome
${SiteUrl}            http://localhost:5000/
${email}            dilhaniwas+1@gmail.com
${pwd}            123456

*** Test Cases *** 
LoginTest
    Login    ${SiteUrl}    ${Browser}    ${email}    ${pwd}
    Sleep    2 seconds
    Verify Succesfull Login
    Close All Browsers
