Installation d'outils OSINT

📌 Description

Ce script Bash permet d'installer automatiquement plusieurs outils OSINT (Open Source Intelligence) sur une machine sous Linux (Debian/Ubuntu). Il automatise le clonage des dépôts GitHub, l'installation des dépendances et la configuration des outils nécessaires pour mener des investigations OSINT.

🚀 Installation et Utilisation

1️⃣ Prérequis

Avant d'exécuter le script, assurez-vous d'avoir :

Un système basé sur Debian/Ubuntu

git installé : sudo apt install git -y

python3 et pip3 installés : sudo apt install python3 python3-pip -y

2️⃣ Exécution du script

Clonez ce dépôt :

git clone https://github.com/votre-repo/osint-installer.git && cd osint-installer

Donnez les droits d'exécution au script :

chmod +x install_osint_tools.sh

Lancez l'installation :

./install_osint_tools.sh

🛠️ Outils Installés

Le script installe plusieurs outils spécialisés dans la recherche OSINT, notamment :

holehe : Recherche d'adresses e-mail

Hawker : OSINT généraliste

h8mail : Recherche d'informations sur les adresses e-mail

Profil3r : Recherche d'informations sur les profils en ligne

Watson : Recherche d'informations sur des cibles

Mail-Hunter : Recherche avancée sur les emails

Xtracking : Analyse des réseaux sociaux

socialosint : Outil d'investigation sur les médias sociaux

linkook : Analyse des liens OSINT

La liste complète des outils est disponible dans le script d'installation.

📖 Documentation

Chaque outil possède sa propre documentation disponible sur son dépôt GitHub respectif. N'hésitez pas à consulter les README de chaque outil pour en apprendre plus sur leur utilisation.

📌 Remarque

Certains outils nécessitent des API keys pour fonctionner correctement.

Vérifiez les configurations spécifiques après installation.

📬 Support

Si vous rencontrez un problème, n'hésitez pas à ouvrir une issue sur le dépôt GitHub.

📢 Avertissement : L'utilisation des outils OSINT doit se faire dans le respect des lois et réglementations en vigueur. L'auteur du script décline toute responsabilité en cas d'usage illégal.

🎯 Bon OSINT ! 🕵️‍♂️

