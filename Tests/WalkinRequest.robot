*** Settings ***
Documentation    Suite description
Resource    C:/Users/GiriganV/PycharmProjects/CRSITP2/Resources/ITP2KeyWords.robot
Library     SeleniumLibrary
Library     FakerLibrary
Library     String
Library    AutoItLibrary
#Library    SikuliLibrary    mode=NEW

*** Variables ***
#@{purpose}  CL  JA  JL  OT  PT  SR
${files}    C:\Users\GiriganV\PycharmProjects\CRSITP2\Files\Tiff_Files\Page-2.tiff
${files1}    C:\Users\GiriganV\PycharmProjects\CRSITP2\Files\Tiff_Files\DocumentConversion\00101202208CB0223312R



##################### Stefy's Document Conversion###################
${more_option}  xpath=//*[@id="menuDiv"]/li[5]/a/img
${select_dc}  xpath=//a[@id='150']
${select_dc_home}  xpath=//a[text()='Document Conversion Home']
${select_upload}  xpath=//span[text()='CRD/CDLI']
${select_choose}  xpath=//button[@id='birth-AddImageBtn']



##sravan's locators
${Client_Cert_Req}  xpath=//*[@id="101"]
${wre_Link}     xpath=//*[@id="menuDiv"]/li[2]/ul/li[4]/a
${qtn}  xpath=//*[@id="queueTicketNo"]
${trans_type}   xpath=//*[@id="WalkInTransactiontype"]

${child_last_name}  xpath=//*[@id="txtBirthPriLastName"]
${child_firstname}  xpath=//*[@id="txtBirthPriFirstName"]
${child_middlename}  xpath=//*[@id="txtBirthPriMiddleName"]
${birth_sex}      xpath=//*[@id="txtBirthSex"]
${birth_month}  xpath=//*[@id="birthMonth"]
${birth_date}  xpath=//*[@id="birthDate"]
${birth_year}  xpath=//*[@id="birthYear"]
${birth_country}    xpath=//*[@id="birthCountry"]
${birth_province}   xpath=//*[@id="birthProvince"]
${birth_city}   xpath=//*[@id="birthCity"]
${add_image}    //button[@id='birth-AddImageBtn']
${birth_motherlastname}       xpath=//*[@id="txtBirthAuxLastName"]
${birth_motherfirstname}   xpath=//*[@id="txtBirthAuxFirstName"]
${birth_mothermiddlename}  xpath=//*[@id="txtBirthAuxMiddleName"]
${purpose}  xpath=//*[@id="cmbRequestPurpose"]
${number_of_copies}     id:noOfCopies

*** Keywords ***


*** Test Cases ***
GenerateQueueTicket
    Open Counter
    SeleniumLibrary.click image    //img[@src='/Common/Content/images/more-icon.svg']
    SeleniumLibrary.click link    //a[text()='Queue Management System']
    sleep    2s
    SeleniumLibrary.click link    //a[text()='QMS Home']
    sleep    2s
    #clicks queue ticket system Image
    SeleniumLibrary.click image    //img[@src='/images/DashboardIconsLatest/Queue Ticketing System.svg']
    sleep    3s
#    SeleniumLibrary.switch browser      1
    @{windows}      get window handles
    log to console    @{windows}
    ${handle}       select window    ${windows}[1]
    title should be    Civil Registry System
#    select window    ${handle}

#    select window    CDwindow-430D61A7A459948355BDBE22BC09AA03
   # Switch Window   CDwindow-430D61A7A459948355BDBE22BC09AA03
#    SeleniumLibrary.select window   title=Civil Registry System
    #SeleniumLibrary.element text should be    //h4[@class='main-title text-align-left' ]    Queue Ticketing System

    sleep    5s
#    click button    //button[@data-bind='click:SeniorQueueClick']
#    click button    //*[@id="queueDiv"]/div[1]/div/button
    SeleniumLibrary.click button    //button[@class='thumbnailDiv' and @data-bind='click:RegularQueueClick']
    sleep   3s
    click button    //button[@data-bind='click:EncodingAndPaymentClicked']
    Sleep   8s
    @{qtnwindows}      get window handles
    sleep    6s
#    log to console    @{qtnwindows}
#    ${qtnhandle}       select window    ${qtnwindows}[1]
     select window    ${qtnwindows}[1]
