*** Settings ***
Resource  ../Resources/KSL_res.robot
Resource  ../Resources/common_res.robot
Test Setup  common_res.Begin Web Test
Test Teardown   common_res.End Web Test

*** Variables ***


*** Test Cases ***
Logged out should be able to purchase without registration
    KSL_res.Open Homepage
    KSL_res.Go to registration page top link
    KSL_res.Select school for purchase
    KSL_res.Use The Just Want To Pay Link
    KSL_res.Buy KSL
    KSL_res.Complete purchase form all

*** Keywords ***


##${PC_PURCHASE}    LE! ?WU my new message
#@{MYLIST}    one  two  three

#
#*** Test Cases ***
#Print the postcode
#    Log  ${PC_PURCHASE}
#
#Print local variable
#    [Tags]  current
#    ${var_local}  Set Variable  I am local
#    Log  ${var_local}
#    Log  @{MYLIST}[0]
#
#Written to fail
#    [Tags]   hello
#    Log  ${var_local}
