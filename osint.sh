#!/bin/bash

echo "🚀 Exécution des outils installés pour une enquête sur une adresse e-mail..."

# Demande à l'utilisateur de saisir un email
read -p "📩 Entrez l'adresse e-mail cible : " EMAIL

# Vérifie si l'entrée est valide
if [[ ! "$EMAIL" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
    echo "❌ Adresse e-mail invalide. Veuillez entrer un e-mail valide."
    exit 1
fi

run_tool() {
    tool_name=$1
    test_command=$2
    run_command=$3

    echo "🔹 Vérification et exécution de : $tool_name..."

    if command -v "$test_command" >/dev/null 2>&1; then
        echo "✅ $tool_name est installé. Exécution avec l'e-mail : $EMAIL"
        eval "$run_command"
        echo "✅ Exécution réussie de $tool_name."
    else
        echo "❌ $tool_name ne semble pas installé ou exécutable."
    fi

    echo "-------------------------------------------"
}

# Liste des outils avec leur commande
run_tool "Holehe" "holehe" "holehe $EMAIL"
run_tool "Profil3r" "Profil3r" "Profil3r -p email -v $EMAIL"
run_tool "philINT" "philINT" "philINT -e $EMAIL"
run_tool "Hawker" "python3 Hawker/hawker.py" "python3 Hawker/hawker.py --email $EMAIL"
run_tool "h8mail" "h8mail" "h8mail -t $EMAIL"
run_tool "Eyes" "python3 Eyes/eyes.py" "python3 Eyes/eyes.py -e $EMAIL"
run_tool "Zehef" "python3 Zehef/zehef.py" "python3 Zehef/zehef.py -e $EMAIL"
run_tool "Email-Osint" "python3 Email-Osint/email-osint.py" "python3 Email-Osint/email-osint.py -e $EMAIL"
run_tool "Blackbird" "python3 blackbird/blackbird.py" "python3 blackbird/blackbird.py -e $EMAIL"
run_tool "Gumshoe" "python3 gumshoe/gumshoe.py" "python3 gumshoe/gumshoe.py -e $EMAIL"
run_tool "Buster" "buster" "buster -e $EMAIL"
run_tool "MailOgleIt" "python3 mailogleit/mailogleit.py" "python3 mailogleit/mailogleit.py -e $EMAIL"

echo "✅ Toutes les analyses sont terminées !"
