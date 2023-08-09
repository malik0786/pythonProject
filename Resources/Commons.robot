*** Settings ***
Library     Selenium2Library

*** Variables ***

*** Keywords ***
Begin web Test
    log                         Starting the test case
    #set selenium speed      .2s
    #set selenium timeout    10
    open browser                about:blank    ${BROWSER}

End web Test
    close all browsers
