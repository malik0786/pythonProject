*** Settings ***
Library     Selenium2Library


*** Variables ***
${CUSTOMER_TEXT} =  Our Happy Customers

*** Keywords ***
Verify Customer Page loaded
    wait until page contains    ${CUSTOMER_TEXT}
