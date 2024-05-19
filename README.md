# E-commerce Functionality (BNN) with Robot Framework
## Overview
This project contains test automation scripts for the e-commerce website using Robot Framework. The tests cover various functionalities such as product search, adding products to the cart,  and pre-checkout.

## Project Structure
```
├── README.md
├── keywords
│   ├── pages
│   │   ├── cart.resource
│   │   ├── common.resource
│   │   ├── main.resource
│   │   ├── product_detail.resource
│   │   ├── search_product.resource
│   │   └── import_setting.resource
├── locators
│   └── pages
│       ├── cart.resource
│       ├── common.resource
│       ├── main.resource
│       ├── product_detail.resource
│       ├── search_product.resource
├── resources
│   ├── config
│   │   └── config.yaml
│   ├── driver
│       └── chromedriver.exe
├── testscript
│   └── web
│       └── functionality.robot
```

## Prerequisites
Ensure you have the following installed on your system:
- Python 3.x
- pip (Python package installer)
- pip robotframework-seleniumlibrary
- Google Chrome browser and ChromeDriver

## Test Execution
- robot .\testscript\web\functionality.robot