*** Keywords ***
Select Product
    [Documentation]    Search for a product using its name
    Wait Until Element Is Visible    ${FOUND_ITEM}
    Click Element    ${FOUND_ITEM}