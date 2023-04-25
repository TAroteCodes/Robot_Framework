*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${URL}    https://www.amazon.in/
${browser}    chrome

#Homescreen_Data
${productname}    Iphone14 pro max
${Account_button}    Account & Lists
${Logo_Id}    id:nav-logo-sprites

#xpath_for_homepage
${search_box}    xpath://*[@id='twotabsearchtextbox']
${search_button}    xpath://*[@id='nav-search-submit-button']
${item}    xpath://*[text()='Apple iPhone 14 Pro Max (256 GB) - Gold']


#xpath_for _productpage
${table_content}    xpath://span[contains(text(),'Water resistant')]
${expecteddata}    A16 Bionic chip,6-core CPU with 2 performance cores and 4 efficiency cores, 5-core GPU, 16-core Neural Engine
${rc}    xpath://*[@class="a-bordered a-horizontal-stripes a-spacing-micro a-size-small ucc-comparison-table"]/tbody/tr
${cc}    xpath://*[@class="a-bordered a-horizontal-stripes a-spacing-micro a-size-small ucc-comparison-table"]/tbody/tr[1]/td

#Title Of The Page
${title}    Apple iPhone 14 Pro Max (256 GB) - Gold : Amazon.in: Electronics
${Chip}   Chip

#TC1 SETUP
${sup}    Test Case 1 Set Up Successfully.
${td}    Test Case 1 TearDown Successfully.

#TC1 SETUP
${sup1}    Test Case 2 Set Up Successfully.
${td1}    Test Case 2 TearDown Successfully.
