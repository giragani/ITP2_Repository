*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library     String
Library     C:/Users/GiriganV/PycharmProjects/CRSITP2/Resources/upload.py
Library     Process
Library     Collections
Resource    C:/Users/GiriganV/PycharmProjects/CRSITP2/ObjectRepository/ITP2Locators.robot
Variables    C:/Users/GiriganV/PycharmProjects/CRSITP2/ObjectRepository/Locators.py
#Variables    C:/Users/GiriganV/PycharmProjects/CRSITP2/ObjectRepository/Locators.py
#Variables    C:/Users/GiriganV/PycharmProjects/CRSITP2/ObjectRepository/Locators.py     application_home_page
*** Variables ***
${browser}    chrome
${url_qa}    http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tR0lSSUdBTlY=

*** Keywords ***
Open Counter
    [Documentation]    This keyword opens the counter of CRS application
    Open Browser    ${url_qa}    ${browser}
    #Run Process     Powershell.exe      C:/Users/GiriganV/Desktop/PSA/Powershell Script_Application Login/2022/PSA LOGGIN QA1-NEW.ps1
    #set window size  800    600
    Maximize Browser Window

    Click Button    ${open_button}
    Wait Until Element Is Visible    ${close_success_button}
    Sleep    2
    Click Button    ${close_success_button}
    Sleep    2
    Execute javascript       document.body.style.zoom="90%"
    Click Link    ${application_home}

################ Swagatha'a##################

ClientCertificateRequestWA
    Click Link    Xpath://a[@id='101']
Scrollbar
    Execute Javascript  window.scrollTo(0,2000)
ScrollandClicksave
    Execute Javascript  window.scrollTo(0,2000)
    Click Button    Xpath://input[@id='txtmarriageComments']/following::button[3]

FinalSubmitButton
    Click Button    Xpath://button[@id='finalSubmitbtn' and text()='Submit']
CloseOverlay
    Click Element    //div[@class='modal-header']/following::button[@onclick='modelCloseClick()']

Authentication Upload File

    #[Arguments]    ${files}
    ${files}    Create list
    Append To List    ${files}    C:\Users\GiriganV\PycharmProjects\CRSITP2\Files\Tiff_Files\Page-2.tiff
#    Append To List    ${files}    ${FileLoc}\A6-NoticesDoc.tif

    [Return]    ${files}


For loop for uploaded documents
    [Arguments]    ${files}
    ${count}    Get Length    ${files}
    FOR    ${i}    IN RANGE    0    ${count}
        Wait Until Keyword Succeeds    1min    5 sec    Wait Until Element Is Visible    //button[@id='marriage-AddImageBtn']    1 min
        Wait Until Keyword Succeeds    1min    5 sec    Click Element    //button[@id='marriage-AddImageBtn']
        Sleep  5s
        #Log    @{files}[${i}]
        #File Upload    C:\Users\GiriganV\PycharmProjects\CRSITP2\Files\Tiff_Files\FileUploadAutoIt3.exe    ${files}[${i}]
        File Upload    C://Users//GiriganV//Documents//Tiff_Files//uploadingfile.exe    ${files}[${i}]
#        Wait Until Keyword Succeeds    1min    5 sec    Wait Until Element Is Visible    //span[contains(text(),'.tif')]    1 min
#      ${j}=    Evaluate    ${i}+1
#        Run Keyword If    '${i}' == '0'    Run Keywords    Sleep    10 sec
#        ...    AND    Wait Until Keyword Succeeds    1min    5 sec    Wait Until Element Is Enabled    //span[@id='dijit_form_Button_5_label'][contains(text(),'Scan')]    1 min
#      ...    AND    Sleep    10 sec
#        ...    AND    Wait Until Keyword Succeeds    1min    5 sec    Click Element    //span[@id='dijit_form_Button_5_label'][contains(text(),'Scan')]
#        ...    AND    Sleep    5 sec        #...    AND    Wait Until Keyword Succeeds    1min    5 sec    Wait Until Element Is visible    //span[@id='idx_layout_TitlePane_2_titleNode'][contains(text(),'Scanned Pages (${j}/${j}')]    1 min
#        ...    AND    Continue For Loop
#        ...    ELSE    Run Keywords    Sleep    5 sec
#      ...    AND    Wait Until Keyword Succeeds    1min    5 sec    Wait Until Element Is Enabled    //span[@id='dijit_form_DropDownButton_1_label']    1 min
#      ...    AND    Sleep    2 sec
#        ...    AND    Wait Until Keyword Succeeds    1min    5 sec    Click Element    //span[@id='dijit_form_DropDownButton_1_label']          #[contains(text(),'Scan')]
#        ...    AND    Wait Until Keyword Succeeds    1min    5 sec    Wait Until Element Is Visible    //td[@id='dijit_MenuItem_10_text']
#        ...    AND    Wait Until Keyword Succeeds    1min    5 sec    Click Element    //td[@id='dijit_MenuItem_10_text']        #...    AND    Wait Until Keyword Succeeds    1min    5 sec    Wait Until Element Is visible    //span[@id='idx_layout_TitlePane_2_titleNode'][contains(text(),'Scanned Pages (${j}/${j}')]    1 min
#        ...    AND    Sleep    8 sec
        Log    Uploaded file name is>>>>>${files}[${i}]
    END




File Upload
    [Arguments]    ${path}    ${file}
    uploadFile    ${path}    ${file}

