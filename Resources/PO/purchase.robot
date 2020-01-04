# Page object for purchase operation
# /register/pricing/
# /register/confirm/
# e.g.
# https://schoolleaders.uat-keylabs.com/register/pricing

*** Settings ***
Library  Selenium2Library
Library  BuiltIn

*** Variables ***
# naming convention: PO_Element_Description
# /register/pricing/

${PRICING_BUTTON_PURCHASE_SUBMIT}           //*[@id="content"]/div/div[1]/div[2]/div/div/div[2]/div/div[2]/div/form/button
${CONFIRM_TEXT_YOURSCHOOLSMEMEBERSHIP}      Your school's membership

# /register/confirm/
${CONFIRM_SELECT_DURATION}    id_duration_1
${CONFIRM_FIELD_EMAIL}        id=id_email
${CONFIRM_FIELD_NAME}         id=id_name
${CONFIRM_FIELD_ROLE}         id=id_role
${CONFIRM_BUTTON_JOINNOW}     //*[@id="content"]/div/div/div/div[1]/div[2]/form/div[7]/button
${CONFIRM_TEXT_WELCOME}       Welcome to The Key

*** Keywords ***
##########################################################################
# /register/pricing/
##########################################################################
Join now on reg pricing page
  Click Button    ${PRICING_BUTTON_PURCHASE_SUBMIT}
  Wait Until Page Contains   ${CONFIRM_TEXT_YOURSCHOOLSMEMEBERSHIP}


##########################################################################
# /register/confirm/
##########################################################################
Choose Membership duration and payment type
  [Arguments]  ${Duration}
  Page Should Contain Radio Button  ${CONFIRM_SELECT_DURATION}
  Click Element   ${Duration}  #${Duration} #id_duration_1   #
  #Select Radio Button    duration   1

Fill in purchase registration form
   Input Text  ${CONFIRM_FIELD_EMAIL}   ${USERNAME_DYNAMIC}
   Input Text  ${CONFIRM_FIELD_NAME}   @{REGDATA}[0]
   Input Text  ${CONFIRM_FIELD_ROLE}   @{ROLEDATA}[0]

   Sleep  10s

Join now on reg confirm page
  Click Button   ${CONFIRM_BUTTON_JOINNOW}
  Wait Until Page Contains  ${CONFIRM_TEXT_WELCOME}