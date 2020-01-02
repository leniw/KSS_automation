*** Settings ***
Resource  ../Resources/KSL_res.robot
Resource  ../Resources/common_res.robot
Test Setup  common_res.Begin Web Test
Test Teardown   common_res.End Web Test


*** Test Cases ***

Logged out should be able to register for free trial
    KSL_res.Open Homepage
    KSL_res.Go to registration page top link
    KSL_res.Select school for preview
    KSL_res.Fill Reg Form
    KSL_res.Complete Profile on complete-profile page
    KSL_res.Access KSL after completing Registration Journey

Logged out should be able to register for purchase





# continue with accessing KSL




#Another test as an example repeating the first one
#    KSL_res.Open Homepage
#    KSL_res.Go to registration page
#    KSL_res.Select school



*** Keywords ***

*** Variables ***
