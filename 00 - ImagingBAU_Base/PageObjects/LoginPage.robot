* Settings
Resource    ${EXECDIR}${/}Settings.resource

* Variables
${pUserIDEdt}    txtUserID
${pPasswordEdt}  txtPassword
${pLoginBtn}     sub

* Keywords
Login Page Loaded
    wait until element is visible    ${pUserIDEdt}

Enter user name
    Input Text    id:${pUserIDEdt}    ${gUSERNAME}

Enter Password
    Input Text    id:${pPasswordEdt}    ${gPASSWORD}

Submit Login
    Click Button    id:${pLoginBtn}

Login to Aflac Portal
    Login Page Loaded
    Enter user name
    Enter Password
    Submit Login
