*** Settings ***
Resource  ../Resources/KSL_res.robot
Resource  ../Resources/common_res.robot
Test Setup  common_res.Begin Web Test
Test Teardown   common_res.End Web Test

*** Test Cases ***
User should be able to log in and out
    [Tags]    Login
    KSL_res.Open Homepage
    KSL_res.Go To Login Page
    KSL_res.Log in
    KSL_res.Log out


*** Keywords ***
