```md
git config --global core.editor code // para abrir no vscode
git config --global --edit

[safe]
    directory = *

[user]
name = seuuser
email = seuemail@hotmail.com
password = "dada"
[filter "lfs"]
clean = git-lfs clean -- %f
smudge = git-lfs smudge -- %f
process = git-lfs filter-process
required = true
[core]
editor = code --wait
[alias]
b = !git pull
s = !git status -s
c = !git add --all && git commit -m
l = !git log --pretty=format:'%C(blue)%h %C(red)%d %C(white)%s - %C(cyan)%cn, %C(green)%cr'
p = !git push
pp = !git push -u origin
local = !git branch --list
remota = !git branch -a
entrar = !git checkout
```

```md
# Docs => https://blog.betrybe.com/git/git-branch/
# Docs => https://www.varonis.com/pt-br/blog/git-branching
# Docs => https://github.com/heudersena/all_exemple/blob/main/Git_hub/Git-config.md

# https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk_free-2.02-win-setup.exe
# Separar PDF => pdftk tim.pdf  burst output page_%02d.pdf
# https://metring.com.br/como-remover-uma-branch-no-git

# Entrar em uma brach existente
exec git checkout nome-da-brach

# Criação de um branch a partir de outro branch
exec git checkout -b branch1 branch2

# criar uma nova branch => copy
exec git checkout -b copy

# subir a nona branch para o github
exec git push --set-upstream origin copy

# Listar todas as branch
exec git branch -a     # remotas
exec git branch --list # local

# removendo branch LOCAL E REMOTA
exec git branch -D nome-da-branch # local
exec git push origin --delete nome-da-branch # remota

# Merge de branches em um repositório local
exec git checkout main
exec git merge copy

```
