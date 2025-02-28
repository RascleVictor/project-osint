#!/bin/bash

echo "🚀 Exécution des outils installés..."

run_tool() {
    tool_name=$1
    test_command=$2
    help_command=$3

    echo "🔹 Vérification et exécution de : $tool_name..."

    if command -v "$test_command" >/dev/null 2>&1; then
        echo "✅ $tool_name est installé. Exécution..."
        eval "$test_command"
        echo "✅ Exécution réussie de $tool_name."
    else
        echo "❌ $tool_name ne semble pas installé ou exécutable."
    fi

    if [ -n "$help_command" ]; then
        echo "📌 Utilisation possible :"
        eval "$help_command"
    fi

    echo "-------------------------------------------"
}

run_tool "Holehe" "holehe --help" "holehe --help"
run_tool "Profil3r" "Profil3r --help" "Profil3r --help"
run_tool "philINT" "philINT --help" "philINT --help"
run_tool "Hawker" "python3 Hawker/hawker.py --help" "python3 Hawker/hawker.py --help"
run_tool "h8mail" "h8mail -h" "h8mail -h"
run_tool "Eyes" "python3 Eyes/eyes.py -h" "python3 Eyes/eyes.py -h"
run_tool "Zehef" "python3 Zehef/zehef.py -h" "python3 Zehef/zehef.py -h"
run_tool "Email-Osint" "python3 Email-Osint/email-osint.py -h" "python3 Email-Osint/email-osint.py -h"
run_tool "Blackbird" "python3 blackbird/blackbird.py -h" "python3 blackbird/blackbird.py -h"
run_tool "Gumshoe" "python3 gumshoe/gumshoe.py -h" "python3 gumshoe/gumshoe.py -h"
run_tool "Buster" "buster -h" "buster -h"
run_tool "MailOgleIt" "python3 mailogleit/mailogleit.py -h" "python3 mailogleit/mailogleit.py -h"

echo "✅ Tous les outils ont été exécutés !"
