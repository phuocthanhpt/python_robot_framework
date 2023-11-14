*** Settings ***
Library    AppiumLibrary


*** Variables ***
# Variables in Login page
${input_username}   //android.widget.EditText[@resource-id='chat21.android.demo:id/email']
${input_password}   //android.widget.EditText[@resource-id='chat21.android.demo:id/password']
${button_login}     //android.widget.Button[@resource-id='chat21.android.demo:id/login']
# Variables in Main page
${main_home_tab}    //android.widget.TextView[@text='HOME']
${main_home_select_contact}    //android.widget.Button[@resource-id="chat21.android.demo:id/direct_message"]
${main_profile_tab}    //android.widget.TextView[@text='PROFILE']
# Variables in Profile page
${profile_button_logout}       //android.widget.Button[@resource-id="chat21.android.demo:id/logout"]
# Variables on Android 10 up
${button_alert_continue}        //android.widget.Button[@resource-id="com.android.permissioncontroller:id/continue_button"]
${button_confirmPopup_OK}       //android.widget.Button[@resource-id="android:id/button1"]


*** Keywords ***
Open Chat21 application
    Open Application    http://127.0.0.1:4723/wd/hub   platformName=Android     deviceName=emulator-5554       app=F:/PythonAppium/Resources/Chat21_1.0.9_apkcombo.com.apk     appPackage=chat21.android.demo      appActivity=chat21.android.demo.SplashActivity       automationName=UiAutomator2
    ${alert}    run keyword and return status    page should contain element    ${button_alert_continue}
    run keyword if    '${alert}'=='True'  Bypass Android 10 Alerts

Bypass Android 10 Alerts
    wait until page contains element    ${button_alert_continue}    15
    click element    ${button_alert_continue}
    wait until page contains element    ${button_confirmpopup_ok}   15
    click element    ${button_confirmpopup_ok}

Login with valid user
    [Arguments]    ${email}      ${password}
    Input valid user email  ${email}
    Input valid user password   ${password}
    Click Login button
    Verify login is successful

Input valid user email
    [Arguments]    ${email}
    Verify login email field is displayed
    input text    ${input_username}     ${email}

Input valid user password
    [Arguments]    ${password}
    wait until page contains element    ${input_password}
    input text    ${input_password}     ${password}

Click Login button
    click element    ${button_login}

Verify login is successful
    Wait Until Page Contains Element    ${main_home_tab}    15

Logout Chat21 application
    Go to Profile tab
    Click Logout button
    Verify login email field is displayed

Go to Profile tab
    click element    ${main_profile_tab}
    wait until page contains element    ${profile_button_logout}

Click Logout button
    click element    ${profile_button_logout}

Verify login email field is displayed
    Wait Until Page Contains Element    ${input_username}   20