*** Settings ***
Library     Selenium2Library

*** Variables ***
${HEADER_HOMEPAGE} =    Customers Are Priority One!
*** Keywords ***
Open Home Page
    go to           ${URL}
    Verify Page Loaded

Verify Page Loaded
    wait until page contains    ${HEADER_HOMEPAGE}