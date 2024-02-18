*** Settings ***
Library    SeleniumLibrary
Library    Collections
Variables    ../PageObjects/Locators.py


*** Keywords ***
Click Language Tab
    Click link    ${tab_language}

Click Delete Button
    Click element    ${btn_delete}

Click AddNew Button
    Click Element    ${btn_addNew}

Enter Language
    [Arguments]    ${language}
    Input Text    ${txt_addLanguage}    ${language}

Select Language Level
    [Arguments]    ${languageLevel}
    Select From List By Label    ${ddn_languageLevel}    ${languageLevel}

Click Add Button
    Click Button    ${btn_add}

Verify PopUp Message
    [Arguments]    ${message}
    Element Should Contain    ${msg_popup}    ${message}

Verify New Language
    [Arguments]    ${language}
    Page Should Contain    ${language}

Verify New Language Level
    [Arguments]    ${languageLevel}
    Page Should Contain    ${languageLevel}

Add New Language
    [Arguments]    ${language}    ${languageLevel}    
    Click Language Tab
    Click AddNew Button
    Enter Language    ${language}
    Select Language Level    ${languageLevel}
    Click Add Button

Clear All Languages
    Click Language Tab
    ${AllLanguagesCount}=    Get Element Count    xpath://div[@data-tab='first']/div/div[2]/div/table[@class='ui fixed table']/tbody
    #Log    ${AllLanguagesCount}
    FOR    ${i}    IN RANGE    0    ${AllLanguagesCount}
        Log    ${i} 
        Click Delete Button
        Sleep    1 seconds
    END
