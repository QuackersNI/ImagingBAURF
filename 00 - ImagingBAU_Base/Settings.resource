###########################################################################
# This file will be used to import all necessary libraries or resource that
# could be needed anywhere in this project. Any test suite, keyword file,
# page object, test data file, environment file, etc., can simply reference
# this dependencies file by using the following settings.
#
# * Settings
# Resource    ${EXECDIR}${/}Dependencies.robot

# The only exception this rule is any keywords.robot files. These should
# only be referenced in settings of test suites where they are relevant.
###########################################################################

* Settings
Library     SeleniumLibrary
Resource    ${EXECDIR}${/}TestSuites${/}BAUKeywords.robot
Resource    ${EXECDIR}${/}Environments${/}${Environment}.robot
Resource    ${EXECDIR}${/}PageObjects${/}LoginPage.robot
Resource    ${EXECDIR}${/}PageObjects${/}BasePage.robot
Resource    ${EXECDIR}${/}PageObjects${/}SearchClaim.robot
Library     String

* Variables
${Environment}   Dev
${gBrowser}      Chrome

