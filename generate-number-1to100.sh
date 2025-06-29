#!/bin/bash

mkdir -p nombres

for i in $(seq 1 100); do
  filename=$(printf "nombres/%04d.wav" "$i")
  echo "Génération de $filename pour le nombre $i..."
  echo "$i" | ./piper --model fr_FR-glados-medium.onnx --output_file "$filename"
done

echo "Tous les fichiers de nombres/0001.wav à nombres/0100.wav ont été générés."
