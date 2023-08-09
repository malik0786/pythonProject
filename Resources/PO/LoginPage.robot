*** Settings ***
Library   Selenium2Library


*** Variables ***
${USER_Email} =   id=email-id
${USER_PASSWORD} =   id=password
${SUBMIT_BUTTON} =   id=submit-id
*** Keywords ***
Login with User Credentials
    [Arguments]         ${EMAIL}    ${PASSWORD}
    Fill "EMAIL" Field      ${EMAIL}
    Fill "PASSWORD" Field   ${PASSWORD}
    Click "Submit" Button

Fill "EMAIL" Field
    [Arguments]  ${EMAIL}
    input text                  ${USER_Email}     ${EMAIL}

Fill "PASSWORD" Field
    [Arguments]  ${PASSWORD}
    input text                  ${USER_PASSWORD}     ${PASSWORD}

Click "Submit" Button
    click button                ${SUBMIT_BUTTON}