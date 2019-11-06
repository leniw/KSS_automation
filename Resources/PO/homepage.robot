*** Settings ***
Library  Selenium2Library
Library  BuiltIn

*** Variables ***




*** Keywords ***
Loadme
    Go To    ${URL}
    Title Should Be    The Key for School Leaders
    #Sleep   3s