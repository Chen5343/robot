[1:16 PM] NARUTCHAI TAPANYA
*** Settings ***
Documentation     This is a sample test suite using Robot Framework
Library           SeleniumLibrary
 
Suite Setup       Open Browser    ${url}    chrome
 
*** Variables ***
${url}            http://automationexercise.com
${href}           xpath=//a[@href='/login']
${name}           Panfha
${NAME_FIELD}     name:name
${EMAIL_FIELD}    xpath=//input[@type='email' and @data-qa='signup-email']
${expectedWord}   New User Signup!
${expectedWordtext}  ENTER ACCOUNT INFORMATION
${email}          godchenzs12255@gmail.com
${REGISTER_SUBMIT_BUTTON}   xpath=//button[contains(text(),'Signup')]

*** Keywords *** 
Click Link 
    Click Element     xpath=//a[@href='/login']
Check signup word
    Wait Until Page Contains    ${expectedWord}
Input Name
    [Arguments]    ${name}
    Input Text    ${NAME_FIELD}    ${name}

Input Email
    [Arguments]     ${email}
    Input Text  ${EMAIL_FIELD}   ${email}

Click Register Button
    Click Element    ${REGISTER_SUBMIT_BUTTON}
Check signup wordpart
    Wait Until Page Contains    ${expectedWordtext}
*** Test Cases ***
Register with valid info
    [Documentation]
    Click Link
    Check signup word 
    Input Name   ${name}
    Input Email  ${email}
    Click Register Button
  
    

    
   