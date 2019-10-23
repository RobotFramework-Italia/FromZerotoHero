*** Settings ***
Documentation  This test suite test Chili Login System.

Library         SeleniumLibrary

Test Setup   Open Browser    ${LOGIN_URL}    ${BROWSER}

*** Variables ***
${LOGIN_URL}  https://it.chili.com/login
${BROWSER}    Chrome

*** Test Cases ***
Test Valid Chili Login
	[Tags] 	 Smoke
    Submit Credential  username_prova@yopmail.com    robotframeworkhero
    Confirm Login
    Check Homepage
    [Teardown]  Close Browser

Test Invalid Chili Login
	[Tags] 	 Smoke
    Submit Credential  username_assente@yopmail.com    robotframeworkhero
    Confirm Login
    Check Login Error
    [Teardown]  Close Browser

*** Keywords ***

Submit Credential
    [Arguments]  ${username}   ${password}
    Wait Until Page Contains Element	username
    Input Text    			username    ${username}
    Wait Until Page Contains Element	password
    Input Text    			password    ${password}

Confirm Login
    Wait Until Page Contains Element    submitLogin-btn
    Click Button                        submitLogin-btn

Check Homepage
    Wait Until Page Contains Element    //div[@class='page-homepage']

Check Login Error
    Wait Until Page Contains Element    errorMessage