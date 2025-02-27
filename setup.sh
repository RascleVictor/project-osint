#!/bin/bash

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

echo "⏳ Mise à jour des paquets système..."
sudo apt update && sudo apt upgrade -y

install_pip() {
    echo "⏳ Vérification de pip3..."
    if command_exists pip3; then
        echo "✅ pip3 est déjà installé : $(pip3 --version)"
    else
        echo "⚠️ pip3 n'est pas installé. Installation en cours..."
        sudo apt install -y python3-pip
        if command_exists pip3; then
            echo "✅ pip3 installé avec succès : $(pip3 --version)"
        else
            echo "❌ Échec de l'installation de pip3."
            exit 1
        fi
    fi
}

install_pipx() {
    echo "⏳ Vérification de pipx..."
    if command_exists pipx; then
        echo "✅ pipx est déjà installé : $(pipx --version)"
    else
        echo "⚠️ pipx n'est pas installé. Installation en cours..."
        sudo apt install -y python3-pipx
        if command_exists pipx; then
            echo "✅ pipx installé avec succès : $(pipx --version)"
        else
            echo "❌ Échec de l'installation de pipx."
            exit 1
        fi
    fi
}

install_holehe() {
    echo "⏳ Installation de holehe..."
    if command_exists holehe; then
        echo "✅ holehe est déjà installé."
    else
        sudo apt install -y git
        if [ -d "holehe" ]; then
            echo "⚠️ Le dossier 'holehe' existe déjà, mise à jour..."
            cd holehe || exit 1
            git pull
        else
            git clone https://github.com/megadose/holehe.git
            cd holehe || exit 1
        fi
        python3 setup.py install
        cd ..
        if command_exists holehe; then
            echo "✅ holehe installé avec succès."
        else
            echo "❌ Échec de l'installation de holehe."
            exit 1
        fi
    fi
}

install_hawker() {
    echo "⏳ Installation de Hawker..."
    if command_exists hawker; then
        echo "✅ Hawker est déjà installé."
    else
        sudo apt install -y git
        if [ -d "Hawker" ]; then
            echo "⚠️ Le dossier 'Hawker' existe déjà, mise à jour..."
            cd Hawker || exit 1
            git pull
        else
            git clone https://github.com/RetrO-M/Hawker.git
            cd Hawker || exit 1
        fi
        pip install -r requirements.txt
        cd ..
        if command_exists hawker; then
            echo "✅ Hawker installé avec succès."
        else
            echo "❌ Échec de l'installation de Hawker."
            exit 1
        fi
    fi
}

install_buster() {
    echo "⏳ Installation de buster..."
    if command_exists buster; then
        echo "✅ buster est déjà installé."
    else
        sudo apt install -y git
        if [ -d "buster" ]; then
            echo "⚠️ Le dossier 'buster' existe déjà, mise à jour..."
            cd buster || exit 1
            git pull
        else
            git clone git://github.com/sham00n/buster
            cd buster || exit 1
        fi
        python3 setup.py install
        cd ..
        if command_exists buster; then
            echo "✅ buster installé avec succès."
        else
            echo "❌ Échec de l'installation de buster."
            exit 1
        fi
    fi
}

install_h8mail() {
    echo "⏳ Installation de h8mail..."
    if command_exists h8mail; then
        echo "✅ h8mail est déjà installé."
    else
        pip3 install h8mail
        if command_exists h8mail; then
            echo "✅ h8mail installé avec succès."
        else
            echo "❌ Échec de l'installation de h8mail."
            exit 1
        fi
    fi
}

install_eyes() {
    echo "⏳ Installation de Eyes..."
    if command_exists eyes; then
        echo "✅ Eyes est déjà installé."
    else
        sudo apt install -y git
        if [ -d "Eyes" ]; then
            echo "⚠️ Le dossier 'Eyes' existe déjà, mise à jour..."
            cd Eyes || exit 1
            git pull
        else
            git clone https://github.com/N0rz3/Eyes.git
            cd Eyes || exit 1
        fi
        pip3 install -r requirements.txt
        cd ..
        if command_exists eyes; then
            echo "✅ Eyes installé avec succès."
        else
            echo "❌ Échec de l'installation de Eyes."
            exit 1
        fi
    fi
}

