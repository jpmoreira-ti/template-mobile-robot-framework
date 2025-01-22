*** Settings ***
Library     AppiumLibrary

*** Variables ***
${QAX_TEXT}                    QAX
${QAX_TEXT_BUTTON}             Clique em Botões
${left_side_menu_acc_id}              accessibility_id=Open navigation drawer
${click_button_menu_option_xpath}     xpath=//*[@resource-id="com.qaxperience.yodapp:id/rvNavigation"]//*[@text="Clique em Botões"]
${qax_btn_id}                         id=mi_button_cta
${qax_title_id}                       id=toolbarTitle
${click_checkbox_menu_option_xpath}   xpath=//*[@resource-id="com.qaxperience.yodapp:id/rvNavigation"]//*[@text="Check e Radio"]
${short_click_button_id}              id=short_click
${long_click_button_id}               id=long_click      


*** Keywords ***
Check title info
    Wait Until Page Contains   text=${QAX_TEXT}  
    ...    timeout=10   
    ...    error=Could not find Yoda Text 

Click initial button and check informations
    Wait Until Element Is Visible    ${qax_btn_id}      
    ...    timeout=10  
    ...    error=Could not find ${qax_btn_id} Element
    
    Click Element   ${qax_btn_id}    

    Wait Until Element Is Visible    locator=${qax_title_id}     
    ...    timeout=10  
    ...    error=Could not find ${qax_title_id} Element
    
    Element Text Should Be    ${qax_title_id}    
    ...    ${QAX_TEXT_BUTTON}
    ...    message=Could not find ${QAX_TEXT_BUTTON} Text
    
 Click menu button and check informations
    Wait Until Element Is Visible     locator=${left_side_menu_acc_id}    
    ...    timeout=10
    ...    error=Could not find ${left_side_menu_acc_id} element

    Click Element    ${left_side_menu_acc_id}

    Wait Until Element Is Visible   ${click_button_menu_option_xpath}
    ...  timeout=10
    ...  error=Could not find ${click_button_menu_option_xpath} element

 Check left menu option and check informations
    [Arguments]   ${option_menu}   ${type_click}    ${type_button_text}  
    Click Text    ${option_menu} 

    Wait Until Page Contains    text=${type_click}    timeout=10
    Click Text    text=${type_click}

    Wait Until Page Contains    text=${type_button_text}

 Click short button and check text
    [Arguments]    ${short_click_button_text} 

    Wait Until Element Is Visible    ${short_click_button_id} 
    ...   timeout=10
    ...   error=Could not find ${short_click_button_id} element

    Click Element    ${short_click_button_id}

    Wait Until Page Contains    ${short_click_button_text}


 Click checkbox option
    @{techs}    Create List    Ruby    Python    Java    Javascript    Robot Framework    
     
    FOR  ${tech}  IN  @{techs} 
        Click Element    xpath=//android.widget.CheckBox[contains(@text, "${tech}" )]
    END

Click radio button option
    [Arguments]    ${tech}
    Click Element    xpath=//android.widget.RadioButton[contains(@text, "${tech}" )] 
    Sleep    2s     

 Click long button and check text
   [Arguments]    ${long_click_button_text} 
   Wait Until Element Is Visible    ${long_click_button_id} 
   ...   timeout=10
   ...   error=Could not find ${long_click_button_id} element	

   @{positions}    Create List    ${542}    ${1220}
   Tap With Positions    1000    ${positions}

   Wait Until Page Contains    ${long_click_button_text}      

