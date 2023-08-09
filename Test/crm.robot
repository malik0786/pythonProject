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
${URL} =        https://automationplayground.com/crm/
${BROWSER} =    chrome
${CUSTOMER_EMAIL_ID} =  admin@robotframrworktutorial.com
${CUSTOMER_PASSWORD} =  password


*** Keywords ***

*** Test Cases ***
Sample Test cases
    [Documentation]             This is some basic info about the test
    [Tags]                      1006 Smoke Contacts
    #set selenium speed      .2s
    #set selenium timeout    10


    #resize the close browser
    #set window position    x=341    y=169
    #set window size        width=1935   height=1090


    #HomePage
    CrmApp.Navigate to Home Page

    #Login
     CrmApp.Click on Sign In button     ${CUSTOMER_EMAIL_ID}      ${CUSTOMER_PASSWORD}


    #Customer Page
    wait until page contains    Our Happy Customers
    click link                  id=new-customer

    #AddCustomerPage
    input text                  id=EmailAddress     malik@sample.com
    input text                  id=FirstName    Ashish
    input text                  id=LastName     Malik
    input text                  id=City         Dallas
    select from list by value   id=StateOrRegion   TX
    select radio button         gender   male
    select checkbox             name=promos-name
    click button                Submit

    #TopNav
    wait until page contains    Success! New customer added.
    click link                  Sign Out
    wait until page contains    Signed Out

    close browser

