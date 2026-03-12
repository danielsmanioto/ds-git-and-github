# Comandos úteis de Git

Guia rápido com comandos práticos para o dia a dia.

##  Fluxo do dia a dia
- `git pull origin nome-branch`
- `git status`
- `git add .`
- `git commit -m "mensagem aqui"`
- `git push origin nome-branch`

## 1) Configurações iniciais

- `git config --list`
- `git config --global user.name "Daniel Smanioto"`
- `git config --global user.email "daniel.smanioto@gmail.com"`
- `git config user.name "Daniel Smanioto"`
- `git config user.email "daniel.smanioto@gmail.com"`
- `git config --global --replace-all user.name "danielsmanioto"`
- `git config --edit --global`

## 2) Iniciar repositório e configurar remoto

- `git init`
- `git remote -v`
- `git remote add origin https://github.com/danielsmanioto/SOA`
- `git push -u origin master`
- `git clone caminho_do_projeto`

## 3) Fluxo básico

- `git status`
- `git add .`

## 6) Branches

- `git branch --merged master`
- `git branch`
- `git branch -r`
- `git branch -a`
- `git checkout -b <nome_branch>`
- `git push -u origin <nome_branch>`
- `git branch -d <nome_da_branch>`
- `git branch -D <nome_da_branch>`
- `git push origin --delete <nome_da_branch>`
- `git push origin :<nome_da_branch>`

## 7) Operações com branch

- `for i in $(git branch --list "SV*"); do git branch -D $i; done`

## 8) Merge e rebase

- `git rebase master`
- `git pull --rebase`
- `git checkout master`
- `git checkout -- benchmarks.rb`
- `git merge origin/<branch>`
- `git merge clean_up`
- `git merge --abort`
- `git mergetool --tool-help`

## 9) Diff, log e investigação

- `git diff v0.1 v0.2`
- `git diff HEAD`
- `git diff <branch_origem> <branch_destino>`
- `git diff --staged`
- `git diff v01_03 --name-only`
- `git bisect`
- `git ls-files`
- `git log --pretty=format: --name-only | sort | uniq -c | sort -rg | head -10`
- `git log --pretty=format: --name-only | sort | uniq -c | sort -rg`
- `git log --all --grep='Build 0051'`
- `git log develop..pre_release_5.49.0`
- `git log`
- `git log -1`
- `git log -1 arquivo`
- `git log --pretty=format:"%h %an %s" pom.xml`
- `git log -1 --author dsmanioto`
- `git log --author dsmanioto`
- `git log --stat`
- `git log --stat -p`
- `git log --graph`
- `git log --oneline`
- `git log --pretty=oneline`
- `git log --pretty=format:"%h %an %s"`
- `git log --before="2010-12-25"`
- `git reflog`
- `git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --oneline`

## 10) Primeiro e último commit

- `git log --date=relative --reverse --format="%ad" | head -n1`
- `git log --date=relative --reverse --format="Primeiro commit: %ad" | head -n1 && git log --date=relative --format="Ultimo commit: %ad" | head -n1`

## 11) Métricas e autoria

- `git blame --line-porcelain <NOME-DO-ARQUIVO> | sed -n 's/^author //p' | sort | uniq -c | sort -rn`
- `for FILENAME in $(git ls-files); do echo ${FILENAME}; git blame --line-porcelain ${FILENAME} | sed -n 's/^author //p' | sort | uniq -c | sort -rn; done`
- `git log --oneline | grep SCC-289`
- `git shortlog -s -n`
- `git shortlog -sn --since=1.month.ago --until=today`
- `git shortlog -sn --no-merges`
- `git shortlog -sne`
- `git shortlog -s -n --since "AUG 01 2020"`
- `git shortlog -s -n --author daniel.smanioto`
- `git shortlog -s -n --no-merges --author daniel.smanioto`
- `git whatchanged`
- `git whatchanged -p`

## 12) Tags, stash e fetch

- `git tag v01_01`
- `git push origin v01_01`
- `git checkout v01_01`
- `git tag -l "v*"`
- `git tag --delete v01_01`
- `git show`
- `git stash`
- `git stash save 'nome do stash'`
- `git stash apply`
- `git stash list`
- `git stash apply --index`
- `git stash drop stash@{0}`
- `git stash pop`
- `git stash clear`
- `git fetch nomebranch`
- `git fetch --all`
- `git fetch --all -p`
- `git cat-file -p pasta+hash`
- `git cat-file -p f066f6f33c4333301e09bc0f01ed9a0e050ceb25`

## 13) Git worktree

- `git worktree list`
- `git worktree add ../nome-da-pasta nome-da-branch`
- `git worktree add -b nova-branch ../nome-da-pasta`
- `git worktree remove ../nome-da-pasta`
- `git worktree prune`
- `git worktree move ../pasta-antiga ../pasta-nova`
- `git worktree lock ../nome-da-pasta`
- `git worktree unlock ../nome-da-pasta`

## 14) Exemplo de .gitignore

```gitignore
.classpath
.project
.settings/
.meta
.recommenders/
target/
*.ser
```
























