*Settings
Resource       ${EXECDIR}${/}Settings.resource

*Variables
${ClaimsIndexHdr}    //*[@class="header-title"][contains(text,'INDEX FORM')]
${PrimaryPolicyNumberEdt}    //*[@id="75123bd5"]
${ClaimSearchFrame}    PegaGadget1Ifr
${DateReceivedMonthEdt}    //*[@id="$PpyWorkPage$pCase$pClaim$pReceivedDateMoSel"]
${DateReceivedDayEdt}    //*[@id="$PpyWorkPage$pCase$pClaim$pReceivedDateDySel"]
${DateReceivedYearEdt}    //*[@id="$PpyWorkPage$pCase$pClaim$pReceivedDateYrSel"]
${SubmitBtn}    //*[@title="Complete this assignment"]
${RouteToCbx}    //*[@name="$PpyWorkPage$pRouteTo"]
${DiagnosticCodeEdt}   //*[@name="$PpyWorkPage$pCase$pClaim$pDiagnosticCode"]
${CheckDuplicateBtn}    //*[@name="pyCaseHeaderOuter_pyWorkPage_11"] 
${ProcessDuplicateBtn}  //*[@name="pyCaseHeaderOuter_pyWorkPage_12"]
${DuplicateCheckResultsEdt}     //*[@id="0850c93c"]
${AuditTab}         //*[@data-layout-id="202008190424000687"]
${PenOrigin}        //*[@name="ClaimDisplayIndexForm_pyWorkPage.Case_52"]
${OriginDropDown}   //*[@name="$PpyWorkPage$pCase$pDocument$pOriginReview"]
${SecondaryPolicyNumberEdt}    //*[@id="e2fc69e1"]
${ClaimNumberEdt}      //*[@id="5cf34800"]
${PendingFlagDropdown}      //*[@id="dd6cad83"]
${YesRadioBtn}      //*[@id="33b0d54aYes"]
${pTemplateTableRow}   //table[@id="bodyTbl_right"]/tbody/tr[td//text()[contains(.,'TEMPLATE_ICMANAGER')]][td//text()[contains(.,'No Action chosen to process duplicate results.')]]



*Keywords

Populate Primary Policy Number
    [Arguments]    ${PolicyNumber}
    unselect Frame
    Select Frame    ${ClaimSearchFrame}
    Wait until element is visible    ${PrimaryPolicyNumberEdt}
    Input text    ${PrimaryPolicyNumberEdt}    ${PolicyNumber}
    Press Keys    ${PrimaryPolicyNumberEdt}    TAB
Populate Diagnostic Code
    [Arguments]     ${DiagnosticCode}
    unselect Frame
    Select Frame    ${ClaimSearchFrame}
    Wait until element is visible   ${DiagnosticCodeEdt}
    Input text  ${DiagnosticCodeEdt}    ${DiagnosticCode}

Select Date Received Month
    [Arguments]    ${Month}
    unselect Frame
    Select Frame    ${ClaimSearchFrame}
    wait until element is visible    ${DateReceivedMonthEdt}
    Select From List By label    ${DateReceivedMonthEdt}    ${Month}

Select Date Received Day
    [Arguments]    ${Day}
    wait until element is visible    ${DateReceivedDayEdt}
    Select From List By label    ${DateReceivedDayEdt}    ${Day}

Select Date Received Year
    [Arguments]    ${Year}
    wait until element is visible    ${DateReceivedYearEdt}
    Select From List By Value    ${DateReceivedYearEdt}    ${Year}

Select Received Date
    [Arguments]    ${Month}    ${Day}    ${Year}
    Select Date Received Month    ${Month}
    Select Date Received Day    ${Day}
    Select Date Received Year    ${Year}

Select Route To
    [Arguments]     ${Route}
    wait until element is visible    ${RouteToCbx}
    Select From List By Label    ${RouteToCbx}    ${Route}

Click Submit Button
    Sleep           7s
    Click Button    ${SubmitBtn}

Click Check Duplicate Button
    Sleep           7s
    Click Button    ${CheckDuplicateBtn}

Click Process Duplicate Button
    wait until element is visible   ${ProcessDuplicateBtn} 
    Click Button    ${ProcessDuplicateBtn}

Select Dupilcate Dropdown
    [Arguments]     ${Dropdown}
    wait until element is visible   ${DuplicateCheckResultsEdt}     
    Select From List By Label   ${DuplicateCheckResultsEdt}     ${Dropdown}

Click Audit TAB
    wait until element is visible       ${AuditTab}     timeout=20s
    Click element       ${AuditTab}


Click Pen Origin    
    unselect Frame
    Select Frame    ${ClaimSearchFrame}
    wait until element is visible       ${PenOrigin}     timeout=20s
    Click element        ${PenOrigin}
 
Select Origin
    unselect Frame
    Select Frame    ${ClaimSearchFrame}
       [Arguments]     ${Origin}
    wait until element is visible    ${OriginDropDown}
    Select From List By Label    ${OriginDropDown}    ${Origin}
 
Select Diagnostic Code
    unselect Frame
    Select Frame    ${ClaimSearchFrame}
 
Select Secondary Policy Number
    unselect Frame
    Select Frame        ${ClaimSearchFrame}  
        [Arguments]     ${SecondaryPolicyNumber}
    wait until element is visible   ${SecondaryPolicyNumberEdt}     
    input text      ${SecondaryPolicyNumberEdt}     ${SecondaryPolicyNumber}
 
Claim Number
    unselect Frame
    Select Frame    ${ClaimSearchFrame}
        [Arguments]     ${ClaimNumber} 
    wait until element is visible   ${ClaimNumberEdt}
    input text  ${ClaimNumberEdt}   ${ClaimNumber}   
 
Select Pending Flag
    unselect Frame
    Select Frame    ${ClaimSearchFrame}
    [Arguments]     ${Dropdown}
    wait until element is visible   ${PendingFlagDropdown}   timeout=10s
    Select From List By label    ${PendingFlagDropdown}    ${Dropdown}

Click Yes Radio Button
    wait until element is visible       ${YesRadioBtn}  timeout=20s
    Click element       ${YesRadioBtn}

Verify table contains
    [Arguments]    ${aEmployeeId}    ${aDescription}
    ${DesiredRow}=    format string    ${pTemplateTableRow}    ${aEmployeeId}    ${aDescription}
    wait until element is visible    ${DesiredRow}

Verify E-Number exists
    [Arguments]    ${aEmployeeId}   
    ${DesiredRow}=    format string    ${pTemplateTableRow}    ${aEmployeeId} 
    wait until element is visible    ${DesiredRow}


