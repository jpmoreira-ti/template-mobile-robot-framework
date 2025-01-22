*** Settings ***
Library    AppiumLibrary 
Resource   env.resource

*** Keywords ***
Start Session
    Run Keyword If  '${PLATFORM}' == 'android'   
    ...     Open Application	
    ...	    http://localhost:4723
    ...	    appium:platformName=Android
    ...	    appium:automationName=UiAutomator2	
    ...	    deviceName='emulator-5554'	
    ...	    appium:app=${EXECDIR}/app/yodapp.apk
    ...		appium:autoGrantPermissions=${True}
    ...	    appium:udid=emulator-5554
    ...	    packageName=com.qaxperience.yodapp
    
    Run Keyword If  '${PLATFORM}' == 'ios'   
    ...     Open Application	
    ...	    http://localhost:4723
    ...	    appium:platformName=Android
    ...	    appium:automationName=UiAutomator2	
    ...	    deviceName='emulator-5554'	
    ...	    appium:app=${EXECDIR}/app/yodapp.apk
    ...		appium:autoGrantPermissions=${True}
    ...	    appium:udid=emulator-5554
    ...	    packageName=com.qaxperience.yodapp

Close Session
    Close Application

    
