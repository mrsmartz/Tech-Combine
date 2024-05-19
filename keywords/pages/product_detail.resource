*** Keywords ***
Add Products to Cart
    [Documentation]    Add products to the cart
    Wait Until Element Is Visible      ${COUNT_ITEMS}
    ${TOTAL_LIST}     Get Text         ${COUNT_ITEMS}
    ${NUMBER_LIST}    Remove String    ${TOTAL_LIST}    รายการ
    ${RESULT_LIST}    Strip String     ${NUMBER_LIST}
    Run Keyword If    ${RESULT_LIST} >= 1    Select Product
    Run Keyword If    ${RESULT_LIST} < 1     Fail  Not found product

Adjust Cart Products
    [Documentation]    Adjust the quantity of products in the cart
    [Arguments]    ${PRODUCT_QUANTITY}
    Set Global Variable    ${PRODUCT_QUANTITY}
    Wait Until Element Is Visible    ${INPUT_PRODUCT_QUANTITY}
    Input Text    ${INPUT_PRODUCT_QUANTITY}    ${PRODUCT_QUANTITY}
    ${PRODUCT_PRICE}    Remove Bath Sign and Comma    ${SELLING_PRICE}
    Set Global Variable    ${PRODUCT_PRICE}
    Click Element    ${ฺBUTTON_ADD_TO_CART}
    Wait Until Element Is Visible    ${MODAL_TITLE}
    ${msg_result}    Get Text    ${MODAL_TITLE}
    Run Keyword If    '${msg_result}' == 'สำเร็จ'    Click Element    ${MODAL_CLOSE}
    Run Keyword If    '${msg_result}' != 'สำเร็จ'    Fail    Unable to add products