#    Switch Window       ${qtnwindows}[1]

#     switch window     ${qtnwindows}[3]

    ${qtn}      get text    //span[@data-bind='text:QueueTicketNumber']
#    ${qtntext}      get text    //div[@id='popUpQTNText']/span[1]
#    handle alert    ACCEPT      1min
#    ${qtn}      get text    //span[@data-bind='text:QueueTicketNumber']

Access Home Page
    [Tags]    Sanity
    [Documentation]    This test case opens the url and accesses the Home Page of CRS after opening the counter
    Open Counter
    Title Should Be    Civil Registry System
    Click Link    Xpath://a[@id='dashboard']
    Click Link    Xpath://a[@id='101']
    Click Link    link:Walk-in Request Entry
    Select From List By Value    id:WalkInTransactiontype  RA-M
    Sleep    3s
    Select From List By Value    id:documentSubType     MA-AA
    Select Checkbox    Xpath://body[1]/div[1]/div[1]/div[5]/div[1]/div[1]/div[2]/div[3]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[1]/td[1]/input[1]
    Select Checkbox    Certificate of Finality
    Select Checkbox    Certificate of Registration of Court Decision/Order
    Sleep    3s
    Select Checkbox    Xpath://body[1]/div[1]/div[1]/div[5]/div[1]/div[1]/div[2]/div[3]/div[1]/table[1]/tbody[1]/tr[1]/td[2]/table[1]/tbody[1]/tr[1]/td[1]/input[1]
    sleep    2s
    select checkbox    xpath://input[@id='new' and @name='Annotated Certificate of Marriage']
    sleep    2s
    select checkbox    xpath://input[@id='new' and @name='Certificate of Marriage (Un-annotated)']
    select from list by index

VOMarriageWAlkin
    [Documentation]     The keyword opens the counter of CRS Application
    Open Counter
    Click Element    //a[@id='101']
    Click Element   //a[text()='Walk-in Request Entry']
    Select From List By Value    //select[@id='WalkInTransactiontype']      PA-M
    sleep    3s
    Select From List By Value    //select[@id='documentSubType']       MA-AA
    Click Element    xpath=//input[@id='new' and @name='Court Decision']
    Click Element    xpath=//input[@id='new' and @name='Certificate of Finality']
    Click Element    xpath=//input[@id='new' and @name='Certificate of Registration of Court Decision/Order']
    Click Element    xpath=//input[@id='new' and @name='Certificate of Authenticity of the Court Decision/Order ']
    Click Element    xpath=//input[@id='new' and @name='Annotated Certificate of Marriage']
    Click Element    xpath=//input[@id='new' and @name='Certificate of Marriage (Un-annotated)']
    Click Button    //button[@id='WizardDonebtn']
    Click Button   //button[@id='WizardSubmitbtn']
    Input Text    id:txtMrgPriLastName    HLN
    Input Text    id:txtMrgPriFirstName    HFN
    Input Text    id:txtMrgPriMiddleName    HMN
    Input Text    id:txtMrgSecLastName    WLN
    Input Text    id:txtMrgSecFirstName    WFN
    Input Text    id:txtMrgSecMiddleName    WMN
    Select From List By Value    id:mrgMonth    01
    Input Text   id:mrgDate     01
    Input Text    id:mrgYear    2018
    Select From List By Value    id:marriageProvince    001
    Select From List By Value    id:marriageCity    00101
    Select From List By Value    id:cmbMarriageRequestPurpose   CL
    Click Button    //button[@data-bind='click:marriageSaveClick']
    Input Text    id:txtReqLastName    ReqLN
    Input Text    id:txtReqFirstName    ReqFN
    Input Text    //input[@id='txtAddress']    AddressLine1
    Input Text    //input[@id='streetAddress']    AddressLine2
    sleep    2s
#    Select From List By Value    id:cmbProvince     001
    select from list by index    id:cmbProvince     1
    Sleep    3s
#    select from list by label    xpath://select[@id='cmbCity']      BANGUED
    seleniumlibrary.select from list by value    xpath://select[@id='cmbProvince']      BANGUED
    sleep    2s
    Click Button    //button[@id='finalSubmitbtn']


