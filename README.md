# ds-git-and-github

Repositório de estudos e referência prática sobre **Git** e **GitHub**.

## Objetivo

Centralizar materiais úteis para consulta rápida:

- comandos de Git mais usados;
- tutoriais práticos (ex.: `git worktree`);
- automações com GitHub Actions.

## Estrutura do projeto

```text
.
├── README.md
├── git/
│   ├── recursos/
│   │   ├── apagar-branches-remotas.sh
│   │   └── metricas-repositorio.sh
│   └── tutoriais/
│       └── git-worktree.md
└── github/
    └── tutoriais/
        └── github-actions.md
```

## Conteúdos

### Git

- Tutorial: [Git Worktree](git/tutoriais/git-worktree.md)
- Script: [Apagar branches remotas (exceto main/develop)](git/recursos/apagar-branches-remotas.sh)
- Script: [Métricas do repositório (commits e PRs)](git/recursos/metricas-repositorio.sh)

### GitHub

- Tutorial: [GitHub Actions](github/tutoriais/github-actions.md)

### Scripts de recursos (Git)

#### 1) Apagar branches remotas (mantendo main e develop)

- Arquivo: [git/recursos/apagar-branches-remotas.sh](git/recursos/apagar-branches-remotas.sh)
- Modo seguro (simulação): `./git/recursos/apagar-branches-remotas.sh`
- Aplicar de fato: `./git/recursos/apagar-branches-remotas.sh origin --apply`

#### 2) Métricas do repositório

- Arquivo: [git/recursos/metricas-repositorio.sh](git/recursos/metricas-repositorio.sh)
- Executar: `./git/recursos/metricas-repositorio.sh`
- Filtrar PRs por autor: `./git/recursos/metricas-repositorio.sh danielsmanioto`

Observação: as métricas de PR usam `gh` (GitHub CLI) autenticado.

## Próximas ideias

- Pull Request templates
- Conventional Commits
- Estratégias de branching (`main`, `develop`, `release`)
- Boas práticas de revisão de código