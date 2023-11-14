*** Settings ***
Library    AppiumLibrary
Resource    ../Resources/Users_info.robot
Resource    ../Resources/Login_keywords.robot


*** Test Cases ***
Open_Application
#    Open Application    http://127.0.0.1:4723/wd/hub   platformName=Android     deviceName=J7TKMRMZPFKVW8OR       app=F:/PythonAppium/Resources/Chat21_1.0.9_apkcombo.com.apk     appPackage=chat21.android.demo      appActivity=chat21.android.demo.SplashActivity       automationName=UiAutomator2
#    Open Application    http://127.0.0.1:4723/wd/hub   platformName=Android     deviceName=emulator-5554       app=F:/PythonAppium/Resources/Chat21_1.0.9_apkcombo.com.apk     appPackage=chat21.android.demo      appActivity=chat21.android.demo.SplashActivity       automationName=UiAutomator2
#    Wait Until Page Contains Element    ${input_username}
#    Wait Until Page Contains Element    ${input_password}
#    Wait Until Page Contains Element    ${button_login}
#    Input Text    ${input_username}     ${user_info}[email]
#    Input Text    ${input_password}     ${user_info}[password]
#    Click Element    ${button_login}
#    Wait Until Page Contains Element    ${main_home_tab}    15
#    Wait Until Page Contains Element    ${main_home_select_contact}    15
#    Click Element    ${main_profile_tab}
#    Wait Until Page Contains Element    ${profile_button_logout}
#    Click Element    ${profile_button_logout}
#    Wait Until Page Contains Element    ${input_username}


    Open Chat 21 application on device 1
    Login with valid user   ${user1_info}[email]    ${user1_info}[password]
    Open Chat 21 application on device 2
    Login with valid user   ${user2_info}[email]    ${user2_info}[password]

