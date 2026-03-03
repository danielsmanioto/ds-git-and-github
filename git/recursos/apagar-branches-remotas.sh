#!/usr/bin/env bash
set -euo pipefail

# Script para apagar branches remotas, preservando main e develop por padrão.
#
# Uso:
#   ./apagar-branches-remotas.sh [remote] [--apply|--dry-run] [branches_protegidas...]
#
# Exemplos:
#   ./apagar-branches-remotas.sh
#   ./apagar-branches-remotas.sh origin --apply
#   ./apagar-branches-remotas.sh origin --apply main develop release

REMOTE="${1:-origin}"
MODE="${2:---dry-run}"

if [[ $# -ge 3 ]]; then
  shift 2
  PROTECTED=("$@")
else
  PROTECTED=("main" "develop")
fi

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "❌ Execute este script dentro de um repositório Git."
  exit 1
fi

if ! git remote get-url "$REMOTE" >/dev/null 2>&1; then
  echo "❌ Remote '$REMOTE' não encontrado."
  exit 1
fi

if [[ "$MODE" != "--apply" && "$MODE" != "--dry-run" ]]; then
  echo "❌ Modo inválido: $MODE"
  echo "Use --dry-run (padrão) ou --apply"
  exit 1
fi

is_protected() {
  local b="$1"
  for p in "${PROTECTED[@]}"; do
    [[ "$b" == "$p" ]] && return 0
  done
  return 1
}

echo "Remote: $REMOTE"
echo "Modo: $MODE"
echo "Protegidas: ${PROTECTED[*]}"
echo

mapfile -t remote_branches < <(
  git for-each-ref --format='%(refname:short)' "refs/remotes/$REMOTE" \
    | sed "s#^$REMOTE/##" \
    | grep -v '^HEAD$' \
    | sort -u
)

delete_count=0
skip_count=0

for branch in "${remote_branches[@]}"; do
  if is_protected "$branch"; then
    echo "⏭️  Mantida: $branch"
    ((skip_count+=1))
    continue
  fi

  if [[ "$MODE" == "--dry-run" ]]; then
    echo "🧪 Dry-run: removeria $branch"
  else
    echo "🗑️  Removendo $branch..."
    git push "$REMOTE" --delete "$branch"
  fi
  ((delete_count+=1))
done

echo
if [[ "$MODE" == "--dry-run" ]]; then
  echo "✅ Dry-run concluído."
  echo "Branches que seriam removidas: $delete_count"
  echo "Branches mantidas: $skip_count"
  echo "Para aplicar de fato, execute com --apply."
else
  echo "✅ Remoção concluída."
  echo "Branches removidas: $delete_count"
  echo "Branches mantidas: $skip_count"
fi
