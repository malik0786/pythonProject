*** Settings ***
Library     Selenium2Library
Resource  ../Resources/PO/HomePage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/LoginPage.robot
Resource  ../Resources/PO/CustomerServicePage.robot
Resource  ../Resources/PO/AddCustomerPage.robot
Resource  ../Resources/PO/LogoutPage.robot

*** Variables ***

*** Keywords ***
Navigate to Home Page
    HomePage.Open Home Page
    HomePage.Verify Page Loaded

Click on Sign In button
    [Arguments]   ${EMAIL}  ${PASSWORD}
    TopNav.Click link to "Sign In"
    LoginPage.Login with User Credentials     ${EMAIL}  ${PASSWORD}

Navigate to Customer Page
    CustomerServicePage.Verify Customer Page loaded

Navigate to Add Customer Page
    [Arguments]         ${INPUT_EMAIL_ID}  ${INPUT_FIRST_NAME}     ${INPUT_LAST_NAME}  ${INPUT_CITY}

    AddCustomerPage.Add User details    ${INPUT_EMAIL_ID}  ${INPUT_FIRST_NAME}     ${INPUT_LAST_NAME}  ${INPUT_CITY}

Click on Sign out button
    TopNav.Click link to "Sign Out"

Navigate to Logout Page
    LogoutPage.Click on Logout Button


