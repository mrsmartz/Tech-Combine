*** Keywords ***
Validate Cart Total
    [Documentation]    Validate the total price of the cart
    Wait Until Element Is Visible    ${PRICE_ESTIMATED}
    ${TOTAL_PRICE}    Remove Bath Sign and Comma    ${PRICE_ESTIMATED}
    ${RESULT}    Evaluate    ${PRODUCT_PRICE} * ${PRODUCT_QUANTITY}
    Should Be Equal As Numbers    ${RESULT}    ${TOTAL_PRICE}