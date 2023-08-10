*** Settings ***
Library     Selenium2Library


*** Variables ***
${SIGN_OUT_VARIABLE} =  Signed Out
*** Keywords ***
Click on Logout Button
    wait until page contains    ${SIGN_OUT_VARIABLE}