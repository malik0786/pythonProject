*** Settings ***
Library     Selenium2Library


*** Variables ***


*** Keywords ***
Add User details
    click link                  id=new-customer
    [Arguments]  ${INPUT_EMAIL_ID}  ${INPUT_FIRST_NAME}     ${INPUT_LAST_NAME}  ${INPUT_CITY}

    Fill "INPUT_EMAIL_ID" Field     ${INPUT_EMAIL_ID}
    Fill "INPUT_FIRST_NAME" Field   ${INPUT_FIRST_NAME}
    Fill "INPUT_LAST_NAME" Field    ${INPUT_LAST_NAME}
    Fill "INPUT_CITY" Field         ${INPUT_CITY}

    select from list by value   id=StateOrRegion   TX
    select radio button         gender   male
    select checkbox             name=promos-name
    click button                Submit
    wait until page contains    Success! New customer added.


Fill "INPUT_EMAIL_ID" Field
    [Arguments]         ${INPUT_EMAIL_ID}
    input text                  id=EmailAddress         ${INPUT_EMAIL_ID}

Fill "INPUT_FIRST_NAME" Field
    [Arguments]         ${INPUT_FIRST_NAME}
    input text                  id=FirstName            ${INPUT_FIRST_NAME}

Fill "INPUT_LAST_NAME" Field
    [Arguments]         ${INPUT_LAST_NAME}
     input text                  id=LastName            ${INPUT_LAST_NAME}

Fill "INPUT_CITY" Field
    [Arguments]          ${INPUT_CITY}
    input text                  id=City                 ${INPUT_CITY}