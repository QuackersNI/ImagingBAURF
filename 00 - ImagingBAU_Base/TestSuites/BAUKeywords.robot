* Settings
Documentation    The keywords in this file are intended for all test suites
...              contained in any of the feature folders in this root directory
Resource    ${EXECDIR}${/}Settings.resource


* Keywords
Navigate to
    [Arguments]    ${myLocation}
    Run Keyword    ${myLocation}

Sign in page
    Open Browser    ${HostURL}     ${gBrowser}    timeout=60s
    Maximize Browser Window

Sign in page -> Create Claim Case
    Sign in page
    Login to Aflac Portal
    Click Create
    click Claim 
    
Sign out and close 
    Log Out
    Close Browser

Wait for Pega Amination to disappear
    ${SpinnyPresent}=  Run Keyword And Return Status    wait until page contains element   ${PegaSpinny}    timeout=10s
    run keyword if    '${SpinnyPresent}'=='True'
    ...    Wait Until Page Does Not Contain Element    ${PegaSpinny}    timeout=20s

