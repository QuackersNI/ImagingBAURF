*Settings
Resource    ${EXECDIR}${/}TestSuites${/}01-ICU${/}ICUKeywords.robot
Test Setup    Sign in page -> Create Claim Case
#Test teardown    Sign out and close

*Test Cases
Dupilcation Process
    [tags]    WIP
    Select Received Date    01    01    2020
    Populate Primary Policy Number    A0002826
    Wait for Pega Amination to disappear
    Click Check Duplicate Button
    Click Process Duplicate Button
    
    
    