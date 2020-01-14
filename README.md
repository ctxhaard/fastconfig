# fastconfig
My configurations to get up and running fast on a new machine

## Authentication on NTLMv2 proxy
```bash
# installare cntlm
sudo apt install cntlm 
# modificare le impostazioni di cntlm
sudo vim /etc/cntlm.conf 
# ottenere un token di autenticazione dal proxy
sudo cntlm -M http://www.ansa.it
# scrivere il token di autenticazione nel file di configurazione 
vim /etc/cntlm.conf 
# riavviare cntlm
systemctl restart cntlm
# modificare le variabili d'ambiente in modo che sia utilizzato il proxy locale 
```

Modifiche apportate al file di configurazione:
```
Username        carlo.tomasin@texa.com
PassNTLMv2     C96C8ACCCA7DFFB5E6ED8A59D16A270D
Proxy           proxy.italia.texa.org:8080
Proxy           192.168.100.240:8080
NoProxy         localhost,127.0.0.1,lx-ctomasin,*.texa.org,192.168.10.0/16
Listen          1234
Allow           127.0.0.1
# provide proxy service to virtual machines
Allow           192.168.122.0/24
Deny            0/0
```
