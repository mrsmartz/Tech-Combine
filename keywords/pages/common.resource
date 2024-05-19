*** Keywords ***
Open Browser and Maximize 
    [Documentation]    Open the BROWSERand maximize
    [Arguments]     ${URL}    ${BROWSER}
    Open BROWSER    ${URL}    ${BROWSER}    executable_path=${driver_path}    options=add_argument("--disable-notifications")
    Maximize Browser Window  

Handle Ads and Cookies
    [Documentation]    Close any ads and accept cookie consent pop-ups
    Run Keyword And Ignore Error    Close Ads
    Run Keyword And Ignore Error    Accept Cookies

Close Ads
    [Documentation]    Close the ad pop-up
    Wait Until Element Is Visible    ${CLOSE_BUTTON_ADS}
    Click Element    ${CLOSE_BUTTON_ADS}  

Accept Cookies
    [Documentation]    Accept cookie consent
    Wait Until Element Is Visible    ${ACCEPT_BUTTON_COOKIES_BAR}
    Click Element    ${ACCEPT_BUTTON_COOKIES_BAR}

Remove Bath Sign and Comma
    [Documentation]    Remove currency sign and commas from a string
    [Arguments]    ${locator}
    ${price_bath}    Get Text    ${locator}
    ${price_number}    Remove String    ${price_bath}    ฿
    ${price}    Set Variable If    '${price_number}' != '${price_number.replace(",", "")}'    ${price_number.replace(",", "")}    ${price_number}
    [Return]    ${price}