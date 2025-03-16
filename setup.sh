#!/bin/bash

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

echo "⏳ Mise à jour des paquets système..."
sudo apt update && sudo apt upgrade -y
sudo apt install python3-pip -y

echo "🔍 Installation des outils OSINT..."

declare -A repos=(
    [holehe]="https://github.com/megadose/holehe.git"
    [Hawker]="https://github.com/RetrO-M/Hawker.git"
    [h8mail]="https://github.com/khast3x/h8mail.git"
    [Eyes]="https://github.com/N0rz3/Eyes.git"
    [Zehef]="https://github.com/N0rz3/Zehef.git"
    [Email-Osint]="https://github.com/KanekiX2/Email-Osint.git"
    [blackbird]="https://github.com/p1ngul1n0/blackbird.git"
    [gumshoe]="https://github.com/asharbinkhalil/gumshoe.git"
    [mailogleit]="https://github.com/dincertekin/mailogleit.git"
    [Profil3r]="https://github.com/Rog3rSm1th/Profil3r.git"
    [philINT]="https://github.com/ajuelosemmanuel/philINT.git"
    [Mail-Hunter]="https://github.com/CYB3R-G0D/Mail-Hunter.git"
    [Elastichunt]="https://github.com/ef1500/Elastichunt.git"
    [Watson]="https://github.com/tingirifistik/Watson.git"
    [Image-recon]="https://github.com/Ramalingasamy012/Image-recon.git"
    [informer]="https://github.com/sudo0x18/informer.git"
    [Xtracking]="https://github.com/Whomrx666/Xtracking.git"
    [SearchMyName]="https://github.com/Niko13teen/SearchMyName.git"
    [OwlTrack]="https://github.com/IccTeam/OwlTrack.git"
    [boosint]="https://github.com/protdos/boosint.git"
    [UserFinder]="https://github.com/mishakorzik/UserFinder.git"
    [The-Black-Tiger]="https://github.com/VirusZzHkP/The-Black-Tiger.git"
    [socialosint]="https://github.com/krishpranav/socialosint.git"
    [one]="https://github.com/charliebrassington/one.git"
    [MailFinder]="https://github.com/mishakorzik/MailFinder.git"
    [X-osint]="https://github.com/TermuxHackz/X-osint.git"
    [gitSome]="https://github.com/chm0dx/gitSome.git"
    [Mr.Holmes]="https://github.com/Lucksi/Mr.Holmes.git"
    [Moriarty-Project]="https://github.com/AzizKpln/Moriarty-Project.git"
    [GhostTrack]="https://github.com/HunxByts/GhostTrack.git"
    [ClatScope]="https://github.com/Clats97/ClatScope.git"
)

for repo in "${!repos[@]}"; do
    echo "📂 Installation de $repo..."
    git clone "${repos[$repo]}" && cd "$repo" || exit

    if [ -f "setup.py" ]; then
        sudo python3 setup.py install || exit
    elif [ -f "requirements.txt" ]; then
        pip3 install -r requirements.txt || exit
    elif [ -f "install.sh" ]; then
        sudo chmod +x install.sh && sudo bash install.sh || exit
    fi

    cd ..
done

echo "📦 Installation de paquets supplémentaires..."
pip install stargazerz nqntnqnqmb toutatis pipx
pipx ensurepath
pipx install ghunt
pipx install linkook

echo "✅ Installation terminée !"
