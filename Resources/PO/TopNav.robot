*** Settings ***
Library     Selenium2Library


*** Variables ***
${SignInLink} =     id=SignIn
${SIGN_OUT} =   Sign Out

*** Keywords ***
Click link to "Sign In"
    click link                 ${SignInLink}
    page should contain         Login

Click link to "Sign Out"
     click link                  ${SIGN_OUT}