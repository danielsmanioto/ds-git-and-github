# Tutorial: Git Worktree

`git worktree` permite trabalhar com múltiplas branches ao mesmo tempo, em pastas separadas.

## Quando usar

- Trabalhar em hotfix sem sair da branch atual.
- Comparar duas features lado a lado.
- Testar correções sem interromper o trabalho principal.

## Criar uma nova worktree

```bash
git worktree add ../projeto-hotfix hotfix/login
```

Isso cria uma nova pasta `../projeto-hotfix` já na branch `hotfix/login`.

## Listar worktrees

```bash
git worktree list
```

## Remover worktree

```bash
git worktree remove ../projeto-hotfix
```

## Limpar referências antigas

```bash
git worktree prune
```

## Boas práticas

- Nomeie as pastas com contexto (`projeto-feature-x`).
- Faça commit antes de remover worktree.
- Use junto com branches curtas e focadas.
