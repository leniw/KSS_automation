*** Settings ***
Resource  ./PO/homepage.robot
Resource  ./PO/register.robot
Resource  allmyVars.robot

*** Keywords ***
Open Homepage
    Homepage.Loadme

Go to registration page
    Register.Go To Page

Select school
    Register.Choose My School

Fill Reg Form
    Register.Fill My Form


