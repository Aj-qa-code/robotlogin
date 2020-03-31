*** Settings ***
Documentation
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${URL}          https://wordpress.com/log-in
${user}         juanperez@gmail.com
${pass}         1234AA

*** Keywords ***
Open Log In Page
    Open browser    ${URL}  ${browser}
    
*** Test Cases ***
Login wordpress
    Open Log In Page
    Click Element   xpath=//*[@id="wpcom"]/div/div[2]/div[2]/button
    Click Element   xpath=//*[@id="usernameOrEmail"]
    Input Password  xpath=//*[@id="usernameOrEmail"]    ${user}
    Click Button    css=#primary > div > main > div.wp-login__container > div > form > div.card.login__form > div.login__form-action > button
    Wait Until Element Is Visible   xpath=//*[@id="password"]
    Click Element   xpath=//*[@id="password"]
    Input Password  css=#password   1234PP
    Click Button    css=#primary > div > main > div.wp-login__container > div > form > div.card.login__form > div.login__form-action > button


