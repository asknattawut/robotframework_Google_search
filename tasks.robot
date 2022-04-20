*** Settings ***
Documentation       To search Google "Hello World"

Library             RPA.Browser.Selenium    auto_close=${FALSE}
Library             Dialogs


*** Tasks ***
login when seeing its recaptcha on a website
    Open website
    Maximize Window
    Search a word


*** Keywords ***
Open website
    Open Available Browser    https://www.google.com/

Maximize Window
    Maximize Browser Window
    # Set Selenium Speed    0.25

Search a word
    Press Keys    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input     Hello World+ENTER
