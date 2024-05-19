*** Variables ***
# Icon
${ICON_CART}            //div[@class="cart"]
${BUTTON_GO_TO_CART}    //footer[@class="footer"]//button[@class="btn -primary" and contains(text(), "ไปที่ตะกร้า")]

# Close Ads
${CLOSE_BUTTON_ADS}   //span[contains(@class, 'close-button')] 

# Accept Cookies
${ACCEPT_BUTTON_COOKIES_BAR}    //div[@class="the-pdpa-consent-bar"]//button[@class="btn -primary btn-accept" and contains(text(), "ให้ความยินยอมทั้งหมด")]