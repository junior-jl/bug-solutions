Erro: adaptador wifi bloqueado no laptop ideapad.

Solução:

```
sudo rfkill unblock all
sudo rfkill list
sudo modprobe -r ideapad_laptop
```
