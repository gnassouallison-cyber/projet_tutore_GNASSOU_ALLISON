# Rapport d'Exécution Manuelle

## Projet Tutoré – Sujet N°1 : Dominante Fonctionnelle

### Application : Orange HRM |

| Champ                      | Détail                                            |
| -------------------------- | ------------------------------------------------- |
| **Projet**                 | Campagne de tests fonctionnels – Orange HRM       |
| **Testeur**                | Gnassou Allison – Ingénieur Test Fonctionnel      |
| **Date d'exécution**       | 26 Mars 2025                                      |
| **Navigateur**             | Google Chrome                                     |
| **Environnement**          | Demo – https://opensource-demo.orangehrmlive.com/ |
| **Version application**    | OrangeHRM Demo v5                                 |
| **Référence plan de test** | `Conception.md`                                   |

## 1. Synthèse des résultats

| Indicateur          | Valeur |
| ------------------- | ------ |
| Total cas planifiés | 11     |
| Total cas exécutés  | 11     |
| OK                  | 9      |
| K.O                 | 2      |

| I **Taux de succès** **80 %**

**Anomalies remontées**

**BUG-001 (Priorité : Haute)**

**BUG-002 (Priorité : Haute)**

## 2. Résultats détaillés par module

Lien vers le résultat détaillé

https://docs.google.com/spreadsheets/d/1NkOJtQMJezCimVeCaV2viQrUbwivRU5jVwj4Epe5khI/edit?gid=1327097477#gid=1327097477

## 4. Rapport d'anomalie

### BUG-001 — Le changement du mot de passe n'a pas été pris en compte

| Champ               | Détail                                                                                |
| ------------------- | ------------------------------------------------------------------------------------- |
| **ID**              | BUG-001                                                                               |
| **Titre**           | changement de mot de passe non pris en compte - echec de connexion avec le noveau MDP |
| **Module**          | Authentification –                                                                    |
| **Exigence**        | EXG_03                                                                                |
| **Cas de test lié** | TC_PASSWORD_02                                                                        |
| **Priorité**        | High                                                                                  |
| **Découvert par**   | Allison Gnassou                                                                       |
| **Date**            | 26 Mars 2025                                                                          |
| **Reproductible**   | Oui – 100%                                                                            |

#### Étapes de reproduction du BUG -001

| #   | Action                                            | Donnée               |
| --- | ------------------------------------------------- | -------------------- |
| 1   | Se connecter avec Admin / admin123                | `Admin` / `admin123` |
| 2   | Cliquer sur l'avatar utilisateur en haut à droite | —                    |
| 3   | Cliquer sur **Change Password**                   | —                    |
| 4   | Saisir le mot de passe actuel                     | `admin123`           |
| 5   | Saisir un nouveau mot de passe de 3 caractères    | `Test1234`           |
| 6   | Saisir la même valeur en confirmation             | `Test1234`           |
| 7   | Cliquer sur **Save**                              | —                    |
| 8   | Saisir le Username                                | `Admin`              |
| 9   | Saisir le nouveau mot de passe                    | `Test1234`           |
| 10  | Cliquer sur Login                                 |

## Résultat attendu

Connexion réussie et redirection vers le dashboard

## Résultat obtenu

Message d’erreur affiché, connexion refusée

### BUG-002 — Accès au dashboard possible après déconnexion via bouton retour

| Champ               | Détail                                                            |
| ------------------- | ----------------------------------------------------------------- |
| **ID**              | BUG-002                                                           |
| **Titre**           | Accès au dashboard après déconnexion via bouton retour navigateur |
| **Module**          | Déconnexion                                                       |
| **Exigence**        | EXG_04                                                            |
| **Cas de test lié** | TC_LOGOUT_02                                                      |
| **Priorité**        | High                                                              |
| **Découvert par**   | Allison Gnassou                                                   |
| **Date**            | 26 Mars 2025                                                      |
| **Reproductible**   | Oui – 100%                                                        |

#### Étapes de reproduction du BUG -002

| #   | Action                                                   | Donnée               |
| --- | -------------------------------------------------------- | -------------------- |
| 1   | Se connecter avec Admin / admin123                       | `Admin` / `admin123` |
| 2   | Cliquer sur l'avatar utilisateur en haut à droite        | —                    |
| 3   | Cliquer sur **logout**                                   | —                    |
| 4   | Cliquer sur **flèche (retour en arrière)** du navigateur | —                    |

## Résultat attendu

L'utilisateur ne doit plus avoir accès au dashboard
Redirection automatique vers la page de login
Session invalidée côté client et serveur

## Résultat obtenu

L'utilisateur accède de nouveau au dashboard via le bouton retour
La session semble toujours active côté navigateur
