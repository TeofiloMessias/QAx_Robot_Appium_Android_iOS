*** Settings ***

Library    AppiumLibrary


*** Test Cases ***

Deve abrir a tela principal

    Open Application     https://localhost:4723

    ...    platformName=Android
    ...    deviceName=Android Emulator
    ...    automationName=UIAutomator2
    ...    app=${EXECDIR}/app/yodapp/yodapp-beta.apk"
    ...    udid=yodapp-5554
    ...    autoGrantPermissions=true
    
    Wait Until Page Contains     Yodapp
    Wait Until Page Contains    Mobile trainng
    Wait Until Page Contains     by Papipto

    Close All Applications