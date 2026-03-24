# Plan de test -Orange HRM

## 1. Introduction

Ce document présente le plan de test de l'appication Orange HRM.

## Contexte

Orange HRM est une application web de gestion de ressources humaine. Elle permet de façon globale de gérer des employés( congés, recrutements, informations administratives...)

## Objectif

L'objectif de ce document est de définir une stratégie de test associée à des cas de test dont le but est de garantir la qualité fonctionnelle de l'application.

## Périmètre

Les fonctionnalités qui seront testées :

- Authentification
- Gestion des employés
- Changement de mot de passe
- Déconnexion

## 2.La stratégie de test

### 2.1 Les types de tests

### 2.2 Les Niveaux de test

### 2.3 L'Environnement de Test

Navigateur : Google Chrome
OS : MAC/ LINUX
Application : Orange HRW (web)
URL : https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

### 2.4 Données de Test utilisées

Utilisateur valide: Admin/ MDP: Admin123
Utilisateur Invalide: Admin/ MDP: test1234

## 3 Exigences fonctionnelles

### Exigence 1 : Authentification

L'utilisateur doit obligatoirement pouvoir se connecter pour accéder à la plateforme

### Exigence 2 : Gestion des employés

L'utilisateur doit pouvoir ajouter ou modifier les infos d'un employé dans le système ( fonctionnalité essentielle)

### Exigence 3 : Déconnexion

L'utilisateur doit avoir la capacité de se deconnecter de sa session.

### Exigence 4 : Changement de mot de passe

L'utilisateur doit être en mesure de changer de mot de passe.

## 3.1 Analyse de risque

## 4 Cas de Test

### 1 Cas de test 1 - Login de connexion valide

#### ID: TC_LOGIN_01

Exigence liée: Authentification

Description: vérifier qu'un utilisateur avec un identifiant et un mot de passe valide peut se connecter
Préconfitions : L'utilisateur a déjà un compte existant
Etapes :

1. Accéder à la page login
2. Username: saisir "Admin"
3. Passeword: saisir "admin123"

Résultat attendu:

- Redirection vers le dashboard
- Affichage des sous onglets
- Affichage du profil utilsateur

### Cas de test 2 - Login de connexion invalide

#### ID: TC_LOGIN_02

Exigence liée: Authentification
Description: vérifier qu'un utilisateur avec un identifiant et un mot de passe invalide se voit refuser l'accès.
Etapes :

1. Accéder à la page login
2. Username: saisir "Admin"
3. Passeword: saisir "test1234"

Résultat attendu:
-Message "Invalid Credentials"
-L'utilisateur reste sue la page de login

### Cas de test 3 - Ajout d'un employé (cas passant)

#### ID: TC_ADD_EMP_01

Exigence liée: gestion des employés

Description: verifier qu'on peut ajouter un employé
préconditions : L'utilisateur est connecté
Etapes

1. Accéder à l'onglet PIM
2. Cliquer sur l'onglet "Add"
3. Saisir dans les champs : -first name :saisir un prénom ex : Jean
   -Last Name:saisir un nom de famille : Peuplu
   -ID employé: XXX
4. Cliquer sur Save

Résultat attendu:
-L'employé est créé
-Message de succès affiché
-redirection vers la fiche employé

### Cas de test 4 - Ajout d'un employé avec des champs obligatoires vides (cas non passant)

#### ID: TC_ADD_EMP_02

Exigence liée: gestion des employés

Description: verifier le refus d'ajout d'un employé sans avoir renseigné les champs obligatoires
préconditions : L'utilisateur est connecté
Etapes

1. Accéder à l'onglet PIM
2. Cliquer sur l'onglet "Add"
3. Ne rien saisir dans les champs
4. Cliquer sur Save

Résultat attendu:
-Message d'erreur sur les champs obligatoires
-Pas de création de nouvel employé

### Cas de test 5 - Déconnexion (cas passant)

#### ID: TC_LOGOUT_01

Exigence liée: deconnexion

Description: verifier que l'utilisateur peut correctement se déconnecter
préconditions : L'utilisateur est connecté

Etapes

1. cliquer sur l'icone utilisateur
2. Cliquer sur logout

Résultat attendu:
-redirection vers la page login
-session terminée

### Cas de test 6 - Déconnexion (cas non passant)

#### ID: TC_LOGOUT_02

Exigence liée: deconnexion

Description: verifier que l'utilisateur n'a plus accès après la déconnexion
préconditions : L'utilisateur est connecté

Etapes

1. cliquer sur l'icone utilisateur
2. Cliquer sur logout
3. cliquer sur le bouton retour du navigateur

Résultat attendu:
-redirection vers le dashboard refusé
-redirection sur la page de connexion

### Cas de test 7 - Mot de passe

### ID: TC_PASSWORD_01

Exigence liée: changement de mot de passe

Description: verifier que l'utilisateur peut changer son mot de passe
préconditions : être connecté

Etapes

1. cliquer sur l'icône utilisateur
2. aller dans "change passeword"
3. saisir :- l'ancien mot de passe (mdp) - le nouveau mdp de son choix - saisir de nouveau le nouveau mdp
4. valider

Résultat attendu:
-message de mdp changé avec succès
