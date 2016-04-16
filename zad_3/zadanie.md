### Uprawnienia w systemie plików, procesy

####Teoria
1. Budowa oznaczenia uprawnień.
2. Co to jest process.
####Zadania

Utwórz katalog `~/sol/zad_3/`. W nim trzy katalogi `public`, `group`, `user`. W każdym stwórz po pliku tekstowym z `echo "I am a $(pwd | awk -F'/' '{print $NF}') file."`. Stwórz grupę o nazwie `sol_group` i dwóch użytkowników `sol_user` i `public_user`. Użytkownika `sol_user` dodaj do grupy `sol_group`. Dodaj swojego użytkownika do grupy `sol_group`. Ustaw uprawnienia katalogów w następujący sposób:

    ~/sol/zad_3
    ├── user (pełne prawa dla Ciebie, żadnych praw dla reszty)
    │   └── user_file (j/w)
    ├── group (pełne prawa dla grupy `sol_group` i Ciebie, żadnych praw dla reszty
    │   └── group_file (j/w)
    └── public (wszystkie prawa dla Ciebie i grupy `sol_group`, prawo do odczytu i wykonywania dla reszty)
        └── public_file (wszystkie prawa dla Ciebie, grupy `sol_group` i prawo odczytu dla reszty)

W osobnych zakładkach CLI zaloguj się na użytkowników `sol_user` i `public_user`. Sprawdź czy Twoje zabezpieczenia działają.

#### Użyteczne komendy
`sudo` - gdy polecenia wymagają praw administracyjnych
`useradd {nazwa_uzytkownika}` - prostsza wersja `adduser` - jedną z cech `useradd` jest to że nie nadaje użytkownikowi hasła (tylko super user może się zalogować przez `sudo su {nazwa_uzytkownika}`.
`groupadd {nazwa_grupy}` - tworzy nową grupę
`usermod -a -G {nazwa_grupy} {nazwa_uzytkownika}` - dodaje użytkownika do grupy
`userdel {nazwa_uzytkownika}` i `groupdel {nazwa_grupy}` - usuwa użytkownika lub grupę
`chown {nazwa_uzytkownika}:{nazwa_grupy} {ścieżka}` - zmienia właścicieli katalogu
`chown -R {nazwa_uzytkownika}:{nazwa_grupy} {ścieżka}` - zmienia właścicieli pliku (katalogu) i jego zawartości
`chmod {numery_uprawnien: user, group, other} {ścieżka}` - zmienia uprawnienia do pliku (katalogu) (i jego zawartości przy podaniu `-R`).
##### numery uprawnień
`4` - odczyt (**r** ead)
`2` - zapis (**w** rite)
`1` - wykonanie (e **x** ecute)