Payment
    Open Counter
    Click Element    ${ccr_Link}
    Click Element    ${wrp_Link}
    Click Element    ${ctt_option}
    Sleep    3s
 #Wait Until Element Is Visible    ${number_of_copies}
    Input Text    ${number_of_copies}    1

 # Faker keywords
    ${de_last_name}     Last Name
    ${de_first_name}    First Name
    ${de_middle_name}   First Name
    ${father_last_name}     Last Name
    ${father_first_name}    First Name
    ${father_middle_name}   First Name
    ${mother_last_name}     Last Name
    ${mother_first_name}    First Name
    ${mother_middle_name}   First Name
    ${re_lastname}      Last Name
    ${re_firstname}     First Name
    ${re_address1}      Address
    ${re_address2}      Address
    Input Text    ${d_last_name}    ${de_last_name}
    Input Text    ${d_firstname}    ${de_first_name}
    Input Text    ${d_middlename}    ${de_middle_name}
    Select From List By Value    ${death_sex}  Female
#    Date
    Select From List By Value    ${death_month}    01
    Input Text    ${death_date}    12
    Input Text    ${death_year}    2021
#    Country name
    Select From List By Value    ${country}  608
    Select From List By Value    ${province}  001
    Select From List By Value    ${city}  00101
    Input Text    ${fa_lastname}    ${father_last_name}
    Input Text    ${fa_firstname}    ${father_first_name}
    Input Text    ${fa_middlename}    ${father_middle_name}
    Input Text    ${ma_lastname}    ${mother_last_name}
    Input Text    ${ma_firstname}    ${mother_first_name}
    Input Text    ${ma_middlename}     ${mother_middle_name}
    Select From List By Value    //select[@id='cmbDeathRequestPurpose']  ${purpose}[0]
    Execute Javascript      window.scrollTo(0,2000)
    Sleep    5s
    Click Element    ${save_button}
    Sleep    5s
 #Input Text    ${re_lastname}    ${requester_lastname}
 #Input Text    ${re_firstname}    ${requester_firstname}
 #Input Text    ${re_address1}    ${requester_address1}
 #Input Text    ${re_address2}    ${requester_address2}
    Input Text    //input[@id='txtReqLastName']    a1
    Input Text    //input[@id='txtReqFirstName']    a2
    Input Text    //input[@id='txtAddress']    a3
#    Input Text    //input[@id='streetAddress']      a4
#    Select From List By Value    ${country}     608
    sleep   3s
    Select From List By Value    ${r_province}    001
    sleep    3s
#    Select From List By Value    ${r_city}    00101
#    select from list by index    xpath=//select[@id='cmbCity']    2
#    wait until element is visible    xpath=//select[@id='cmbCity']      [timeout]    10
    Execute Javascript      window.scrollTo(0,100)
    #Wait Until Keyword Succeeds    1 min    5 sec   select from list by index   xpath=//select[@id='cmbCity']   1
    sleep    2s
    wait until element is visible    //select[@id='cmbProvince']/following::select[1]
    select from list by index    //select[@id='cmbProvince']/following::select[1]   1
#    wait until element is visible    path=//select[@id='cmbCity']
#    select from list by index   xpath=//select[@id='cmbCity']   1
#    select from list by index   xpath=//select[@id='cmbCity']   2

#    Select From List By Value    ${requester_country}  004
    Execute Javascript  window.scrollTo(0,500)
    Sleep    3s
# Payment
    ${get_value}    get text    xpath=//span[@id="TotalAmt"]
    Log    ${get_value}
    Input Text    //input[@id="txtAmountTendered"]   ${get_value}
    Execute Javascript  window.scrollTo(0,300)
    Sleep    3s
#    Click Button    //button[@id="finalSubmitbtn"]
    click element    xpath=//button[text()='Print OR']

VOMarriage
    [Documentation]     Walk-in Request Entry: Verify the End To End flow client request VO-Marriage
    ${HLastName}    Last Name
    ${HFirstname}   First Name
    ${WlastName}    Last Name
    ${WfirstName}   First Name
    ${Reqlname}     Last Name
    ${Reqfname}     First Name
    ${Address}      Address
