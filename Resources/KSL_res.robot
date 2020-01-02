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
    Homepage.Loadme

Go to registration page top link
    Homepage.Go To Reg Page via Top Link

Select school for purchase
    Register.Choose My School  ${POSTCODE_CSPURCHASE}

Select school for preview
    Register.Choose My School  ${POSTCODE_CSPREVIEW}

Fill Reg Form
    Register.Fill My Form

Complete Profile on complete-profile page
    Register.Complete My Profile

Access KSL after completing Registration Journey
    Register.Welcome

Use The Just Want To Pay Link
    Register.Just Want To Pay

Buy KSL
    Purchase.Join now on reg pricing page

Complete purchase form all
    Purchase.Choose Membership duration and payment type  ${Duration_annualdebit}
    #Log to console  ${Duration_1y} not yet working
    Purchase.Fill in purchase registration form
    Purchase.Join now on reg confirm page





