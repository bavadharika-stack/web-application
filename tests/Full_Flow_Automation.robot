*** Settings ***
Documentation     To validate the login form
Library           SeleniumLibrary
Test Teardown     Close Browser
Resource          resources.robot
*** Variables ***
${status_type}    Approved     # Change to Rejected if needed
${action_type}    Hold         # Change to None or Sendback if needed

*** Test Cases ***
Dynamic Customer Validation Test
    Open The Browser With The Mortgage Payment URL
    Fill The Login Form
    Process Application Based On Status    ${status_type}    ${action_type}

*** Keywords ***
Open The Browser With The Mortgage Payment URL
    Open Browser    ${LOGIN_URL}    chrome
    Maximize Browser Window
    Set Selenium Speed    0.3s

Fill The Login Form
    Wait Until Element Is Visible    ${USERNAME_AT}
    Input Text       ${USERNAME_AT}    ${USERNAME}
    Sleep            1s
    Click Element    ${ENTER_USERNAME_SUBMIT_AT}
    Sleep            1s
    Input Text       ${ENTER_PASSWORD_AT}    ${PASSWORD}
    Sleep            1s
    Click Button     ${SUBMIT_FOR_SUCCESSFUL_LOGIN}
    Wait Until Element Is Visible    ${CHECK_HOME_PAGE}
    Click Element    ${CHECK_HOME_PAGE}
    Sleep    3s
    Click Button     ${CLICK_MENU}
    Sleep    2s
    Click Element    ${CLICK_LENDING}
    Sleep    2s
    Click Element    ${CLICK_CUSTOMER_REGISTRATION}
    Sleep    2s
    Click Element    ${CLICK_NON_APPROVAL}
    Sleep    5s
    Click Element    ${CLICK_MINUS_BUTTON}
    Sleep    2s
    Click Element    ${CLICK_PLUS_BUTTON}
    Sleep    2s
    Click Element    ${SELECT_FIELD}
    Sleep    2s
    Click Element    ${CLICK_CREATED_DATE}
    Sleep    2s
    Click Element    ${CLICK_ON_OPERATION}
    Sleep    2s
    Click Element    ${CLICK_ON_BETWEEN}
    Sleep    2s
    Click Element    ${ENTER_START_DATE}
    Input Text      ${ENTER_START_DATE}   ${S_DATE}
    Sleep    2s
    Press Keys       ${ENTER_START_DATE}    ENTER
    Press Keys       ${ENTER_END_DATE}      ENTER
    Input Text      ${ENTER_END_DATE}     ${E_DATE}
    Click Button     ${APPLY_BUTTON}
    Sleep    5s

Process Application Based On Status
    [Arguments]    ${status_type}    ${action_type}
    Click Element    ${CLICK_FRN_LINK}
    Wait Until Element Is Visible    ${CLICK_EDIT}
    Click Element    ${CLICK_EDIT}
    Sleep    2s
    Fill Personal Details

    Scroll Element Into View    ${STATUS}
    Click Element    ${STATUS}
    Sleep    1s
    Run Keyword If    '${status_type}' == 'Approved'    Click Element    ${APPROVAL}
    ...    ELSE IF    '${status_type}' == 'Rejected'    Click Element    ${REJECTED}
    Sleep    2s

    Run Keyword If    '${action_type}' == 'Hold'       Get HOLD
    ...    ELSE IF    '${action_type}' == 'Sendback'   Get SENDBACK
    Sleep    1s

    Scroll Element Into View    ${SUBMIT}
    Click Element    ${SUBMIT}
    Wait Until Element Is Visible    ${OKAYY}    10s
    Click Button    ${OKAYY}
    Sleep    3s

Fill Personal Details
    Input Text    ${AADHAR_NAME}    ${NAME}
    Click Element    ${RELIGION_FIELD}
    Click Element    ${RELIGION}
    Click Element    ${AADHAR}
    Repeat Keyword    13 times    Press Keys    ${AADHAR}    BACKSPACE
    Input Text       ${AADHAR}    254523658745
    Click Element    ${GENDER_FIELD}
    Click Element    ${GENDER}
    Input Text       ${FATHER_NAME_FIELD}    ${F_NAME}
    Input Text       ${MOTHER_NAME_FIELD}    ${M_NAME}
    Click Element    ${FOSTYPE_FIELD}
    Click Element    ${FOS_TYPE}
    Repeat Keyword    18 times    Press Keys     ${BANK_ACC_NO}    BACKSPACE
    Input Text       ${BANK_ACC_NO}      606060068680680980
    Repeat Keyword    11 times    Press Keys     ${IFSC_CODE}       BACKSPACE
    Input Text       ${IFSC_CODE}        sbin0123456

Get HOLD
    Click Element     ${BACKEND_FIELD}
    Sleep             1s
    Click Element     ${SELECT_HOLD}
    Input Text        ${REMARKS_FIELD}    ${REMARKS}

Get SENDBACK
    Click Element     ${BACKEND_FIELD}
    Sleep             1s
    Click Element     ${SELECT_SEND_BACK}
    Input Text        ${REMARKS_FIELD}    ${REMARKS}
