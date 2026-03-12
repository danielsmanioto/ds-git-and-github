<div align="center">

# 🚀 ds-git-and-github

**Repositório de estudos e referência prática sobre Git e GitHub**

[![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)](https://git-scm.com/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/)
[![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)](https://github.com/features/actions)
[![Shell Script](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)
[![Markdown](https://img.shields.io/badge/Markdown-000000?style=for-the-badge&logo=markdown&logoColor=white)](https://www.markdownguide.org/)

[![Licença MIT](https://img.shields.io/badge/licen%C3%A7a-MIT-blue?style=flat-square)](LICENSE)
[![Contribuições bem-vindas](https://img.shields.io/badge/contribui%C3%A7%C3%B5es-bem--vindas-brightgreen?style=flat-square)](https://github.com/danielsmanioto/ds-git-and-github/issues)
[![Mantido](https://img.shields.io/badge/mantido-sim-success?style=flat-square)](https://github.com/danielsmanioto/ds-git-and-github/commits/main)

</div>

---

## 📖 Sobre

Este repositório reúne materiais práticos de estudo e referência sobre **Git** e **GitHub**, organizados para facilitar a consulta no dia a dia de desenvolvimento.

## 🎯 Objetivo

Centralizar materiais úteis para consulta rápida:

- 📌 Comandos de Git mais usados
- 📚 Tutoriais práticos (ex.: `git worktree`)
- ⚙️ Automações com GitHub Actions
- 🤖 Prompts e validadores de qualidade de código

## 🗂️ Estrutura do projeto

```text
.
├── README.md
├── comandos-uteis.md
├── git/
│   ├── recursos/
│   │   ├── apagar-branches-remotas.sh
│   │   └── metricas-repositorio.sh
│   └── tutoriais/
│       └── git-worktree.md
├── github/
│   └── tutoriais/
│       └── github-actions.md
└── prompts/
    └── validador-analise-arquiteto.md
```

## 📚 Conteúdos

### 🐙 Git

| Recurso | Tipo | Descrição |
|---------|------|-----------|
| [Comandos Úteis](comandos-uteis.md) | 📋 Referência | Guia rápido com os principais comandos do dia a dia |
| [Git Worktree](git/tutoriais/git-worktree.md) | 📖 Tutorial | Como trabalhar com múltiplas branches simultaneamente |
| [Git Worktree no VS Code](git/tutoriais/git-worktree-multiplos-vs-code.md) | 📖 Tutorial | Como usar múltiplas worktrees no Visual Studio Code |
| [Apagar Branches Remotas](git/recursos/apagar-branches-remotas.sh) | 🔧 Script | Remove branches remotas, exceto `main` e `develop` |
| [Métricas do Repositório](git/recursos/metricas-repositorio.sh) | 📊 Script | Gera métricas de commits e Pull Requests |

### 🐱 GitHub

| Recurso | Tipo | Descrição |
|---------|------|-----------|
| [GitHub Actions](github/tutoriais/github-actions.md) | 📖 Tutorial | Automações e pipelines de CI/CD |

### 🤖 Prompts e Validadores

| Recurso | Tipo | Descrição |
|---------|------|-----------|
| [Validador: Análise de Arquiteto](prompts/validador-analise-arquiteto.md) | ✅ Checklist | 72 pontos de análise técnica e arquitetural |

---

## 🔧 Scripts de recursos

### 1️⃣ Apagar branches remotas (mantendo `main` e `develop`)

```bash
# Modo seguro (simulação — não aplica nenhuma alteração)
./git/recursos/apagar-branches-remotas.sh

# Aplicar de fato
./git/recursos/apagar-branches-remotas.sh origin --apply
```

### 2️⃣ Métricas do repositório

```bash
# Exibir todas as métricas
./git/recursos/metricas-repositorio.sh

# Filtrar PRs por autor
./git/recursos/metricas-repositorio.sh danielsmanioto
```

> ⚠️ **Observação:** As métricas de PR utilizam `gh` (GitHub CLI) autenticado.

---

## ✅ Prompts e Validadores

### Validador: Análise de Código (Arquiteto Sênior)

- 📄 Arquivo: [prompts/validador-analise-arquiteto.md](prompts/validador-analise-arquiteto.md)
- ✅ Checklist com **72 pontos** de análise técnica e arquitetural
- 🔍 Cobre: estrutura, Git, qualidade, testes, dependências, docs, CI/CD, segurança, performance e observabilidade
- 💡 Use para avaliar projetos próprios ou de equipes

---

## 🚧 Próximas ideias

- [ ] Pull Request templates
- [ ] Conventional Commits
- [ ] Estratégias de branching (`main`, `develop`, `release`)
- [ ] Boas práticas de revisão de código

---

## 👤 Autor

**Daniel Smanioto**

[![GitHub](https://img.shields.io/badge/GitHub-danielsmanioto-181717?style=flat-square&logo=github)](https://github.com/danielsmanioto)

---

<div align="center">

Feito com ❤️ para a comunidade de desenvolvedores

</div>