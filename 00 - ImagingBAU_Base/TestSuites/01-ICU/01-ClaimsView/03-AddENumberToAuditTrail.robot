*Settings
Resource    ${EXECDIR}${/}TestSuites${/}01-ICU${/}ICUKeywords.robot
Test Setup    Sign in page -> Create Claim Case
#Test teardown    Sign out and close

*Test Cases
Add E-Number to Audit Trail
    [tags]    WIP2
    Select Received Date    01    01    2020
    Populate Primary Policy Number    A0002826
    Wait for Pega Amination to disappear
    Click Check Duplicate Button
    Click Process Duplicate Button
    Select Dupilcate Dropdown  No Action
    Click Submit Button
    Click Audit TAB
    Verify E-Number exists     TEMPLATE_ICMANAGER    
   # Verify table contains    TEMPLATE_ICMANAGER    No Action chosen to process duplicate results.
    
    #Select Origin      FAX
    #Click Pen Origin  
    #Select Secondary Policy Number     a0002826
    #Select Pending Flag        P  
    #Claim Number       12345678
    #Populate Diagnostic Code       12345