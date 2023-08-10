*** Settings ***
Documentation        This is My basic test cases
Library         Selenium2Library
Resource        ../Resources/Commons.robot
Resource        ../Resources/CrmApp.robot

Test Setup      Begin web Test
Test Teardown   End web Test

#Run the Script
#robot -d results test/crm.robot

*** Variables ***
${URL} =                https://automationplayground.com/crm/
${BROWSER} =            chrome
${CUSTOMER_EMAIL_ID} =  admin@robotframrworktutorial.com
${CUSTOMER_PASSWORD} =  password
${INPUT_EMAIL_ID} =     malik@sample.com
${INPUT_FIRST_NAME} =   Ashish
${INPUT_LAST_NAME}=     Malik
${INPUT_CITY} =         Dallas

*** Keywords ***

*** Test Cases ***
Complete e2e Scenario
    [Documentation]             This is some basic info about the test
    [Tags]                      1006 Smoke Contacts
    CrmApp.Navigate to Home Page
    CrmApp.Click on Sign In button     ${CUSTOMER_EMAIL_ID}      ${CUSTOMER_PASSWORD}
    CrmApp.Navigate to Customer Page
    CrmApp.Navigate to Add Customer Page     ${INPUT_EMAIL_ID}  ${INPUT_FIRST_NAME}     ${INPUT_LAST_NAME}  ${INPUT_CITY}
    CrmApp.Click on Sign out button
    CrmApp.Navigate to Logout Page

Home Page should load
    [Documentation]     Test loading of Home Page
    CrmApp.Navigate to Home Page

Should be able to logout
    [Documentation]     Testing signout of User
     CrmApp.Navigate to Home Page
     CrmApp.Click on Sign In button     ${CUSTOMER_EMAIL_ID}      ${CUSTOMER_PASSWORD}
     CrmApp.Navigate to Customer Page
     CrmApp.Click on Sign out button

Should be able to login
    CrmApp.Navigate to Home Page
    CrmApp.Click on Sign In button     ${CUSTOMER_EMAIL_ID}      ${CUSTOMER_PASSWORD}
    CrmApp.Navigate to Customer Page


#set selenium speed      .2s
    #set selenium timeout    10


    #resize the close browser
    #set window position    x=341    y=169
    #set window size        width=1935   height=1090
