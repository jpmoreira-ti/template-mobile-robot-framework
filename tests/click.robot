*** Settings ***
Library     AppiumLibrary
Resource    ../resources/base.resource
Resource    ../resources/env.resource
Resource    ../resources/screens/${PLATFORM}/actions.resource

*** Test Cases ***
Should be able to execute a simple click
    Start Session
    Check title info
    Click initial button and check informations
    Click menu button and check informations
    Check left menu option and check informations   Clique em Botões  Clique simples  Botão clique simples
    Click short button and check text   Isso é um clique simples
    Close Session

Should be able to execute a long click 
    Start Session
    Check title info
    Click initial button and check informations
    Click menu button and check informations
    Check left menu option and check informations    Clique em Botões  Clique longo  Botão clique longo
    Click long button and check text   Isso é um clique longo
    Close Session              