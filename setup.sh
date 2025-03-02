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
        sudo apt install pipx
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
        [ -d "holehe" ] && (echo "⚠️ Le dossier 'holehe' existe déjà, mise à jour..." && cd holehe && git pull && cd ..) || (sudo git clone https://github.com/megadose/holehe.git && cd holehe && sudo python3 setup.py install && cd ..)
        command_exists holehe && echo "✅ holehe installé avec succès." || echo "❌ Échec de l'installation de holehe."
    fi
}

install_hawker() {
    echo "⏳ Installation de Hawker..."
    if command_exists hawker; then
        echo "✅ Hawker est déjà installé."
    else
        [ -d "Hawker" ] && (echo "⚠️ Le dossier 'Hawker' existe déjà, mise à jour..." && cd Hawker && git pull && cd ..) || (sudo git clone https://github.com/RetrO-M/Hawker.git && cd Hawker && sudo python3 -m pip install -r requirements.txt && cd ..)
        command_exists hawker && echo "✅ Hawker installé avec succès." || echo "❌ Échec de l'installation de Hawker."
    fi
}

#install_buster() {
#    echo "⏳ Installation de buster..."
#    if command_exists buster; then
#        echo "✅ buster est déjà installé."
#    else
#        if [ -d "buster" ]; then
#            echo "⚠️ Le dossier 'buster' existe déjà, mise à jour..."
#            cd buster || exit 1
#            git pull
#        else
#           sudo git clone https://github.com/sham00n/buster.git
#            cd buster || exit 1
#        fi
#        sudo python3 setup.py install
#        cd ..
#        if command_exists buster; then
#            echo "✅ buster installé avec succès."
#        else
#            echo "❌ Échec de l'installation de buster."
#            exit 1
#        fi
#    fi
#}

install_h8mail() {
    echo "⏳ Installation de h8mail..."
    if command_exists h8mail; then
        echo "✅ h8mail est déjà installé."
    else
        [ -d "h8mail" ] && (echo "⚠️ Le dossier 'h8mail' existe déjà, mise à jour..." && cd h8mail && git pull && cd ..) || (sudo git clone https://github.com/khast3x/h8mail.git && cd h8mail && sudo python3 setup.py install && cd ..)
        command_exists h8mail && echo "✅ h8mail installé avec succès." || echo "❌ Échec de l'installation de h8mail."
    fi
}

install_eyes() {
    echo "⏳ Installation de Eyes..."
    if command_exists eyes; then
        echo "✅ Eyes est déjà installé."
    else
        [ -d "Eyes" ] && (echo "⚠️ Le dossier 'Eyes' existe déjà, mise à jour..." && cd Eyes && git pull && cd ..) || (sudo git clone https://github.com/N0rz3/Eyes.git && cd Eyes && sudo python3 -m pip install -r requirements.txt && cd ..)
        command_exists eyes && echo "✅ Eyes installé avec succès." || echo "❌ Échec de l'installation de Eyes."
    fi
}

install_zehef() {
    echo "⏳ Installation de Zehef..."
    if command_exists zehef; then
        echo "✅ Zehef est déjà installé."
    else
        if [ -d "Zehef" ]; then
            echo "⚠️ Le dossier 'Zehef' existe déjà, mise à jour..."
            cd Zehef && git pull && cd ..
        else
            sudo git clone https://github.com/N0rz3/Zehef.git && cd Zehef && sudo python3 -m pip install -r requirements.txt && cd ..
        fi
        command_exists zehef && echo "✅ Zehef installé avec succès." || { echo "❌ Échec de l'installation de Zehef."; exit 1; }
    fi
}

install_email_osint() {
    echo "⏳ Installation de Email-Osint..."
    if command_exists email-osint; then
        echo "✅ Email-Osint est déjà installé."
    else
        if [ -d "Email-Osint" ]; then
            echo "⚠️ Le dossier 'Email-Osint' existe déjà, mise à jour..."
            cd Email-Osint && git pull && cd ..
        else
            git clone https://github.com/KanekiX2/Email-Osint.git && cd Email-Osint && sudo python3 -m pip install -r requirements.txt && cd ..
        fi
        command_exists email-osint && echo "✅ Email-Osint installé avec succès." || { echo "❌ Échec de l'installation de Email-Osint."; exit 1; }
    fi
}

install_blackbird() {
    echo "⏳ Installation de blackbird..."
    if command_exists blackbird; then
        echo "✅ blackbird est déjà installé."
    else
        if [ -d "blackbird" ]; then
            echo "⚠️ Le dossier 'blackbird' existe déjà, mise à jour..."
            cd blackbird && git pull && cd ..
        else
            git clone https://github.com/p1ngul1n0/blackbird && cd blackbird && sudo pip3 install -r requirements.txt && cd ..
        fi
        command_exists blackbird && echo "✅ blackbird installé avec succès." || { echo "❌ Échec de l'installation de blackbird."; exit 1; }
    fi
}

install_gumshoe() {
    echo "⏳ Installation de gumshoe..."
    if command_exists gumshoe; then
        echo "✅ gumshoe est déjà installé."
    else
        if [ -d "gumshoe" ]; then
            echo "⚠️ Le dossier 'gumshoe' existe déjà, mise à jour..."
            cd gumshoe && git pull && cd ..
        else
            git clone https://github.com/asharbinkhalil/gumshoe.git && cd gumshoe && sudo pip3 install -r requirements.txt && cd ..
        fi
        command_exists gumshoe && echo "✅ gumshoe installé avec succès." || { echo "❌ Échec de l'installation de gumshoe."; exit 1; }
    fi
}

install_mailogleit() {
    echo "⏳ Installation de mailogleit..."
    if command_exists mailogleit; then
        echo "✅ mailogleit est déjà installé."
    else
        if [ -d "mailogleit" ]; then
            echo "⚠️ Le dossier 'mailogleit' existe déjà, mise à jour..."
            cd mailogleit && git pull && cd ..
        else
            git clone https://github.com/dincertekin/mailogleit.git && cd mailogleit && sudo pip3 install -r requirements.txt && cd ..
        fi
        command_exists mailogleit && echo "✅ mailogleit installé avec succès." || { echo "❌ Échec de l'installation de mailogleit."; exit 1; }
    fi
}

install_profil3r() {
    echo "⏳ Installation de Profil3r..."
    if command_exists Profil3r; then
        echo "✅ Profil3r est déjà installé."
    else
        if [ -d "Profil3r" ]; then
            echo "⚠️ Le dossier 'Profil3r' existe déjà, mise à jour..."
            cd Profil3r && git pull && cd ..
        else
            git clone https://github.com/Rog3rSm1th/Profil3r.git && cd Profil3r && sudo python3 setup.py install && cd ..
        fi
        command_exists Profil3r && echo "✅ Profil3r installé avec succès." || { echo "❌ Échec de l'installation de Profil3r."; exit 1; }
    fi
}

install_dependencies() {
    echo "⏳ Installation des dépendances Python..."
    sudo pip3 install PyInquirer jinja2 bs4
}

install_philint() {
    echo "⏳ Installation de philINT..."
    if command_exists philINT; then
        echo "✅ philINT est déjà installé."
    else
        git clone https://github.com/ajuelosemmanuel/philINT.git && cd philINT && python3 setup.py install && cd ..
        command_exists philINT && echo "✅ philINT installé avec succès." || { echo "❌ Échec de l'installation de philINT."; exit 1; }
    fi
}


install_pip
install_pipx
install_holehe
#install_hawker
#install_buster
install_h8mail
install_eyes
install_zehef
install_email_osint
install_blackbird
install_gumshoe
install_mailogleit
install_dependencies
install_profil3r
install_philint