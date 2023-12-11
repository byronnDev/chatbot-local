#!/bin/bash

# Definir la variable defaultModel con el valor "mistral"
defaultModel="mistral"

# Verificar si ollama serve está en ejecución
if pgrep -f "ollama serve" > /dev/null; then
    comando=${1:-$defaultModel}  # Si no se proporciona un argumento, usar el valor de defaultModel
    ollama run "$comando"
else
    echo "No se encontró el proceso ollama serve en ejecución."
    OLLAMA_HOST=0.0.0.0:11434 ollama serve > /dev/null 2>&1 &  # Ejecutar en segundo plano abriendo el puerto 11434

    comando=${1:-$defaultModel}  # Si no se proporciona un argumento, usar el valor de defaultModel
    ollama run "$comando"
fi
