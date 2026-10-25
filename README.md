# El Angel Caido — Assets y Documentacion

Repositorio de assets, documentacion y configuracion de herramientas para
el videojuego "El Angel Caido" — metroidvania 2D pixel art dark fantasy.

## Estructura

```
angel-caido-assets/
├── docs/
│   ├── gdd/                    GDD Visual (especificaciones de arte)
│   └── historia/               Historia, lore y guiones
├── comfyui/
│   ├── workflows/              Workflows JSON listos para importar en ComfyUI
│   ├── prompts/                Prompts organizados por personaje
│   └── start_comfyui.sh        Script de inicio (Mac)
├── sprites/
│   ├── player/                 Sprites del protagonista
│   ├── enemies/                Sprites de enemigos
│   ├── bosses/                 Sprites de jefes
│   ├── npcs/                   Sprites de aliados
│   └── environment/            Tiles y fondos
└── references/
    └── concepts/               Imagenes de referencia y concepto
```

## Juego principal (Unity)
https://github.com/NicolasIgles/Game-01

## Especificaciones tecnicas

| Elemento | Valor |
|----------|-------|
| Resolucion interna | 480x270 px |
| Escala a 1080p | x4 |
| Pixels per unit | 16 |
| Canvas jugador humano | 48x80 px |
| Canvas jugador angelical | 64x96 px |
| Canvas NPC | 40x60 px |
| Canvas enemigo comun | 32x48 px |
| Tile base | 16x16 px |

## Setup ComfyUI

### Mac (M1/M2/M3)
```bash
cd ~/Documents/GameDev
bash start_comfyui.sh
```

### Windows
Ver instrucciones en docs/setup_windows.md

### Modelo requerido
Descargar DreamShaper 8 desde https://civitai.com/models/4384
Colocar en: ComfyUI/models/checkpoints/dreamshaper_8.safetensors

## Workflow rapido
1. Iniciar ComfyUI
2. Abrir http://127.0.0.1:8188
3. Arrastrar comfyui/workflows/workflow_protagonista_fase1.json al canvas
4. Click en Queue
5. Los sprites generados quedan en ComfyUI/output/
