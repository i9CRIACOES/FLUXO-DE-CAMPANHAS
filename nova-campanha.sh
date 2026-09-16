#!/usr/bin/env bash
# Cria uma pasta de campanha nova a partir do _MODELO-CAMPANHA.
# Uso:  ./nova-campanha.sh nome-da-campanha
# Ex.:  ./nova-campanha.sh estudio-i9-locacao

set -e

if [ -z "$1" ]; then
  echo "Uso: ./nova-campanha.sh nome-da-campanha"
  echo "Ex.: ./nova-campanha.sh estudio-i9-locacao"
  exit 1
fi

RAIZ="$(cd "$(dirname "$0")" && pwd)"
DESTINO="$RAIZ/campanhas/$1"

if [ -e "$DESTINO" ]; then
  echo "Já existe uma campanha chamada '$1' em campanhas/. Escolha outro nome."
  exit 1
fi

cp -R "$RAIZ/_MODELO-CAMPANHA" "$DESTINO"
rm -f "$DESTINO/_LEIA-MODELO.md"   # nota do molde não vai pra dentro da campanha
echo "Campanha criada em: campanhas/$1"
echo ""
echo "Próximos passos:"
echo "  1. Abra o Claude Code DENTRO da pasta: campanhas/$1"
echo "  2. Jogue os insumos do cliente em marca/insumos/"
echo "  3. Rode /marca e siga a ordem normal dos comandos"
