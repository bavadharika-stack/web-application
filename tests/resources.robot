*** Settings ***
Documentation       A resource file with reusable keywords and variables.
...
...                 The system specific keywords created here from our own
...                 domain specific language. They utilize keywords provided
...                 by the imported SeleniumLibrary.
Library             SeleniumLibrary

*** Variables ***
${LOGIN_URL}                        https://smartmoopay-uat.smartmoo.com/smartmoopay-loans/users/list
${USERNAME_AT}                      css:input[name='userName']
${USERNAME}                         stpl.charan.hr
${ENTER_USERNAME_SUBMIT_AT}         css:.MuiButton-label
${ENTER_PASSWORD_AT}                id:password
${PASSWORD}                         Stpl@2026
${SUBMIT_FOR_SUCCESSFUL_LOGIN}      id:kc-login
${SUCCESSFUL_MESSAGE_LOCATOR}       css:.jss135 h1
${CHECK_HOME_PAGE}                  (//div[@class='col-md-3 col-xs-3'])[1]
${CLICK_MENU}                       css:button[aria-label='open drawer']
${CLICK_LENDING}                    css:body > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > ul:nth-child(1) > div:nth-child(1) > div:nth-child(3)
${CLICK_CUSTOMER_REGISTRATION}      css:body > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > ul:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > svg:nth-child(1)
${CLICK_NON_APPROVAL}               xpath=(//*[name()='svg'][@class='MuiSvgIcon-root'])[4]
${CLICK_MINUS_BUTTON}               css:.fa.fa-minus-circle
${CLICK_PLUS_BUTTON}                css:.fa.fa-plus-circle
${SELECT_FIELD}                     xpath=(//div[@id='mui-component-select-name'])[1]
${CLICK_CREATED_DATE}               css:div[id='menu-name'] li:nth-child(2)
${CLICK_ON_OPERATION}               xpath=(//div[@id='mui-component-select-filterDataType'])[1]
${CLICK_ON_BETWEEN}                 css:div[id='menu-filterDataType'] li:nth-child(6)
${ENTER_START_DATE}                 css:input[name='startValue']
${S_DATE}                           01052025
${ENTER_END_DATE}                   css:input[name='endValue']
${E_DATE}                           23062025
${R_DATE}                           27062025
${APPLY_BUTTON}                     css:button[type='submit']

${CLICK_LOAN_REQUEST}               css:div[class='MuiCollapse-root MuiCollapse-entered'] div:nth-child(2) div:nth-child(2) span:nth-child(1)
${CLICK_NEXT_LOAN_REQUEST_NON_APPROVAL}   xpath=(//div[@class='MuiListItemSecondaryAction-root'])[4]
${CLICK_VLCC}                       css:li:nth-child(12)
${CLICK_LIKE}                       css:div[id='menu-filterDataType'] li:nth-child(2)
${CLICK_VALUE_AT}                   css:input[name='filterPossibleVals']
${CLICK_FRN_LINK}                   xpath://a[.='MRF-GOVIND UAT']
${CLICK_EDIT}                       xpath:(//i[@class='fa fa-pencil-square-o'])[1]
${AADHAR}                           css:input[name='aadharNumber']
${STATUS}                           xpath:(//div[@id='mui-component-select-approvalStatus'])[1]
${APPROVAL}                         css:div[id='menu-approvalStatus'] li:nth-child(1)
${REJECTED}                         xpath:(//li[normalize-space()='Rejected'])[1]
${SUBMIT}                           xpath:(//button[normalize-space()='Submit'])[1]
${BACKEND_FIELD}                    xpath:(//div[@id='mui-component-select-registrationStatus'])[1]
${SELECT_HOLD}                      xpath:(//li[normalize-space()='On Hold'])[1]
${REMARKS_FIELD}                    css:input[name='remarks']
${REMARKS}                          Otp Verified


#Personal details
${RELIGION_FIELD}                  xpath:(//div[@id='mui-component-select-religionCategory'])[1]
${RELIGION}                        css:div[id='menu-religionCategory'] li:nth-child(1)
${AADHAR_NAME}                     xpath:(//input[@name='nameOnAadhar'])[1]
${NAME}                            Vijay
${GENDER_FIELD}                    xpath:(//div[@id='mui-component-select-gender'])[1]
${GENDER}                          xpath:(//li[normalize-space()='Male'])[1]
${FATHER_NAME_FIELD}               xpath:(//input[@name='relativeName'])[1]
${F_NAME}                          Partha
${MOTHER_NAME_FIELD}               xpath:(//input[@name='mothersMaidenName'])[1]
${M_NAME}                          Sneha
${FOSTYPE_FIELD}                   xpath:(//div[@id='mui-component-select-relationType'])[1]
${FOS_TYPE}                        xpath:(//li[normalize-space()='Father'])[1]
${OKAYY}                           css:button[class='swal2-confirm swal2-styled']

${SELECT_SEND_BACK}                css:div[id='menu-registrationStatus'] li:nth-child(3)
${IFSC_CODE}                       xpath:(//input[@name='ifscCode'])[1]
${BANK_ACC_NO}                     xpath:(//input[@name='accountNumber'])[1]

${DISBURSED}                      xpath:(//*[name()='svg'][@class='MuiSvgIcon-root'])[7]
${IMPORT}                         xpath:(//*[name()='svg'][@class='MuiSvgIcon-root'])[9]
${BROWSE}                         xpath:(//span[@class='MuiButton-label'])[1]
${FILE}                           C:\Users\bavad\Downloads\LOAN_DISBURSAL_IMPORT.xlsx




