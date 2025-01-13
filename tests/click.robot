*** Settings ***
Library           AppiumLibrary


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

    Wait Until Page Contains   Yoda    10    error=Could not find Yoda Text

    Click Element  locator=com.qaxperience.yodapp:id/mi_button_cta

    Wait Until Element Is Visible    locator=com.qaxperience.yodapp:id/toolbarTitle    timeout=10    error=Could not find Clique em Botões

    Close Application