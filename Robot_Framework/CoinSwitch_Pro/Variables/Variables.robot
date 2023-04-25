*** Variables ***
# variables For API request
${base_url}    https://coinswitch.co/pro

# Variables For HomePage 
${Browser}    Chrome
${Tread_Now_Button}    xpath://button[contains(text(),'TRADE NOW')]

#Variables for Treading Page
${Skip_All_Button}    xpath://div[contains(text(),'Skip All')]
${Done_Button}    xpath://div[contains(text(),'Done')]
${Latest_Buy_Price}    xpath://*[@class="tw-flex-1 tw-text-right tw-text-green-01 lg:tw-text-center"][1]
${Limit_Price}    xpath://*[@for="limit_price"]
${Limit_Price_Val}    xpath://*[@id="limit_price"]