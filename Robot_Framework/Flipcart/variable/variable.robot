
*** Variables ***

# Common Variables

${URL}    https://www.flipkart.com/
${browser}    Chrome

# xpath for homepage
${Search_box}    xpath://*[@placeholder="Search for products, brands and more"]
${Search_Button}    xpath://*[@type="submit"]
${product}    xpath://div[contains(text(),'APPLE iPhone 14 Pro Max (Space Black, 128 GB)')]
${Home}    xpath://*[@title="Flipkart"]
${Login_W}    xpath://*[@class="_2KpZ6l _2doB4z"] 
${Fashion}    xpath://*[@alt="Fashion"]
${M_F}    xpath://*[@class="_6WOcW9 _3YpNQe"][2]
${Shirt}    xpath://*[@title="T410 Men Printed Hooded Neck Blue, Black T-Shirt"]

#product page xpath's

${Size_Chart}    xpath://*[@class="_1qs4Jt"]
${Close_Chart}    xpath://*[@class="_2KpZ6l _1KAjNd"]
${Select_Size}    xpath://*[@id="swatch-2-size"]/a
${Size_m}    xpath://div[contains(text(),'Chest 39 inch | Length 27 inch')]
${Add_To_Cart}    xpath://*[@class="_2KpZ6l _2U9uOA _3v1-ww"]
${Row_Elements}    xpath://*[@class="_2WObml"]/tbody/tr
${Colum_Element}    xpath://*[@class="_2WObml"]/tbody/tr[1]/td
  
#product page Data

${Tab_Title}    EyeBogler Printed Men Hooded Neck Blue, Black T-Shirt - Buy EyeBogler Printed Men Hooded Neck Blue, Black T-Shirt Online at Best Prices in India | Flipkart.com
${Chest_Size}    41
${Length_Size}    27.5
${Condition_Fail}    Condition not satisfied.
${Text_m}    Chest 39 inch | Length 27 inch

#Variables for google Sheet
${GSheet_id}    1VwKmdjCkGY5WS4K1Ru3Rj7DVe1tRty8xdOdzcwAnV6s
${Work_Sheet}    Sheet1
${json_file}    ../Data_Driven/Credential.json