#    LaunchBrowser
#    Title Should Be    Civil Registry System
#    OpenCounter     #close the counter before every run
#    Homepage
    Open Counter
    ClientCertificateRequestWA
    Click Link    ${Walkin_Menu}
    Select From List By Value    ${Transaction_Type}    VO-M
    Sleep    3
    Input Text    ${HLN}    ${HLastName}
    Sleep    2
    Input Text    ${HFN}    ${HFirstname}
    Sleep    2
    Input Text    ${WLN}    ${WlastName}
    Input Text    ${WFN}    ${WfirstName}
    Select From List By Value    ${M_month}    01
    Input Text    ${M_Date}    01
    Input Text    ${M_year}    2018
    Select From List By Value    ${M_Province}    001
    Select From List By Value    ${M_City}    00101
#    Select From List By Value    ${Purpose}   CL

    select from list by value    ${vom_Purpose}     CL
    ScrollandClicksave

    ## Requester Details##
    Input Text    ${Req_ln}    ${Reqlname}
    Input Text    ${Req_fn}    ${Reqfname}
    Input Text    ${Req_ad}    ${Address}
    Select From List By Value    ${Req_country}     016
    Sleep    5
    Scrollbar
    Sleep    10
    FinalSubmitButton
    sleep    3s
    ${get_ref}  Get Text    //span[@data-bind='text: RequestNo']            #${Tran_No}
#     ${get_ref}  get value    //span[@data-bind='text: RequestNo']            #${Tran_No}
    Log    ${get_ref}
    Sleep    5
#    Click Button    ${Close_btn}
#    Click Link    ${P_menu}
#    Click Link    ${Recv_pay}
#    Select From List By Label    ${Select_Tran}    Transaction Number/Kiosk Transaction Slip Number
#    Input Text    ${inp_txt}    ${get_ref}
#    Click Button    ${Sbbtn}


Authmarriage
    [Documentation]     Walk-in Request Entry: Verify the End To End flow client request VO-Marriage
    ${HLastName}    Last Name
    ${HFirstname}   First Name
    ${WlastName}    Last Name
    ${WfirstName}   First Name
    ${Reqlname}     Last Name
    ${Reqfname}     First Name
    ${Address}      Address
#    LaunchBrowser
#    Title Should Be    Civil Registry System
#    OpenCounter     #close the counter before every run
#    Homepage
    Open Counter
    ClientCertificateRequestWA
    Click Link    ${Walkin_Menu}
    Select From List By Value    ${Transaction_Type}  AU-M
    Sleep    3
    Input Text    ${No0f_C}    1
    Input Text    ${HLN}    ${HLastName}
    Sleep    2
    Input Text    ${HFN}    ${HFirstname}
    Sleep    2
    Input Text    ${WLN}    ${WlastName}
    Input Text    ${WFN}    ${WfirstName}
    Select From List By Value    ${M_month}    01
    Input Text    ${M_Date}    01
    Input Text    ${M_year}    2018
    Execute Javascript  window.scrollTo(0,500)
    Select From List By Value    ${M_Province}    001
    Select From List By Value    ${M_City}    00101
    sleep    3s
    Select From List By Value    xpath://select[@id='cmbMarriageRequestPurpose']    CL    #${Purpose}   CL
    Sleep    5
#    Click Button    //button[@id='marriage-AddImageBtn']
    Choose File    //button[@id='marriage-AddImageBtn']    C:/Users/GiriganV/Desktop/Tiff Files/Birth certificate - tilted - 1 page.tiff
    Sleep    3sec
#    Choose File    //button[@id='marriage-AddImageBtn']     Users/GiriganV/Desktop/Tiff Files/1.tiff
#    Sleep    3sec
#    Click Button    Xpath://input[@id='txtmarriageComments']/following::button[3]
#    ScrollandClicksave

    ## Requester Details##
    Input Text    ${Req_ln}    ${Reqlname}
    Input Text    ${Req_fn}    ${Reqfname}
    Input Text    ${Req_ad}    ${Address}
    Select From List By Value    ${Req_country}     016
    Sleep    5
    Scrollbar
    Sleep    10
    FinalSubmitButton


FileUpload
    [Documentation]     Walk-in Request Entry: Verify the End To End flow client request VO-Marriage
    ${HLastName}    Last Name
    ${HFirstname}   First Name
    ${WlastName}    Last Name
    ${WfirstName}   First Name
    ${Reqlname}     Last Name
    ${Reqfname}     First Name
    ${Address}      Address
