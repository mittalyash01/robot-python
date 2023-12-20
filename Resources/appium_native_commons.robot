*** Settings ***
Library     AppiumLibrary

Test Teardown   Close Application

*** Variables ***
${ANDROID_AUTOMATION_NAME}=     UIAutomator2
${ANDROID_PLATFORM_NAME}=     Android
${ANDROID_PLATFORM_VERSION}=     11
${ANDROID_APP_PACKAGE}=     com.android.dialer
${ANDROID_APP_ACTIVITY}=     .BBKTwelveKeyDialer

*** Keywords ***
Launch App
    open Application    http://127.0.0.1:4723/wd/hub    automationName=${ANDROID_AUTOMATION_NAME}    platformName=${ANDROID_PLATFORM_NAME}
    ...  platformVersion=${ANDROID_PLATFORM_VERSION}     appPackage=${ANDROID_APP_PACKAGE}  appActivity=${ANDROID_APP_ACTIVITY}

