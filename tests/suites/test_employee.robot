*** Settings ***
Resource          ../resources/login_page.resource
Resource          ../resources/employee_page.resource
Test Setup        Open Browser And Go To Login
Test Teardown     Close Test Browser

*** Test Cases ***

TC_ADD_EMP_01
    [Documentation]    Vérifie que l'utilisateur peut ajouter un nouvel employé.
    [Tags]    employee    automatise
    Login With Valid Credentials
    Naviguer Vers La Liste Des Employés
    Accéder Au Formulaire Ajout Employé
    Remplir Et Soumettre Le Formulaire    Jean    Peuplu

TC_ADD_EMP_02
    [Documentation]    Vérifie que l'utilisateur ne peut pas ajouter un employé avec des champs obligatoires vides.
    [Tags]    employee    negatif
    Login With Valid Credentials
    Naviguer Vers La Liste Des Employés
    Accéder Au Formulaire Ajout Employé
    Click Element    ${ADD_SAVE_BUTTON}
    Wait Until Element Is Visible    xpath=//span[contains(@class,'oxd-input-field-error-message')]    10s