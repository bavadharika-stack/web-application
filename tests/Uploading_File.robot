*** Settings ***
Documentation     To validate the login form
Library           SeleniumLibrary
Test Teardown     Close Browser
Resource         resources.robot
*** Test Cases ***
Validate UnSuccessful Login
    Open The Browser With The Mortgage Payment URL
    Fill The Login Form

*** Keywords ***
Open The Browser With The Mortgage Payment URL
    Open Browser    ${LOGIN_URL}    chrome
    Maximize Browser Window

Fill The Login Form
    #login page
    Wait Until Element Is Visible    ${USERNAME_AT}
    Input Text       ${USERNAME_AT}    ${USERNAME}
    Sleep            1s
    Click Element    ${ENTER_USERNAME_SUBMIT_AT}
    Sleep            1s
    Input Text       ${ENTER_PASSWORD_AT}         ${PASSWORD}
    Sleep            1s
    Click Button     ${SUBMIT_FOR_SUCCESSFUL_LOGIN}
    Sleep    2s
    #home page-los
    Wait Until Element Is Visible      ${CHECK_HOME_PAGE}
    Click Element    ${CHECK_HOME_PAGE}
    Sleep            5s
    #dashboard page
    Click Button     ${CLICK_MENU}   #menu
    Sleep    2s
    Click Element    ${CLICK_LENDING}
    Sleep    2s  #lending
    Click Element    ${CLICK_LOAN_REQUEST}
    Sleep    2s   #loan request
    Click Element     ${DISBURSED}
    Sleep    2s
    Click Element    ${IMPORT}
    Sleep    2s
    Click Element    ${BROWSE}
    Sleep    2s
    Input Text          ${FILE}
    Press Keys       ${FILE}    ENTER
    # Optionally click the upload button
    ${FILE_PATH}=    Set Variable    C:/Users/bavad/Downloads/LOAN_DISBURSAL_IMPORT.xlsx
    Choose File    ${BROWSE}    ${FILE_PATH}   # <-- Must be <input type="file">
    Sleep    10s