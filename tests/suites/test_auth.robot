*** Settings ***
Documentation     Suite de tests – Module Authentification et Gestion de sessions
...               Application : Orange HRM

Resource          ../resources/login_page.resource
Test Setup        Open Browser And Go To Login
Test Teardown     Close Test Browser

*** Test Cases ***

TC_LOGIN_01 Connexion Avec Identifiants Valides
    [Documentation]    Vérifie qu'un utilisateur peut se connecter avec Admin/admin123
    ...                et être redirigé vers le Dashboard.
    [Tags]    authentification    haute-priorite    
    Login With Valid Credentials
    Title Should Be    OrangeHRM

TC_LOGIN_02 Connexion Avec Identifiants Invalides
    [Documentation]    Vérifie qu'un utilisateur ne peut pas se connecter avec des identifiants invalides.
    ...                et reçoit un message d'erreur.
    [Tags]    authentification    haute-priorite    
    Login With Invalid Credentials
    Element Should Be Visible    xpath=//div[contains(@class,'oxd-alert-content')]
    Element Should Contain    xpath=//div[contains(@class,'oxd-alert-content')]    Invalid credentials

TC_LOGOUT_01 Déconnexion Utilisateur
    [Documentation]    Vérifie que l'utilisateur peut se déconnecter
    ...                et est redirigé vers la page de login.
    [Tags]    authentification    haute-priorite    
    Login With Valid Credentials
    Logout
    Element Should Be Visible    name:username
