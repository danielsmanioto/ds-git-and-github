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

- Use bare repository para organizar
- Nomeie as pastas com contexto (`projeto-feature-x`).
- Faça commit antes de remover worktree.
- Use junto com branches curtas e focadas.

# Executando worktreee real
```bash
mkdir git
```

```bash
git clone git@github.com:danielsmanioto/ds-git-and-github.git 
```

```
cd ds-git-and-github 
```

```bash
git worktree add ../nomebranch -b hotfix/nomebranch  
```

```bash
git worktree list 
```

```bash
git worktree remove ../nomebranch
```

# Clone com bare / boas praticas

```bash
git clone --bare git@github.com:danielsmanioto/ds-git-and-github.git .git
```

```bash
git worktree add main main
```

```bash
git worktree add develop develop
```



