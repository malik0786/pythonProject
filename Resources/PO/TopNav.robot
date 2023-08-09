*** Settings ***
Library     Selenium2Library


*** Variables ***
${SignInLink} =     id=SignIn

*** Keywords ***
Click link to "Sign In"
    click link                 ${SignInLink}
    page should contain         Login