*** Settings ***
Documentation  This test suite test Chili Login System.
Import   SeleniumLibrary

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

*** Keyword ***

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
    Wait Until Page Contains Element    //div[@class='divContainerPage  page-homepage ']