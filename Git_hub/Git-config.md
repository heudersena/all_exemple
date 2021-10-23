```md
git config --global core.editor code // para abrir no vscode
git config --global --edit

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
```
