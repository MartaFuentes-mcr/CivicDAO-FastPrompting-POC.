@echo off
echo Creando entorno virtual...
python -m venv .venv

echo Activando entorno virtual...
call .venv\Scripts\activate

echo Instalando dependencias...
pip install pandas tiktoken openai python-dotenv

echo.
echo ✅ ¡Listo! Ahora abre tu notebook en VS Code y reinicia el kernel.
pause