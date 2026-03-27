# Projet de test – Orange HRM

## Description

Ce projet a pour objectif de concevoir et exécuter des tests fonctionnels sur l’application Orange HRM.

Il comprend :

- la conception d’un plan de test
- la définition des exigences fonctionnelles
- la rédaction des cas de test
- l’exécution des tests manuels
- l’automatisation de certains scénarios avec Robot Framework

## L' Objectif

L’objectif est de vérifier le bon fonctionnement des fonctionnalités principales de l’application et d’identifier les anomalies éventuelles.

## Périmètre de test

Les modules testés sont :

- Authentification (connexion, déconnexion changement de mot de passe)
- Gestion des employés (ajout, modification)

Ces fonctionnalités ont été choisies car elles sont essentielles au fonctionnement de l’application.

## La Démarche

La démarche suivie est la suivante :

- identification des exigences fonctionnelles
- définition des user stories
- rédaction des critères d’acceptance
- mise en place de DoR / DoD
- conception des cas de test
- exécution des tests
- analyse des résultats

## Structure du projet

```text
projet_tutore/GNASSOU_ALLISON
│
├── Conception.md        # fichier de conception
├── Automatisation.md    # fichier d'automatisation
├── Execution.md         # rapport d'exécution manuelle
│
└── tests/
    ├── resources/
    │   ├── login_page.resource
    │   └── employee_page.resource
    │
    └── suites/
        ├── test_auth.robot
        └── test_employee.robot
```

Les tests automatisés ont été réalisés avec :

- Robot Framework
- SeleniumLibrary
- Navigateur : Google Chrome

Les cas automatisés concernent principalement :

- la connexion
- l’ajout d’employé
- la déconnexion

---

## Résultats

- Total des cas de test : 11
- Tests réussis : 9
- Tests échoués : 2
- Taux de succès : 80 %

Deux anomalies ont été identifiées :

- problème lors du changement de mot de passe
- accès possible après déconnexion via bouton retour

## Conclusion

Les tests réalisés ont permis de valider la majorité des fonctionnalités principales de l’application Orange HRM.
Cependant, certaines anomalies ont été détectées, notamment sur des fonctionnalités sensibles comme la sécurité.
Une correction de ces anomalies est nécessaire afin de garantir un bon fonctionnement global de l’application.
