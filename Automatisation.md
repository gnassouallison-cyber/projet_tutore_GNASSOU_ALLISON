# Documentation de l'automate

#### Framework : Robot Framework + Selenium Librairy

## 1. Presentation du framework

Robot Framework est un framework d’automatisation de tests open source, basé sur le
principe du keyword-driven testing. Il utilise une syntaxe en langage naturel, ce qui le rend
lisible même pour des profils non-développeurs.

Robot Framework s'appuie sur la librairie SeleniumLibrairy pour interargir avec les navigateurs web qui elle même s'apppuie sur Selenium Webdriver.

Composant : Python - version ≥ 3.9
Robot Framework: version ≥ 6.0
SeleniumLibrary: version ≥ 6.0
ChromeDriver: Compatible avec Chrome installé
Navigateur: Google Chrome

## 2. Créer un environnement virtuel

python -m venv venv
source venv/bin/activate # Linux/macOS

### 2.2 1Installer les dépendances

pip install robotframework
pip install robotframework-seleniumlibrary

### 2.3. Installer le pilote Chrome

pip install webdriver-manager

### 2.4. Vérifier l'installation

robot --version

projet_tutore/
│
├── Conception.md # fichier de conception
├── Automatisation.md # fichier d'automatisation
├── Execution.md # Rapport d'exécution manuelle
│
└── tests/
├── resources/
│ └── keywords.resource # Keywords et variables communes
└── suites/
├── test_auth.robot # Tests authentification (CT-01-01, CT-01-05)
├── test_employee.robot
└── test_dashboard.robot

## 3. Organisation du code

### 3.1 Fichier de ressources partagées – keywords.resource

Ce fichier centralise les éléments réutilisables par toutes les suites :

#### Variables globales :

URL de base, navigateur, identifiants, timeout

#### Keywords communs :

Open Browser And Go To Login – Ouvre le navigateur et navigue vers la page de
login
