*** Settings ***
Library    AppiumLibrary


*** Variables ***
${input_username}   //android.widget.EditText[@resource-id='chat21.android.demo:id/email']
${input_password}   //android.widget.EditText[@resource-id='chat21.android.demo:id/password']
${button_login}     //android.widget.Button[@resource-id='chat21.android.demo:id/login']
&{user_info}        email=chat21test1@gmail.com     password=Welcome@123

# Main page
${main_home_tab}    //android.widget.TextView[@text='HOME']
${main_home_select_contact}    //android.widget.Button[@resource-id="chat21.android.demo:id/direct_message"]
${main_profile_tab}    //android.widget.TextView[@text='PROFILE']
${profile_button_logout}       //android.widget.Button[@resource-id="chat21.android.demo:id/logout"]

*** Test Cases ***
Open_Application
#    Open Application    http://127.0.0.1:4723/wd/hub   platformName=Android     deviceName=J7TKMRMZPFKVW8OR       app=F:/PythonAppium/Resources/Chat21_1.0.9_apkcombo.com.apk     appPackage=chat21.android.demo      appActivity=chat21.android.demo.SplashActivity       automationName=UiAutomator2
    Open Application    http://127.0.0.1:4723/wd/hub   platformName=Android     deviceName=emulator-5554       app=F:/PythonAppium/Resources/Chat21_1.0.9_apkcombo.com.apk     appPackage=chat21.android.demo      appActivity=chat21.android.demo.SplashActivity       automationName=UiAutomator2

