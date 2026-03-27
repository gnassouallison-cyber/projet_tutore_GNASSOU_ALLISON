# Plan de test -Orange HRM

## 1. Introduction

Ce document présente le plan de test de l'appication Orange HRM, réalisé dans le cadre d'un projet menée par une équipe de 4 personnes.

## Contexte

Orange HRM est une application web de gestion de ressources humaine. Elle permet de façon globale de gérer des employés( congés, recrutements, informations administratives...)

## Objectif

L'objectif est dans un premier temps de définir les fonctionnalités qui devront être testé. Ensuite, une analyse des risques permettra de mettre en évidence les zones critiques. Cette étape aide à prioriser les efforts de tests en se focalisant sur ce qui a les plus de valeur. Ensuite, nous passerons à la conception des cas de test dont le but est de traduire les besoins et les risques en scénarions concrets tout en garantissants une traçabilité avec les exigences prévues initialement.

## Organisation de l'équipe

- 1 dev
- 1 QA
- 1 product Owner
- 1 personne support

## Périmètre de test

Le module Authentification et gestion de session : ce module couvre la connexion à l’application, la déconnexion et le changement de mot de passe. il conditionne l'accès à toute l'application. Une defaillance à ce niveau pourrait compromettre la sécurité globale ou empêcher les utilisateurs concernées d'y accéder.

Le module de gestion des employés (fonctionnalité principale): doit être testé car il permet la création , la modification(..) des informations liées aux employés afin de garantir la fiabilité des données et le bon fonctionnement de l'application web.

## Hors Périmètre

Les tests de performances, de sécurité avancées et les tests API ne sont pas prioritaire dans ce projet. Ils pourront cepandant être réalisés dans une phase ultérieure car le projet est limité en temps et ressources, l'obectif est principalement dans un premier temps de valider les fonctionnalités qui seront viibles par l'utilisateur et enfin les tests fonctionnels couvrent les cas critiques du métier (fonctionnalités essentielles).

## User Stories

Lien vers le tableau des US :
https://docs.google.com/spreadsheets/d/1NkOJtQMJezCimVeCaV2viQrUbwivRU5jVwj4Epe5khI

## 2.La stratégie de test

### 2.1 Les types de tests

Nous aurons recours aux tests fonctionnels dans un premeier temps car ils permettront de verifier le bon fonctionnement des fonctionnalités principales de l'application (notamment l'authentification, le changement de mot de passe, la déconnexion et la gestion des employés). Dans un second temps, des tests automatisés pour gagner du temps sur certains test répétitifs (connexion...)

### 2.2 Les Niveaux de test

Nous ferons des tests systèmes qui consisteront à tester l'application comme un utilisateur final.

### 2.3 L'Environnement de Test

Navigateur : Google Chrome
OS : MAC
Application : Orange HRW (web)
URL : https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

### 2.4 Données de Test utilisées

Utilisateur valide: Admin/ MDP: Admin123
Utilisateur : Admin/ MDP: test1234
Nouvel Employé : FirstName : Jean /Last Name : Peuplu

## 3 Exigences fonctionnelles

### Exigence 1 : Authentification

L'utilisateur doit obligatoirement pouvoir se connecter pour accéder à la plateforme

### Exigence 2 : Déconnexion

L'utilisateur doit avoir la capacité de se deconnecter de sa session.

### Exigence 3 : Changement de mot de passe

L'utilisateur doit être en mesure de changer de mot de passe.

### Exigence 4 : Gestion des employés

L'utilisateur doit pouvoir consulter, ajouter ou modifier les infos d'un employé dans le système ( fonctionnalité essentielle)

## 3.1 Analyse de risque

Lien vers le tableau d'analyse des risques :
https://docs.google.com/spreadsheets/d/1IX6nz7wv9Gp56OftJH3X_wgDk9FWdVnpERDtTqERsms/edit?gid=0#gid=0

## 3.2 Effort de test

Lien vers le tableau d'analyse des risques :
https://docs.google.com/spreadsheets/d/1IX6nz7wv9Gp56OftJH3X_wgDk9FWdVnpERDtTqERsms/edit?gid=2003534584#gid=2003534584

## 3.3 DoR et DoD

Les DoR et DoD permettent de s’assurer que les exigences sont bien définies et que les fonctionnalités sont correctement testées et validées.

https://docs.google.com/spreadsheets/d/1Wkq-CsPVFNnJ1TkkTwZ8w0VIcXCydQVPjaCkoioHucU/edit?usp=sharing

## 4 Cas de Test

Lien vers le tableau des cas de test :
https://docs.google.com/spreadsheets/d/1NkOJtQMJezCimVeCaV2viQrUbwivRU5jVwj4Epe5khI/edit?gid=1327097477#gid=1327097477

## Matrice de couverture des risques

Lien vers le tableau la matrice de couverture :
https://docs.google.com/spreadsheets/d/1NkOJtQMJezCimVeCaV2viQrUbwivRU5jVwj4Epe5khI/edit?gid=62569974#gid=62569974
