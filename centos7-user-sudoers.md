Erro:
Username is not on sudoers list
    
Solução
    
```
su 
visudo
```
Adicionar a seguinte linha no final do documento
   
```
username ALL=(ALL)  ALL
```
    
Ou ainda,
```
username ALL=(ALL)  NOPASSWD:ALL
```
  
caso queira permitir que o usuário entre em modo superuser sem necessidade de senha.
