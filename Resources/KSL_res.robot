*** Settings ***
Resource  ./PO/homepage.robot
Resource  ./PO/register.robot
Resource  ./PO/purchase.robot
Resource  allmyVars.robot

*** Variables ***
${Duration_1y}           //*[@id="content"]/div/div/div/div[1]/div[2]/form/div[5]/fieldset/div/div[1]/div/label
${Duration_2y}           //*[@id="content"]/div/div/div/div[1]/div[2]/form/div[5]/fieldset/div/div[2]/div/label
${Duration_annualdebit}  //*[@id="content"]/div/div/div/div[1]/div[2]/form/div[5]/fieldset/div/div[3]/div/label


*** Keywords ***
Open Homepage
    homepage.Loadme
    homepage.Verify Page Load

Go To Login Page
    login.Load login page
    login.Verify page Load

Log in
    login.Enter and submit user details
    homepage.Verify user is logged in
Log out
    homepage.Verify user is logged in
    homepage.Log out user

Go to registration page top link
    homepage.Go To Reg Page via Top Link
    register.Verify Page Load

Select school for purchase
    register.Choose My School  ${POSTCODE_CSPURCHASE}

Select school for preview
    register.Choose My School  ${POSTCODE_CSPREVIEW}

Fill Reg Form
    register.Fill My Form

Complete Profile on complete-profile page
    register.Complete My Profile

Access KSL after completing Registration Journey
    register.Welcome

Use The Just Want To Pay Link
    register.Just Want To Pay

Buy KSL
    purchase.Join now on reg pricing page

Complete purchase form all
    purchase.Choose Membership duration and payment type  ${Duration_annualdebit}
    #Log to console  ${Duration_1y} not yet working
    purchase.Fill in purchase registration form
    purchase.Join now on reg confirm page





