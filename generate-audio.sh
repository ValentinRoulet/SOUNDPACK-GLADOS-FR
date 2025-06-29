#!/bin/bash

while true; do
  read -p "Entrez la phrase à convertir en audio (ou 'q' pour quitter) : " phrase

  if [[ "$phrase" == "q" ]]; then
    echo "Fin du script."
    break
  fi

  read -p "Entrez le nom du fichier de sortie (sans extension) : " filename

  output_file="${filename%.wav}.wav"

  echo "$phrase" | ./piper --model fr_FR-glados-medium.onnx --output_file "$output_file"

  echo "Fichier audio généré : $output_file"
  echo "-----------------------------"
done
