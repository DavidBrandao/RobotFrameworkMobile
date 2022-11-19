*** Settings ***
Documentation        Hello Yodapp

Library    AppiumLibrary

*** Test Cases ***
Deve abrir o app com sucesso
    Open Application    http://localhost:4723/wd/hub    alias=yodapp
    ...                 automationName=UIAutomator2
    ...                 platformName=Android
    ...                 deviceName=Pixel 3
    ...                 app=${EXECDIR}/app/yodapp.apk
    ...                 udid=emulator-5554
    ...                 appPackage=com.qaxperience.android.yodapp
    ...                 autoGrantPermissions=true 

    ${start_button}                      Set Variable        xpath=//android.widget.Button[contains(@text, "QAX")]

    Wait Until Element Is Visible        ${start_button}        10
    Click Element                        ${start_button}
    
    Sleep                                2
       