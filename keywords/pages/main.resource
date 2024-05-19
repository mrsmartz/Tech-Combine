*** Keywords ***
Search Product
    [Arguments]    ${PRODUCT_NAME}
    Wait Until Element Is Visible    ${INPUT_SEARCH}
    Input Text       ${INPUT_SEARCH}    ${PRODUCT_NAME}
    Click Element    ${BUTTON_SEARCH}

Click Cart Icon
    [Documentation]    Click on the cart icon to view the cart
    Wait Until Element Is Visible    ${ICON_CART}
    Click Element    ${ICON_CART}
    Wait Until Element Is Visible    ${BUTTON_GO_TO_CART}
    Click Element    ${BUTTON_GO_TO_CART}