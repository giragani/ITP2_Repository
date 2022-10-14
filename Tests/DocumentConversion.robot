*** Settings ***
Library     SikuliLibrary   mode=NEW
Library           OperatingSystem
*** Variables ***

*** Keywords ***


*** Test Cases ***
Documents Upload
    start sikuli process
    Add Image Path    C:\Users\GiriganV\PycharmProjects\CRSITP2\Files\Tiff_Files\Images
    Click   Windows.png
    Click   Chrome.png
    Input Text      http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tR0lSSUdBTlY=

#