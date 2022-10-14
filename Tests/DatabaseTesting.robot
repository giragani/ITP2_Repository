*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

*** Variables ***
#${db_name}      USTR-ERL2-3630.na.uis.unisys.com
${db_name}      Civil Registry System
${db_user}      PSATestTeam
${db_password}      PSATestTeam*Live
#${db_host}      USTR-ERL2-3630
${db_host}      10.62.150.248
${db_port}      3630

*** Test Cases ***
Connection To Database
    connect to database    pymssql      ${db_name}      ${db_user}      ${db_password}      ${db_host}      ${db_port}
    #${connection}   execute sql string


*** Keywords ***
