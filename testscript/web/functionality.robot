*** Settings ***
Resource    ${CURDIR}${/}..${/}..${/}keywords${/}import_setting.resource
Suite Setup       Open Browser and Maximize    ${URL}    ${BROWSER}
Suite Teardown    Close BROWSER

*** Variables ***
${driver_path}    ${CURDIR}${/}..${/}..${/}resources${/}driver${/}${CHROME_DRIVER}

*** Test Cases ***
Verify E-commerce Functionality (BNN)
    Handle Ads and Cookies
    Search Product    Apple MacBook Pro 14
    Add Products to Cart
    Adjust Cart Products    3
    Click Cart Icon
    Validate Cart Total