*** Settings ***
Library           AppiumLibrary


*** Test Cases ***
Sample Test
    Open Application	
    ...	    http://localhost:4723
    ...	    appium:platformName=Android
    ...	    appium:automationName=UiAutomator2	
    ...	    deviceName='emulator-5554'	
    ...	    appium:app=${EXECDIR}/app/yodapp.apk
    ...		appium:autoGrantPermissions=${True}
    ...	    appium:udid=emulator-5554

    Wait Until Page Contains   Yoda    10    error=Could not find Yoda Text
    Wait Until Page Contains   Mobile Training    10   error=Could not find Mobile Training Text

    Close Application