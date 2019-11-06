*** Settings ***
Documentation    Everything installed correctly - congratulations
Resource  ../Resources/allmyVars.robot

*** Test Cases ***
ForScratch
    MyKeyword  @{REGDATA}

*** Keywords ***
MyKeyword
    [Arguments]  @{VAR1}
    Log  @{VAR1}[0]
    Log  @{VAR1}[1]
    Log  @{VAR1}[2]
    Log  @{VAR1}[3]
