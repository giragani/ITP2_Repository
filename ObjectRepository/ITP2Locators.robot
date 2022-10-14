*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library     String
Library     Process

*** Variables ***

###### Locators - XPaths  IDs, CSS ,Name,etc...COPY ISSUANCE OF BIRTH CERTIFICATE############################################
############################################################################################
${open_button}    css=#ToggleSlider[type='checkbox']
${close_success_button}    id=AlertSuccessCloseBtn

#################################Home Page  #################################################
${application_home}    xpath=//a[@id='dashboard']
${ccr_link}    xpath=//a[text()='Client Certificate Request']
${ccr_home_link}    xpath=//a[text()='Client Certificate Request Home']
${request_entry_link}    xpath=//a[text()='Request Entry']

################################# Request Entry Screen ##############################
${skip_button}    id=Skip
${transaction_type_drowpdown}    id=cmbCertificateType
${number_of_copies}    xpath=//fieldset[@id='deathFormDetails']//input[@id='noOfCopies']
${next_button}    xpath=//button[@id='proceed']

###################################################

############ Home Page ######################
${application_home}  xpath=//a[@id='dashboard']
${ccr_Link}  xpath=//a[text()='Client Certificate Request']
${wrp_Link}  xpath=//a[text()='Walk-in Request Entry and Payment']

######## Walkin Request Entry and Payment Page###########
${ctt_option}  xpath=//option[text()='Choose Transaction Type']/following::option[2]
${number_of_copies}  xpath=//fieldset[@id='deathFormDetails']//input[@id='noOfCopies']
${d_last_name}  xpath=//input[@id='txtDeathPriLastName']
${d_firstname}  xpath=//input[@id='txtDeathPriFirstName']
${d_middlename}  xpath=//input[@id='txtDeathPriMiddleName']

${death_sex}    xpath=//select[@id='txtDeathSex']
${death_month}  xpath=//fieldset[@id='deathFormDetails']//select[@id='deathMonth']
${death_date}  xpath=//*[@id="deathDate"]
${death_year}  xpath=//*[@id="deathYear"]
${country}  xpath=//*[@id="deathCountry"]
${province}  xpath=//*[@id="deathProvince"]
${r_province}  xpath=//*[@id="cmbProvince"]
${city}  xpath=//select[@id='deathCity']
#${r_city}       xpath=//select[@id='cmbCity']
#xpath=//select[@id='deathCity']//option[@value='00101']

${fa_lastname}  xpath=//*[@id="txtDeathSecLastName"]
${fa_firstname}  xpath=//*[@id="txtDeathSecFirstName"]
${fa_middlename}  xpath=//*[@id="txtDeathSecMiddleName"]

${ma_lastname}  xpath=//*[@id="txtDeathAuxLastName"]
${ma_firstname}  xpath=//*[@id="txtDeathAuxFirstName"]
${ma_middlename}  xpath=//*[@id="txtDeathAuxMiddleName"]

${purpose}  xpath=//*[@id="cmbDeathRequestPurpose"]

${save_button}  xpath=//fieldset[@id='deathFormDetails']//button[text()='Save']

######## Requesters Details#############################
${requester_lastname}  xpath=//fieldset[@id='requesterDiv']//*[@id='txtReqLastName']
${requester_firstname}  xpath=//fieldset[@id='requesterDiv']//input[@id='txtReqFirstName']
${requester_address1}   xpath=//fieldset[@id='requesterDiv']//input[@id='txtAddress']
${requester_address2}   xpath=//fieldset[@id='requesterDiv']//input[@id='streetAddress']
${requester_country}    xpath=//fieldset[@id='requesterDiv']//select[@id='cmbChildCountry']
${requester_province}   xpath=//fieldset[@id='requesterDiv']//select[@id='cmbProvince']
${requester_city}   xpath=//fieldset[@id='requesterDiv']//select[@id='cmbCity']



####################### Walkin-Request Entry - File Upload    ##############
                #### AU-M ############################################
${Walkin_Menu}      //a[text()='Walk-in Request Entry']
${Transaction_Type}     //select[@id='WalkInTransactiontype']

${No0f_C}   //input[@id='txtMRenReN']//preceding::input[1]
${HLN}    //input[@id='txtMrgPriLastName']

${HFN}    //input[@id='txtMrgPriFirstName']
${WLN}    //input[@id='txtMrgSecLastName']
${WFN}    //input[@id='txtMrgSecFirstName']
${M_month}    //select[@id='mrgMonth']
${M_Date}    //input[@id='mrgDate']
${M_year}    //input[@id='mrgYear']
${M_Province}    //select[@id='marriageProvince']
${M_City}    //select[@id='marriageCity']
${Req_ln}    //input[@id='txtReqLastName']
${Req_fn}    //input[@id='txtReqFirstName']
${Req_ad}    //input[@id='txtAddress']
${Req_country}     //select[@id='cmbChildCountry']

*** Keywords ***
