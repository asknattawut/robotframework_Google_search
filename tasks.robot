*** Settings ***
Documentation       To search Google "Hello World"

Library             RPA.Browser.Selenium    auto_close=${FALSE}     #auto_close=${FALSE} is used for keep the browser open.

*** Tasks ***
To search Google "Hello World"
    Open website
    Maximize Window
    Search a word


*** Keywords ***
Open website
    Open Available Browser    https://www.google.com/    #URL must start with https://

Maximize Window
    Maximize Browser Window     #To maximize browser's window.
    # Set Selenium Speed    0.25     #You can also set speed by remove # in front of Set Selenium Speed and set the number.

Search a word
    Press Keys    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input     Hello World+ENTER   #Enter must be all Capital letters.
