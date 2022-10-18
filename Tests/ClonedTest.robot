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