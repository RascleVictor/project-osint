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

install_pip
install_pipx
install_holehe
install_hawker
install_h8mail
