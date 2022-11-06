# Erro encontrado ao realizar qualquer ação no git no Windows 10

Erro:

```
error: cannot spawn C:Program: No such file or directory
error: gpg failed to sign the data
fatal: failed to write commit object
```

```
 git config --list
diff.astextplain.textconv=astextplain
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
http.sslbackend=openssl
http.sslcainfo=C:/Program Files/Git/mingw64/ssl/certs/ca-bundle.crt
core.autocrlf=true
core.fscache=true
core.symlinks=false
pull.rebase=false
credential.helper=manager-core
credential.https://dev.azure.com.usehttppath=true
init.defaultbranch=master
filter.lfs.required=true
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
user.name=José Lira Junior
user.email=jljuniorpb@gmail.com
core.editor="C:\Users\Junior\AppData\Local\Programs\Microsoft VS Code\bin\code" --wait
gui.recentrepo=D:/GitHub/qunet
gui.recentrepo=D:/GitHub/topologia-rede-quantica
commit.gpgsign=true
gpg.program=C:Program
credential.helper=wincred
```

Solução:

`git config --global gpg.program "/c/Program Files/Git/usr/bin/gpg.exe"`

