# Page object for registration page
# /register/
# and subpages
# /register/complete-profile/
# /register/welcome/
# e.g.
# https://schoolleaders.uat-keylabs.com/register/

*** Settings ***
Library  Selenium2Library
Library  BuiltIn

*** Variables ***
# /register/
${REGISTER_FIELD_POSTCODE}             //*[@id="newPostcode"]
${REGISTER_BUTTON_SUBMITPOSTCODE}      //*[@id="content"]/div/div[1]/div/div[1]/div[2]/form/div[2]/div[1]/button
${REGISTER_DROPDOWN_SCHOOLSELECT}      xpath=//div[2]/ul/li/a
${REGISTER_TEXT_SCHOOLSELECTED}        Your login details
${REGISTER_LINK_JUSTWANTTOPAY}         xpath=//a[contains(text(),'Skip this: I just want to pay')]
${PRICING_TEXT_SELECTYOURMEMBERSHIP}   Select your membership
${REGISTER_BUTTON_SUBMIT}              //*[@id="content"]/div/div[1]/div/div[1]/div[2]/form/div[4]/div/button
${COMPLETEPROFILE_TEXT_COMPLETEYOURPROFILE}     Complete your profile

# /register/complete-profile/
${COMPLETEPROFILE_SELECT_ROLE1}           css=.form-group:nth-child(1) .btn  #the id slector does not work for some reason; two css elemets have to be selected
${COMPLETEPROFILE_SELECT_ROLE2}           css=li:nth-child(2) .text
@{COMPLETEPROFILE_DROPDOWN_HEADTEACHER}   id=registerRole    Headteacher
${COMPLETEPROFILE_SELECT_REFERER1}        css=.form-group:nth-child(4) .btn
${COMPLETEPROFILE_SELECT_REFERER2}        css=.show > .inner > .dropdown-menu > li:nth-child(2) .text
@{COMPLETEPROFILE_DROPDOWN_EMAILFROMTHEKEY}      id=registerReferer      Email from The Key
${COMPLETEPROFILE_BUTTON_SUBMIT}               xpath=//button[@type='submit']
${WELCOME_TEXT_WELCOMETOTHEKEY}                Welcome to The Key

# /register/welcome/
${WELCOME_BUTTON_SUBMIT}  //*[@id="content"]/div[2]/div/div[1]/p/a
${POPUP_TEXT_SIDETOUR1}   Stay informed




*** Keywords ***

##########################################################################
# /register/
##########################################################################
Choose My School
    [Arguments]  ${POSTCODE}
    Input Text  ${REGISTER_FIELD_POSTCODE}    ${POSTCODE}
    Sleep   3s
    Click Button  ${REGISTER_BUTTON_SUBMITPOSTCODE}
    Sleep  3s
    Click Link  ${REGISTER_DROPDOWN_SCHOOLSELECT}
    #Click Link  css=.dynamic-link
    #Click Link  xpath=//a[contains(text(),'TTO Check Steps Preview')]
    #Click Link  xpath=//div[@id='popover830246']/div[2]/ul/li/a
    #Click Link  xpath=//a[contains(.,'TTO Check Steps Preview')]
    Wait Until Page Contains  ${REGISTER_TEXT_SCHOOLSELECTED}
    Sleep  3s
    #End Web Test

Just Want To Pay
    Click Link  ${REGISTER_LINK_JUSTWANTTOPAY}
    Wait Until Page Contains  ${PRICING_TEXT_SELECTYOURMEMBERSHIP}
    Sleep  10s

Fill My Form
    Input Text  id=registerEmail    ${USERNAME_DYNAMIC}
    #Log to Console  ${USERNAME_DYNAMIC}
    Input Text  id=registerFirstname    @{REGDATA}[0]
    Input Text  id=registerLastname    @{REGDATA}[1]
    Input Text  id=registerPassword    @{REGDATA}[2]
    Sleep  1s
    Click Button  ${REGISTER_BUTTON_SUBMIT}  # no clue why but here you have to click this button two times to proceed; this happens every second time
    Sleep  10s
    Click Button  ${REGISTER_BUTTON_SUBMIT}
    Wait Until Page Contains  ${COMPLETEPROFILE_TEXT_COMPLETEYOURPROFILE}



##########################################################################
# /register/complete-profile/
##########################################################################

Complete My Profile
    Click Element  ${COMPLETEPROFILE_SELECT_ROLE1}
    Sleep  3s
    Click Element  ${COMPLETEPROFILE_SELECT_ROLE2}
    Sleep  3s
    Select From List By Label   @{COMPLETEPROFILE_DROPDOWN_HEADTEACHER}[0]  @{COMPLETEPROFILE_DROPDOWN_HEADTEACHER}[1]
    #headteacher   //*[@id="content"]/div/div/div/div[1]/div/form/div/div[1]/div[1]/div/div/ul/li[2]/a/span[2]
    Sleep  3s
    Click Element   ${COMPLETEPROFILE_SELECT_REFERER1}
    Sleep  3s
    Click Element   ${COMPLETEPROFILE_SELECT_REFERER2}
    Sleep  3s
    Select From List By Label   @{COMPLETEPROFILE_DROPDOWN_EMAILFROMTHEKEY}[0]  @{COMPLETEPROFILE_DROPDOWN_EMAILFROMTHEKEY}[1]
    Sleep  3s
    Click Button    ${COMPLETEPROFILE_BUTTON_SUBMIT}
    Wait Until Page Contains    ${WELCOME_TEXT_WELCOMETOTHEKEY}


##########################################################################
# /register/welcome/
##########################################################################

Welcome
    Click Button  ${WELCOME_BUTTON_SUBMIT}
    Wait Until Page Contains    ${POPUP_TEXT_SIDETOUR1}

