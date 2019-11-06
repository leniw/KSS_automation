*** Settings ***
Resource  ../Resources/KSL_res.robot
Resource  ../Resources/common_res.robot
Test Setup  common_res.Begin Web Test
Test Teardown   common_res.End Web Test

*** Test Cases ***

Logged out user must register to unlock article
    KSL_res.Open Homepage
    KSL_res.Go to registration page
    KSL_res.Select school
    KSL_res.Fill Reg Form
# continue with filling the complete your profile form




#Another test as an example repeating the first one
#    KSL_res.Open Homepage
#    KSL_res.Go to registration page
#    KSL_res.Select school




*** Keywords ***

*** Variables ***
