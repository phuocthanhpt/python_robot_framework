*** Settings ***
Library    OperatingSystem


*** Variables ***
&{LoginCredential}  username=abc    password=pwd@124
@{List_Params}      param1  param2

*** Keywords ***
Log My Username
    Log    ${LoginCredential}[username]

Login with Username and Password
    [Arguments]    ${username}  ${password}
    Log    ${username}
    Log    ${password}

*** Test Cases ***
TEST2
    [Tags]    demo2
#    Log    ${List_Params}[0]
#    Log    ${List_Params}[1]
#    Log My Username
#    Log    ${LoginCredential}[password]
    Login With Username And Password    ${LoginCredential}[username]    ${LoginCredential}[password]
