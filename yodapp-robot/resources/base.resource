*** Settings ***
Documentation                Tudo começa aqui

Library                      AppiumLibrary

Resource                     steps.resource

*** Keywords ***
Open Session
    Set Appium Timeout    30
    Open Application      http://localhost:4723/wd/hub    alias=yodapp
    ...                   automationName=UIAutomator2
    ...                   platformName=Android
    ...                   deviceName=Pixel 3
    ...                   app=${EXECDIR}/app/yodapp.apk
    ...                   udid=emulator-5554
    ...                   appPackage=com.qaxperience.android.yodapp
    ...                   autoGrantPermissions=true 

Finish Session
    Capture Page Screenshot
    Close Application

Open Page 
    [Arguments]    ${page}
    Open Session
    Open Lateral Menu Item        ${page}
    