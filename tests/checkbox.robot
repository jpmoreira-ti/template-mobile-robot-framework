*** Settings ***
Library     AppiumLibrary
Resource    ../resources/base.resource
Resource    ../resources/env.resource
Resource    ../resources/screens/${PLATFORM}/actions.resource

*** Test Cases ***
Should be able to click on checkbox option
    Start Session
    Check title info
    Click initial button and check informations
    Click menu button and check informations
    Check left menu option and check informations   Check e Radio    Checkbox   Checkbox
    Click checkbox option
    Close Session
    