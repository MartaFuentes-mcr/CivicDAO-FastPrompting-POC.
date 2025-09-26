#!/bin/bash
echo "Creando entorno virtual..."
python -m venv .venv

echo "Activando entorno virtual..."
source .venv/Scripts/activate

echo "Instalando dependencias..."
pip install pandas tiktoken openai python-dotenv

echo ""
echo "✅ ¡Listo! Ahora abre tu notebook y reinicia el kernel."
echo "Recuerda: usa 'source .venv/Scripts/activate' si necesitas reactivar el entorno."