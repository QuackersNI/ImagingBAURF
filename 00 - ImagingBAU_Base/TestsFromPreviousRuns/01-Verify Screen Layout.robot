*Settings
Resource    ${EXECDIR}${/}TestSuites${/}01-ICU${/}ICUKeywords.robot
Test Setup    Sign in page -> Create Claim Case
Test teardown    Sign out and close

*Test Cases
Verify Screen layout
    [tags]    WIP
    # Populate Primary Policy Number    A0002826
    Select Received Date    01    01    2020
    Select Route To    Approval
    Populate Primary Policy Number    A0002826
    Populate Diagnostic Code  Test
    Click Submit Button



