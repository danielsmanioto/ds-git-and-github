#!/usr/bin/env bash
set -euo pipefail

# Script de métricas de repositório Git/GitHub.
#
# O que mostra:
# - Primeiro commit
# - Último commit
# - Quem comita mais (shortlog)
# - Arquivos mais modificados
# - PRs criados (total)
# - PRs criados por autor
#
# Requisitos para métricas de PR:
# - GitHub CLI (gh) instalado
# - Autenticação ativa: gh auth status
#
# Uso:
#   ./metricas-repositorio.sh [autor_github] [limite_prs]
#
# Exemplos:
#   ./metricas-repositorio.sh
#   ./metricas-repositorio.sh danielsmanioto
#   ./metricas-repositorio.sh danielsmanioto 1000

AUTHOR_FILTER="${1:-}"
PR_LIMIT="${2:-1000}"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "❌ Execute este script dentro de um repositório Git."
  exit 1
fi

echo "📊 Métricas do repositório"
echo "========================="
echo

echo "1) Primeiro commit"
git log --reverse --date=iso --pretty=format:'- %h | %ad | %an | %s' | head -n1 || true
echo

echo "2) Último commit"
git log -1 --date=iso --pretty=format:'- %h | %ad | %an | %s' || true
echo

echo "3) Quem mais comita"
git shortlog -sne --all || true
echo

echo "4) Arquivos mais modificados (top 20)"
git log --pretty=format: --name-only \
  | sed '/^$/d' \
  | sort \
  | uniq -c \
  | sort -rn \
  | head -20 || true
echo

if command -v gh >/dev/null 2>&1; then
  if gh auth status >/dev/null 2>&1; then
    echo "5) Pull Requests"

    total_prs=$(gh pr list --state all --limit "$PR_LIMIT" --json number --jq 'length')
    echo "- Total de PRs (limite consultado: $PR_LIMIT): $total_prs"

    echo
    echo "- PRs por autor"
    gh pr list --state all --limit "$PR_LIMIT" --json author --jq '
      map(select(.author.login != null) | .author.login)
      | group_by(.)
      | map({autor: .[0], prs: length})
      | sort_by(.prs)
      | reverse
      | .[]
      | "  - \(.autor): \(.prs)"
    '

    if [[ -n "$AUTHOR_FILTER" ]]; then
      author_total=$(gh pr list --state all --limit "$PR_LIMIT" --search "author:$AUTHOR_FILTER" --json number --jq 'length')
      echo
      echo "- PRs do autor '$AUTHOR_FILTER': $author_total"
    fi
  else
    echo "5) Pull Requests"
    echo "- ⚠️ GitHub CLI sem autenticação. Execute: gh auth login"
  fi
else
  echo "5) Pull Requests"
  echo "- ⚠️ GitHub CLI (gh) não encontrado. Instale para métricas de PR."
fi

echo
echo "✅ Fim do relatório"
