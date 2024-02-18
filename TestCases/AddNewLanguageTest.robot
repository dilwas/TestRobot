*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/LanguageKeywords.robot

*** Variables ***
${Browser}            chrome
${SiteUrl}            http://localhost:5000/
${email}            dilhaniwas+1@gmail.com
${pwd}            123456

${language}    English
${languageLevel}    Basic
${message}    has been added to your languages


*** Test Cases *** 
Clear All Records
    Login    ${SiteUrl}    ${Browser}    ${email}    ${pwd}
    Sleep    3 seconds
    Clear All Languages
    Close All Browsers

Add New Language Test
    Login    ${SiteUrl}    ${Browser}    ${email}    ${pwd}
    Sleep    3 seconds
    Add New Language    ${language}    ${languageLevel}
    Sleep    3 seconds
    Verify PopUp Message    ${message}
    Verify New Language    ${language}
    Verify New Language Level    ${languageLevel}
    Close All Browsers
