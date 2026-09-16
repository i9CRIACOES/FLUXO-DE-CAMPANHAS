#!/usr/bin/env bash
# Cria uma pasta de campanha nova, cópia de "TEMPLATE DE CAMPANHA".
# A pasta nasce autossuficiente: já vem com os comandos, o checklist e a estrutura.
#
# Uso (rode de qualquer lugar):
#   "/caminho/para/_APOIO/nova-campanha.sh" NOME-DA-CAMPANHA
# Ex.:
#   ./_APOIO/nova-campanha.sh ESTUDIOi9

set -e

if [ -z "$1" ]; then
  echo "Uso: nova-campanha.sh NOME-DA-CAMPANHA"
  echo "Ex.: nova-campanha.sh ESTUDIOi9"
  exit 1
fi

APOIO="$(cd "$(dirname "$0")" && pwd)"
RAIZ="$(dirname "$APOIO")"
TEMPLATE="$RAIZ/TEMPLATE DE CAMPANHA"
DESTINO="$RAIZ/$1"

if [ ! -d "$TEMPLATE" ]; then
  echo "Não achei a pasta 'TEMPLATE DE CAMPANHA' em: $RAIZ"
  exit 1
fi

if [ -e "$DESTINO" ]; then
  echo "Já existe uma pasta chamada '$1' na raiz. Escolha outro nome."
  exit 1
fi

cp -R "$TEMPLATE" "$DESTINO"
echo "Campanha criada: $1"
echo ""
echo "Próximos passos:"
echo "  1. Abra o Claude Code DENTRO da pasta: $1"
echo "  2. Jogue os insumos do cliente em marca/insumos/"
echo "  3. Rode /marca e siga a ordem normal dos comandos"
