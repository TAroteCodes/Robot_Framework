


*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    chrome   
${password}    Oo@123456
${login_button}    xpath://*[@class="oxd-button oxd-button--medium oxd-button--main orangehrm-login-button"]
${admin}    xpath://*[@class="oxd-main-menu"]/li[1]/a
${Employee_name}    xpath://body/div[@id='app']/div[1]/div[2]/div[2]/div[1]/div[1]/form[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/input[1]
${Add}    xpath://*[@class="oxd-button oxd-button--medium oxd-button--secondary"]
${Dashboard}    xpath://*[@class="oxd-main-menu"]/li[8]
${select_date_in}    xpath://body[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/input[1]
${select_date_out}    xpath://body[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[1]/input[1]       
${Time}    //body[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/input[1]
${Time_Out}    //body[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/div[1]/div[4]/div[1]/div[2]/div[1]/div[1]/input[1]
${note}    xpath://*[@class="oxd-textarea oxd-textarea--active oxd-textarea--resize-vertical"]
${note_out}    //body[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[1]/div[1]/div[1]/div[2]/textarea[1]
${in}    xpath://body/div[@id='app']/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/form[1]/div[3]/button[1]
${out}    //body[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/form[1]/div[3]/button[1]
${profile_icon}    xpath://*[@class="oxd-icon bi-caret-down-fill oxd-userdropdown-icon"]
${logout}    xpath://*[@class="oxd-dropdown-menu"]/li[4]
${clock_icon}    xpath://*[@class="oxd-icon-button oxd-icon-button--solid-main orangehrm-attendance-card-action"]