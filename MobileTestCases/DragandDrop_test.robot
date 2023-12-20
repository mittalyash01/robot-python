*** Settings ***
Resource        ../Resources/appium_native_commons.robot
Library        .//Built_In_Custom/customLib.py
Test Teardown   Close Application
Library    Browser

*** Test Cases ***
Drag and Drop Test
    Open Native App
    Sleep    2s
    Click Element    android:id/button1
    Click Element    //android.widget.LinearLayout[1]/android.widget.TextView[1]
    drag drop    //android.view.ViewGroup[1]/android.widget.LinearLayout/android.widget.ImageView    //android.view.ViewGroup[4]/android.widget.LinearLayout/android.widget.ImageView