#    LaunchBrowser
#    Title Should Be    Civil Registry System
#    OpenCounter     #close the counter before every run
#    Homepage
    Open Counter
    ClientCertificateRequestWA
    Click Link    //a[text()='Walk-in Request Entry']       #${Walkin_Menu}

    Select From List By Value    ${Transaction_Type}    AU-M
#    Select From List By Value       //select[@id='WalkInTransactiontype']       U-AU-M
    Sleep    3
    Input Text    ${No0f_C}    1
    Input Text    ${HLN}    ${HLastName}
    Sleep    2
    Input Text    ${HFN}    ${HFirstname}
    Sleep    2
    Input Text    ${WLN}    ${WlastName}
    Input Text    ${WFN}    ${WfirstName}
    Select From List By Value    ${M_month}    01
    Input Text    ${M_Date}    01
    Input Text    ${M_year}    2018
    Execute Javascript  window.scrollTo(0,500)
    Select From List By Value    ${M_Province}    001
    Select From List By Value    ${M_City}    00101
    sleep    3s
    Select From List By Value    xpath://select[@id='cmbMarriageRequestPurpose']    CL    #${Purpose}   CL
#    Sleep    5sec

# below piece of code will upload any file from external library.
#    @{files}=   Authentication Upload File
#     For loop for uploaded documents    ${files}

     Wait Until Keyword Succeeds    1min    5 sec    Wait Until Element Is Visible    //button[@id='marriage-AddImageBtn']
     Wait Until Keyword Succeeds    1min    5 sec    Click Element    //button[@id='marriage-AddImageBtn']
     Sleep  5s
     File Upload    C://Users//GiriganV//Documents//Tiff_Files//uploadingfile.exe    ${files}


#    Execute Javascript      window.scrollTo(0,500)
#    Sleep    5sec
#    Sleep    3sec
    #Choose File     //button[@id='marriage-AddImageBtn']     C://Users//GiriganV//Documents//Tiff_Files//uploadingfile.exe
#    Sleep    3sec

#    Click Button    //button[@id='marriage-AddImageBtn']
##    # below code uploads the .tiff file for authentication of any certificate
#    AutoItLibrary.Run       C://Users//GiriganV//Documents//Tiff_Files//uploadingfile.exe

#    AutoItLibrary.Run   C:\Users\GiriganV\Documents\Tiff_Files\uploadingfile.exe

#    ScrollandClicksave
#    sleep    5sec
#    Execute Javascript      window.scrollTo(0,500)
    #wait until element is visible       //button[@data-bind='click:marriageSaveClick']
    sleep    10sec
#    Execute Javascript      window.scrollTo(0,500)
#    sleep    2sec

#    wait until element is enabled    //button[@data-bind='click:marriageSaveClick']
    click button        //button[@data-bind='click:marriageSaveClick']

#    Wait Until Keyword Succeeds    1min    5 sec    Wait Until Element Is Visible    //button[@data-bind='click:marriageSaveClick']    1 min
   # Wait Until Keyword Succeeds    1min    5 sec    Click Button    //button[@data-bind='click:marriageSaveClick']
#    click element       //button[@data-bind='click:marriageSaveClick']
    sleep    5sec
#    Execute Javascript      window.scrollTo(0,-500)
    ## Requester Details##
    Input Text    ${Req_ln}    ${Reqlname}
    Input Text    ${Req_fn}    ${Reqfname}
    Input Text    ${Req_ad}    ${Address}
    Select From List By Value    ${Req_country}     016
    Sleep    5
    Scrollbar
    Sleep    10
    FinalSubmitButton
    sleep    5sec
    capture page screenshot


#    AutoItLibrary.WaitForActiveWindow    WindowTitle=Open
#    AutoItLibrary.WinWaitActive    Open     &Open


AU-Bsravan
    Open Counter
    Sleep   5S
    Click Element       ${client_cert_req}
#    Click Element       ${wre_Link}
    Click Link    ${Walkin_Menu}
    Sleep   3s
