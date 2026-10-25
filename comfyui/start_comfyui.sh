#!/bin/bash
# Iniciar ComfyUI con soporte Metal (M1/M2/M3)
# Uso: bash start_comfyui.sh

COMFYUI_DIR="$HOME/Documents/GameDev/ComfyUI"

echo "Iniciando ComfyUI para El Angel Caido..."
echo "   GPU: Apple M1 (Metal)"
echo "   Puerto: http://127.0.0.1:8188"
echo ""

cd "$COMFYUI_DIR"
source .venv/bin/activate

# --force-fp16 importante para M1 con 8GB de memoria unificada
python main.py --force-fp16 2>&1

echo ""
echo "ComfyUI detenido."
