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

