*** Settings ***
Library           AppiumLibrary


*** Variables ***
${QAX_BTN_ID}    com.qaxperience.yodapp:id/mi_button_cta
${QAX_TEXT}    com.qaxperience.yodapp:id/toolbarTitle

*** Test Cases ***
Click Test
    Open Application	
    ...	    http://localhost:4723
    ...	    appium:platformName=Android
    ...	    appium:automationName=UiAutomator2	
    ...	    deviceName='emulator-5554'	
    ...	    appium:app=${EXECDIR}/app/yodapp.apk
    ...		appium:autoGrantPermissions=${True}
    ...	    appium:udid=emulator-5554

    Wait Until Page Contains   text=${QAX_BTN_ID}    timeout=10    error=Could not find Yoda Text
    Click Element  locator=${QAX_BTN_ID}

    Wait Until Element Is Visible    locator=${QAX_TEXT}     timeout=10    error=Could not find Clique em Botões

    Close Application