***Settings***
library    SeleniumLibrary


*** Variables ***
${PIM_MENU_LINK}             xpath=//span[text()='PIM']
${EMPLOYEE_LIST_TITLE}       xpath=//a[text()='Employee List']
${EMPLOYEE_ADD_BUTTON}       xpath=//button[normalize-space()='Add']
${ADD_FIRSTNAME_FIELD}       xpath=//input[@name='firstName']
${ADD_LASTNAME_FIELD}        xpath=//input[@name='lastName']
${ADD_SAVE_BUTTON}           xpath=//form[contains(@class,'oxd-form')]//button[@type='submit' and normalize-space()='Save']

*** Keywords ***

Naviguer Vers La Liste Des Employés
    Click Element                    ${PIM_MENU_LINK}
    Wait Until Element Is Visible    ${EMPLOYEE_LIST_TITLE}    10s


Accéder Au Formulaire Ajout Employé
    Click Element                    ${EMPLOYEE_ADD_BUTTON}
    Wait Until Element Is Visible    ${ADD_FIRSTNAME_FIELD}    10s

Remplir Et Soumettre Le Formulaire
    [Arguments]    ${prenom}    ${nom}
    Input Text     ${ADD_FIRSTNAME_FIELD}    ${prenom}
    Input Text     ${ADD_LASTNAME_FIELD}     ${nom}
    Click Button   ${ADD_SAVE_BUTTON}
    Wait Until Page Contains    Personal Details    20s
    Wait Until Page Contains    ${prenom} ${nom}    20s