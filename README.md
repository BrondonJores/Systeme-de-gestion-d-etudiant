# Systeme de gestion d'etudiant (JEE)

Application web Java EE (Jakarta) pour gerer des etudiants avec les operations CRUD (Create, Read, Update, Delete) via Servlet + JSP + MySQL.

## Apercu

Ce projet propose une interface simple pour:
- afficher la liste des etudiants
- consulter la fiche detaillee d'un etudiant
- ajouter un etudiant
- modifier un etudiant
- supprimer un etudiant

L'application suit une architecture MVC legere:
- `EtudiantServlet` pour la logique de controle
- `EtudiantDAO` et `Db` pour l'acces aux donnees
- JSP (`index.jsp`, `etudiants.jsp`, `create.jsp`, `edit.jsp`, `show.jsp`) pour l'affichage

## Stack technique

- Java 17
- Jakarta Servlet API (Web 6.0)
- JSP
- MySQL (driver `mysql-connector-j-9.5.0.jar`)
- Tomcat 10.1
- Bootstrap 5 (CDN)
- Eclipse Dynamic Web Project

## Fonctionnalites

- Liste des etudiants avec actions (voir, modifier, supprimer)
- Formulaire de creation avec validation minimale
- Formulaire de modification
- Suppression avec confirmation (modal Bootstrap)
- Messages de retour utilisateur via attributs de session/request

## Prerequis

- JDK 17
- Apache Tomcat 10.1
- MySQL (local ou distant)
- Eclipse IDE for Enterprise Java (recommande pour ce projet)

## Installation et configuration

### 1. Base de donnees

Le script SQL est fourni ici:
- `src/main/java/ma/est/dao/etudiants.sql`

Creer/importer la base:

```bash
mysql -u root -p < src/main/java/ma/est/dao/etudiants.sql
```

Le code attend par defaut:
- host: `localhost`
- port: `3306`
- db: `etudiants`
- user: `root`
- password: vide

Ces valeurs sont configurees dans:
- `src/main/java/ma/est/dao/Db.java`

### 2. Lancer le projet avec Eclipse + Tomcat

1. Importer le dossier comme `Existing Projects into Workspace`.
2. Verifier le JRE en Java 17.
3. Configurer le runtime `Apache Tomcat v10.1`.
4. Ajouter le projet au serveur Tomcat.
5. Demarrer Tomcat.

## URL utiles

- `GET /index.jsp` -> page d'entree
- `GET /etudiant` -> liste des etudiants
- `GET /etudiant?action=show&id={id}` -> fiche etudiant
- `GET /etudiant?action=create` -> formulaire de creation
- `POST /etudiant` + `action=insert` -> insertion
- `GET /etudiant?action=edit&id={id}` -> formulaire de modification
- `POST /etudiant` + `action=update&id={id}` -> mise a jour
- `GET /etudiant?action=delete&id={id}` -> suppression

## Structure du projet

- `src/main/java/ma/est/controllers/EtudiantServlet.java` : controleur principal
- `src/main/java/ma/est/models/Etudiant.java` : modele metier
- `src/main/java/ma/est/models/EtudiantDAO.java` : operations SQL CRUD
- `src/main/java/ma/est/dao/Db.java` : connexion MySQL
- `src/main/webapp/*.jsp` : vues JSP
- `src/main/webapp/WEB-INF/lib` : dependances jar
- `doc/` : documentation Java generee

## Notes

- Le projet contient aussi un mini module de demonstration `apptestcalcul`.
- A ce stade, la configuration DB est en dur dans le code.
- Il n'y a pas de pipeline de test automatise ni de build Maven/Gradle.

## Pistes d'amelioration

- Externaliser la configuration (fichier `.properties` ou variables d'environnement)
- Ajouter un systeme de validation plus robuste
- Ajouter la gestion d'erreurs centralisee
- Migrer vers Maven ou Gradle pour faciliter le build/deploiement
- Ajouter des tests unitaires et d'integration

## Auteur

Brondon HOUAKEU
