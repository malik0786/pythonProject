*** Settings ***
Library     Selenium2Library
Resource  ../Resources/PO/HomePage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/LoginPage.robot
*** Variables ***

*** Keywords ***
Navigate to Home Page
    HomePage.Open Home Page
    HomePage.Verify Page Loaded

Click on Sign In button
    [Arguments]   ${EMAIL}  ${PASSWORD}
    TopNav.Click link to "Sign In"
    LoginPage.Login with User Credentials     ${EMAIL}  ${PASSWORD}