#    Input Text  ${qtn}  0001
    Click Element   ${trans_type}
    Select From List By Value   ${trans_type}   AU-B
    Sleep    3s
    Input Text  ${number_of_copies}     1
    Input Text    ${child_last_name}    cln
    Input Text    ${child_firstname}    cfn
    Input Text    ${child_middlename}   cmn
    Select From List By Value   ${birth_sex}    Male
    Sleep   3s
    Select From List By Value    ${birth_month}    01
    Input Text    ${birth_date}    22
    Input Text    ${birth_year}    2022
    Select From List By Value    ${birth_country}  608
    Select From List By Value    ${birth_province}  001
    Select From List By Value    ${birth_city}  00101
    Execute Javascript  window.scrollTo(0,2000)
    Input Text  ${birth_motherlastname}    mln
    Input Text  ${birth_motherfirstname}      mfn
    Input Text  ${birth_mothermiddlename}  mmn
    Click Element   ${purpose}
    Select From List By Value   ${purpose}   CL
    Input Text  xpath=//*[@id="txtComments"]   Roboframework
#    Click Button   ${add_image}
##AddImg
    Wait Until Keyword Succeeds    1min    5s    Wait Until Element Is Visible    ${add_image}
    Wait Until Keyword Succeeds    1min    5s   Click Element    ${add_image}
    Sleep    5s
    File Upload    C://Users//GiriganV//Documents//Tiff_Files//uploadingfile.exe    ${files}
    Sleep   10s

DocumentConversion

    [Tags]  Sanity3
    [Documentation]  End to end flow for Death
    Open Counter
    Click Element    ${more_option}
    Click Element    ${select_dc}
    Click Element    ${select_dc_home}
    Scrollbar
    Sleep    3s
    Click Element    ${select_upload}
#    click button    //button[@id='birth-AddImageBtn']

    Wait Until Keyword Succeeds    1min    5 sec    Wait Until Element Is Visible    //button[@id='birth-AddImageBtn']
    Wait Until Keyword Succeeds    1min    5 sec    click button       //button[@id='birth-AddImageBtn']
    sleep    5s
    File Upload    C://Users//GiriganV//PycharmProjects//CRSITP2//Files//Tiff_Files//DocumentConversion//Docconversion.exe    ${files1}

    sleep    5s
    #AutoItLibrary.Run   C://Users//GiriganV//PycharmProjects//CRSITP2//Files//Tiff_Files//DocumentConversion//Docconversion.exe
#    SikuliLibrary.start sikuli process
##    connect sikuli process
#    SikuliLibrary.Add Image Path    C:/Users/GiriganV/PycharmProjects/CRSITP2/Files/Tiff_Files
##    SikuliLibrary.Wait Until Screen Contain     Upload.png
#    SikuliLibrary.Click     Upload.png
    Press Keys  None    TAB
    sleep    3s
#    Press Keys    ENTER

#
    handle alert    ACCEPT      1min
#    @{get_windowname}   get window handles
#    log to console    @{get_windowname}
#    select window    ${get_windowname}[1]

#    Press Keys  None  TAB
#    sleep    3s
#    Press Keys    None    ENTER
#    handle alert    ACCEPT      1min


    #C://Users//GiriganV//PycharmProjects//CRSITP2//Files//Tiff_Files//DocumentConversion//Docconversion.exe
    sleep    3s
    click element    //input[@id='UploadBtn']

Access Home Page1
    [Tags]    Sanity
    [Documentation]    This test case opens the url and accesses the Home Page of CRS after opening the counter
    Open Counter
    Title Should Be    Civil Registry System
    Click Link    Xpath://a[@id='dashboard']
    Click Link    Xpath://a[@id='101']
    Click Link    link:Walk-in Request Entry
    Select From List By Value    id:WalkInTransactiontype  RA-M
    Sleep    3s
    Select From List By Value    id:documentSubType     MA-AA
    Select Checkbox    Xpath://body[1]/div[1]/div[1]/div[5]/div[1]/div[1]/div[2]/div[3]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[1]/td[1]/input[1]
    Select Checkbox    Certificate of Finality
    Select Checkbox    Certificate of Registration of Court Decision/Order
    Sleep    3s
    Select Checkbox    Xpath://body[1]/div[1]/div[1]/div[5]/div[1]/div[1]/div[2]/div[3]/div[1]/table[1]/tbody[1]/tr[1]/td[2]/table[1]/tbody[1]/tr[1]/td[1]/input[1]
    sleep    2s
    select checkbox    xpath://input[@id='new' and @name='Annotated Certificate of Marriage']
    sleep    2s
    select checkbox    xpath://input[@id='new' and @name='Certificate of Marriage (Un-annotated)']
    select from list by index