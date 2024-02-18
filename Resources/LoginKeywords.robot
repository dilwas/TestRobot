*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Click Sign In
    Click Element    ${btn_signIn}

Enter Email Address
    [Arguments]     ${emailAddress}
    Input Text    ${txt_loginEmailAddress}    ${emailAddress}

Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_loginPassword}    ${password}

Cilck Login      
    Click Button    ${btn_login}

Verify Succesfull Login
    Title Should Be    Profile
    
Login
    [Arguments]    ${SiteUrl}    ${Browser}    ${email}    ${pwd}
    Open my Browser    ${SiteUrl}    ${Browser}
    Click Sign In
    Enter Email Address    ${email}
    Enter Password    ${pwd}
    Cilck Login
