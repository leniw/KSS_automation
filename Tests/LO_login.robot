*** Settings ***
Resource  ../Resources/KSL_res.robot
Resource  ../Resources/common_res.robot
Test Setup  common_res.Begin Web Test
Test Teardown   common_res.End Web Test

*** Test Cases ***
Logged out user should be able to log in
    [Tags]    DEBUG
    KSL_res.Open Homepage

*** Keywords ***