install_zehef() {
    echo "⏳ Installation de Zehef..."
    if command_exists zehef; then
        echo "✅ Zehef est déjà installé."
    else
        sudo apt install -y git
        if [ -d "Zehef" ]; then
            echo "⚠️ Le dossier 'Zehef' existe déjà, mise à jour..."
            cd Zehef || exit 1
            git pull
        else
            git clone https://github.com/N0rz3/Zehef.git
            cd Zehef || exit 1
        fi
        pip3 install -r requirements.txt
        cd ..
        if command_exists zehef; then
            echo "✅ Zehef installé avec succès."
        else
            echo "❌ Échec de l'installation de Zehef."
            exit 1
        fi
    fi
}

install_email_osint() {
    echo "⏳ Installation de Email-Osint..."
    if command_exists email-osint; then
        echo "✅ Email-Osint est déjà installé."
    else
        sudo apt install -y git
        if [ -d "Email-Osint" ]; then
            echo "⚠️ Le dossier 'Email-Osint' existe déjà, mise à jour..."
            cd Email-Osint || exit 1
            git pull
        else
            git clone https://github.com/KanekiX2/Email-Osint.git
            cd Email-Osint || exit 1
        fi
        pip3 install -r requirements.txt
        cd ..
        if command_exists email-osint; then
            echo "✅ Email-Osint installé avec succès."
        else
            echo "❌ Échec de l'installation de Email-Osint."
            exit 1
        fi
    fi
}

install_blackbird() {
    echo "⏳ Installation de blackbird..."
    if command_exists blackbird; then
        echo "✅ blackbird est déjà installé."
    else
        sudo apt install -y git
        if [ -d "blackbird" ]; then
            echo "⚠️ Le dossier 'blackbird' existe déjà, mise à jour..."
            cd blackbird || exit 1
            git pull
        else
            git clone https://github.com/p1ngul1n0/blackbird
            cd blackbird || exit 1
        fi
        pip install -r requirements.txt
        cd ..
        if command_exists blackbird; then
            echo "✅ blackbird installé avec succès."
        else
            echo "❌ Échec de l'installation de blackbird."
            exit 1
        fi
    fi
}

install_gumshoe() {
    echo "⏳ Installation de gumshoe..."
    if command_exists gumshoe; then
        echo "✅ gumshoe est déjà installé."
    else
        sudo apt install -y git
        if [ -d "gumshoe" ]; then
            echo "⚠️ Le dossier 'gumshoe' existe déjà, mise à jour..."
            cd gumshoe || exit 1
            git pull
        else
            git clone https://github.com/asharbinkhalil/gumshoe.git
            cd gumshoe || exit 1
        fi
        pip install -r requirements.txt
        cd ..
        if command_exists gumshoe; then
            echo "✅ gumshoe installé avec succès."
        else
            echo "❌ Échec de l'installation de gumshoe."
            exit 1
        fi
    fi
}

install_mailogleit() {
    echo "⏳ Installation de mailogleit..."
    if command_exists mailogleit; then
        echo "✅ mailogleit est déjà installé."
    else
        sudo apt install -y git
        if [ -d "mailogleit" ]; then
            echo "⚠️ Le dossier 'mailogleit' existe déjà, mise à jour..."
            cd mailogleit || exit 1
            git pull
        else
            git clone https://github.com/dincertekin/mailogleit.git
            cd mailogleit || exit 1
        fi
        pip install -r requirements.txt
        cd ..
        if command_exists mailogleit; then
            echo "✅ mailogleit installé avec succès."
        else
            echo "❌ Échec de l'installation de mailogleit."
            exit 1
        fi
    fi
}

install_pip
install_pipx
install_holehe
install_hawker
install_buster
install_h8mail
install_eyes
install_zehef
install_email_osint
install_blackbird
install_gumshoe
install_mailogleit
