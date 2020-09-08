###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.robot file and each page
# object file should be listed in the Settings.robot file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}Settings.resource

* Variables

${BodyiFrame}    PegaGadget0Ifr   
${ProfileBtn}    //*[@data-test-id="px-opr-image-ctrl"]
${ClaimBtn}    //*[@class="menu-item menu-item-enabled menu-item-active"]    
${LogOffBtn}    //*[@class="menu-item-title"][contains(text(),'Log off')]
${PegaSpinny}    //*[@class="anim"]

* Keywords
Click Profile button
    unselect Frame
    wait until element is visible    ${ProfileBtn}
    click element    ${ProfileBtn}

Click Logoff
    Wait until element is visible   ${LogOffBtn}
    click element    ${LogOffBtn}

Click Create
    Click link    Create

Click Claim
    wait until element is visible    ${ClaimBtn}
    click element    ${ClaimBtn}

Log Out
    Click Profile Button
    Click Logoff