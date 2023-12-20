*** Settings ***
Resource        ../Resources/appium_native_commons.robot
Test Teardown   Close Application


*** Test Cases ***
Swipe Test
    Open Native App
    Sleep    2s
    Click Element    android:id/button1
    Click Element    //android.widget.LinearLayout[1]/android.widget.TextView[1]
    #[Documentation] Swipe up
    Swipe    514    680    514    200   1000