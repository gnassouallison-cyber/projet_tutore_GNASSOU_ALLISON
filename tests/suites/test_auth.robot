*** Settings ***
Documentation     Suite de tests – Module Authentification et Gestion de sessions
...               Application : Orange HRM
...               Exigences couvertes : EXG-01, EXG-02
...               Cas de test : CT-01-01, CT-01-05
Resource          ../resources/keywords.resource
Test Setup        Open Browser And Go To Login
Test Teardown     Close Test Browser

*** Test Cases ***

CT-01-01 Connexion Avec Identifiants Valides
    [Documentation]    Vérifie qu'un utilisateur peut se connecter avec Admin/admin123
    ...                et être redirigé vers le Dashboard.
    [Tags]    authentification    haute-priorite    automatise    EXG-01
    Login With Valid Credentials
    Title Should Be    OrangeHRM

CT-01-05 Déconnexion Utilisateur
    [Documentation]    Vérifie que l'utilisateur peut se déconnecter
    ...                et est redirigé vers la page de login.
    [Tags]    authentification    haute-priorite    automatise    EXG-01
    Login With Valid Credentials
    Logout
    Element Should Be Visible    name:username
