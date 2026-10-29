#Approve_customer_reg_NONE.robot
*** Settings ***
Documentation     To validate the login form
Library           SeleniumLibrary
Test Teardown     Close Browser
Resource          resources.robot
*** Test Cases ***
Validate Successful Login
    Open The Browser With The Mortgage Payment URL
    Fill The Login Form
    Get Rejected And None

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
    #home page-los
    Wait Until Element Is Visible      ${CHECK_HOME_PAGE}
    Click Element    ${CHECK_HOME_PAGE}
    Sleep            3s
    #dashboard page
    Click Button     ${CLICK_MENU}   #menu
    Sleep    2s
    Click Element    ${CLICK_LENDING}
    Sleep    2s  #lending
    Click Element    ${CLICK_CUSTOMER_REGISTRATION}
    Sleep    2s   #customer registration
    Click Element     ${CLICK_NON_APPROVAL}      #non approval
    Sleep  5s
    Click Element       ${CLICK_MINUS_BUTTON}    #clear(click on minus button)
    Sleep  2s
    Click Element       ${CLICK_PLUS_BUTTON}      #add button click on that to add new items
    Sleep  2s
    Click Element       ${SELECT_FIELD}           #select field 1st one
    Sleep    2s
    Click Element      ${CLICK_CREATED_DATE}      # select created date
    Sleep  2s
    Click Element        ${CLICK_ON_OPERATION}    #click on equals/between/greater/lesser button
    Sleep    2s
    Click Element         ${CLICK_ON_BETWEEN}      #enter between
    Sleep  2s
    Click Element     ${ENTER_START_DATE}                   #add date
    Input Text      ${ENTER_START_DATE}   ${S_DATE}        #enter date
    Sleep    2s
    Press Keys       ${ENTER_START_DATE}     ENTER               #press enter and confirm the starting date
    Press Keys       ${ENTER_END_DATE}          ENTER               #click on end date button
    Input Text      ${ENTER_END_DATE}     ${R_DATE}             #add end date value
    Click Button     ${APPLY_BUTTON}                                  #click submit and get details
    Sleep    5s

Get Rejected and None
    Click Element     ${CLICK_FRN_LINK}
    Sleep             2s
    Click Element     ${CLICK_EDIT}
    Sleep             3s
    Click Element              ${AADHAR}
    Press Keys                 ${AADHAR}    BACKSPACE
    Press Keys                 ${AADHAR}    BACKSPACE
    Press Keys                 ${AADHAR}    BACKSPACE
    Press Keys                 ${AADHAR}    BACKSPACE
    Press Keys                 ${AADHAR}    BACKSPACE
    Press Keys                 ${AADHAR}    BACKSPACE
    Press Keys                 ${AADHAR}    BACKSPACE
    Press Keys                 ${AADHAR}    BACKSPACE
    Press Keys                 ${AADHAR}    BACKSPACE
    Press Keys                 ${AADHAR}    BACKSPACE
    Press Keys                 ${AADHAR}    BACKSPACE
    Press Keys                 ${AADHAR}    BACKSPACE
    Press Keys                 ${AADHAR}    BACKSPACE
    Sleep  5s
    Input Text                 ${AADHAR}          254523658745
    Scroll Element Into View   ${SUBMIT}
    Sleep             2s
    Click Element     ${STATUS}
    Sleep             3s
    Click Element     ${REJECTED}
    Sleep             2s
    Click Element     ${SUBMIT}
    Sleep    2s
    Click Button      ${OKAYY}
    Sleep             10s

