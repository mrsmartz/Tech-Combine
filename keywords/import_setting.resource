*** Settings ***
Library        SeleniumLibrary
Library        String
Library        BuiltIn

# Import Config File
Variables      ${CURDIR}${/}..${/}resources${/}config${/}config.yaml

# Import locator File
Resource       ${CURDIR}${/}..${/}locators${/}pages${/}common.resource
Resource       ${CURDIR}${/}..${/}locators${/}pages${/}main.resource
Resource       ${CURDIR}${/}..${/}locators${/}pages${/}search_product.resource
Resource       ${CURDIR}${/}..${/}locators${/}pages${/}product_detail.resource
Resource       ${CURDIR}${/}..${/}locators${/}pages${/}cart.resource

# Import Keywords File
Resource       ${CURDIR}${/}..${/}keywords${/}pages${/}common.resource
Resource       ${CURDIR}${/}..${/}keywords${/}pages${/}main.resource
Resource       ${CURDIR}${/}..${/}keywords${/}pages${/}search_product.resource
Resource       ${CURDIR}${/}..${/}keywords${/}pages${/}product_detail.resource
Resource       ${CURDIR}${/}..${/}keywords${/}pages${/}cart.resource