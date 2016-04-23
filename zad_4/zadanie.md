### Instalacja oprogramowania (deb, apt, source code)

Poleceniem `wget` pobierz plik `Python-2.7.11.tar.xz` ze strony [python.org](http://www.python.org). 
Poleceniem `tar` (jak dokładnie użyć tego polecenia wyszukaj w internecie) rozpakuj plik do katalogu `python` w swoim katalogu domowym. Skonfiguruj (**pamiętaj o `--prefix`!** docelowy katalog instalacji to `/opt/python/2.7.11`), skompiluj i zainstaluj pobrany kod. Stwórz dowiązanie symboliczne (`ln -s`) katalogu `/opt/python/2.7.11` do `/opt/python/2.7`. 

Pobierz paczkę `deb` z edytorem kodu Sublime Text 3 z [https://www.sublimetext.com/3](https://www.sublimetext.com/3) (wersja dla Ubuntu 32 bit). I ją zainstaluj. Uruchom edytor aby sprawdzić czy działa.

Usuń pakiet `nginx` poleceniem `apt-get`, usuń konfigurację `nginx` z katalogu `/etc/nginx/` (`rm -r`). Następnie zainstaluj `nginx` ponownie.

> **Zaliczenie zadania**  
> W pierwszym terminalu (użyj zakładek z terminala GUI `[ctrl]` + `[shift]` + `[t]`) uruchom interpreter Python w wersji `2.7.11` w drugiej `3.5`, a w trzeciej poleceniem `ll` udowodnij istnienie dowiązania symbolicznego. 
> 
> Poleceniem `ll /etc/nginx` udowodnij, że pliki usługi `nginx` właśnie zostały dodane.
