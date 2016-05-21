### Konfiguracja sieci w systemie Linux
####Teoria
1. Dziesiętne na binarne
2. Liczenie podsieci :] :evil:
Co to jest host, adres rozgłoszeniowy i sieci. 
2. `ifconfig`
3. `route`
4. `host`
5. `traceroute`
6. `ssh` i `scp`
6. `ifconfig eth0:0 192.168.1.6 up` - dodawanie aliasów - dodatkowych adresów IP
####Zadania
#####Liczba hostów
Podaj adresy rozgłoszeniowe i sieci oraz liczbę hostów podsieci, do których należą następujące adresy:

1. 192.168.0.4/24
1. 192.168.0.4/25
1. 192.168.0.4/31 (bad)
1. 172.16.0.164/17
1. 10.34.63.200/8
1. 10.12.60.10/12
1. 10.12.60.10/16

#####Podział na podsieci

Podziel następujące sieci wg wytycznych:

1. 192.168.0.0/24 - na dwie równe podsieci
2. 192.168.0.0/24 - na podsieci umożliwiające osadzenie 100, 20 i 4 hostów

> 10 ptk

---

#####Podaj następujące dane
1. Adres IP i adres MAC swojego interfejsu sieciowego
2. Adres swojej bramy domyślnej
3. Adres IP serwisu wp.pl
4. Trasę sieciową z Twojego komputera do serwisu wp.pl

#####Połączenie ssh
Zainstaluj `openssh-server`. Stwórz nowego użytkownika dla osoby, z którą wykonasz to zadanie (pamiętaj aby nowy użytkownik posiadał hasło `passwd`). Zaloguj się przez protokół `ssh` do komputera kolegi na konto, które właśnie stworzył i umieść tam katalog o nazwie `sol`, a w nim plik o nazwie `secret` ze swoją datą urodzenia (lub inną "tajną" daną). Po wszystkim wyloguj się (`exit`).

Dodaj następujący adres IP do swojego interfejsu sieciowego:

    192.168.<przydzielony_numer>.<numer_twojego_pendrive>
    # np.
    192.168.123.66

skonfiguruj serwer ssh tak alby pozwalał na połączenia jedynie przez nowo utworzony adres. Np. `ListenAddress 192.168.123.66` w `/etc/ssh/sshd_config`. Zrestartuj usługę `ssh` (`sudo service <usługa> <akcja>`. Upewnij się (z kolegą), że nie da się już nawiązać połączenia przez główny adres IP, a jedynie przez alias.

Edytuj tajny plik kolegi w jego katalogu domowym - za chwilę wymienicie się tymi plikami. 
Polecenie `scp` jest bardzo podobne do polecenia `cp` z tą różnicą, że może kopiować pliki poprzez protokół `ssh`. 

    scp <źródło> <cel>

Zarówno `żródło` jak i `cel` mogą wskazywać na lokalny plik lub na plik znajdujący się na zdalnym systemie. Składnia zdalnej ścieżki jest następująca:

    scp [<nazwa_użytkownika>@]<adres_zdalnego_systemu>:<zdalna_ścieżka> <cel>

> Nazwa użytkownika ze znakiem `@` jest opcjonalna.

Np:

    scp pkucmus@192.168.1.10:~/sol/tajny_plik ~/sol/tajny_plik_od_karola

> 10 ptk
