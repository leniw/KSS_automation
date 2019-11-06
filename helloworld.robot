*** Settings ***
Documentation    Everything installed correctly - congratulations
Library  Selenium2Library

*** Test Cases ***
Test open KSL
  [Tags]  Smoke
  Open Browser   https://schoolleaders.thekeysupport.com/
  Sleep  2s
  Close Browser