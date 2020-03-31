*** Settings ***

Documentation
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${URL}          https://www.facebook.com/
${email}	    juanperez@hotmail.com
${pass}		    1234PP


*** Keywords ***
Open Homepage
    Open Browser        ${URL}      ${browser}
    Wait Until Element Is Visible       xpath=//*[@id="blueBarDOMInspector"]/div/div/div/div[1]/h1/a/i

*** Test Cases ***
001 Log In Facebook Page
    Open Homepage
    Click Element	xpath=//*[@id="email"]
    Input Password	xpath=//*[@id="email"]	${email}
    Click Element	xpath=//*[@id="pass"]
    Input Password	xpath=//*[@id="pass"]	${pass}
    Click Element	xpath=//*[@id="loginbutton"]
    Location Should Be 		https://www.facebook.com/
    Click Element 	xpath=//*[@id="u_0_a"]/div[1]/div[1]/div/a
    Location Should Be 		https://www.facebook.com/juan.perez-3456
