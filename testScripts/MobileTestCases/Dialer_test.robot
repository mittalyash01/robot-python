*** Settings ***
Resource    ../../Resources/appium_native_commons.resource

Test Teardown   Close Application

*** Test Cases ***
Dialer Test
    Open Native App
    Click Element    //android.widget.ImageView[@content-desc="1"]
    Click Element    com.android.dialer:id/two
    Click Element    //android.widget.ImageView[@content-desc="3"]
    Click Element    com.android.dialer:id/six
    Click Element    com.android.dialer:id/dialButton
    Sleep   2s
