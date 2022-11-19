*** Settings ***
Documentation    Steps

Library          AppiumLibrary

*** Keywords ***
## Features
Submit Login Form
    [Arguments]    ${email}    ${password}
    
    Input Text                           id=com.qaxperience.android.yodapp:id/etEmail         ${email}
    Input Text                           id=com.qaxperience.android.yodapp:id/etPassword      ${password}
    Click Element                        id=com.qaxperience.android.yodapp:id/btnSubmit

Mark CheckBox
    [Arguments]          ${option}  
    Click Element        xpath=//android.widget.CheckBox[contains(@text, "${option}")]

## Navigation
Get Started
    ${start_button}                      Set Variable        xpath=//android.widget.Button[contains(@text, "QAX")]

    Wait Until Element Is Visible        ${start_button}        
    Click Element                        ${start_button}

Open Navigation
    [Arguments]                          ${item}

    ${hamburguer}                        Set Variable        xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    
    Wait Until Element Is Visible        ${hamburguer}        
    Click Element                        ${hamburguer}
    Wait Until Page Contains             text=${item}     

Tap Item Navigation
    [Arguments]                          ${item}

    Click Element                        xpath=//android.widget.TextView[contains(@text, "${item}")]
    Wait Until Element Is Visible        id=com.qaxperience.android.yodapp:id/toolbarTitle    

Select Screen Option
    [Arguments]                          ${item}        ${checkpoint}

    Click Text                           ${item}
    Wait Until Page Contains             text=${checkpoint}

Open Lateral Menu Item
    [Arguments]            ${item}

    Get Started
    Open Navigation        ${item}
    Tap Item Navigation    ${item}
