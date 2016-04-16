### Poruszanie się po systemie plików

####Teoria
1. Interfejs graficzny jest w większości przypadków zbędny.
2. Wielkość liter **ma znaczenie**.
3. Podstawowe polecenia.
* Listowanie plików
`ls`, `ls -a`, `ls -al`, `ll`
* `du -sh`
* Tworzenie katalogów
* Zmiana katalogu
* Posługiwanie się katalogami `.` i `..`
* Ścieżki `pwd`
* Katalog `~`
* `touch`
* Kopiowanie plików (recursive)
* Przenoszenie plików
* Usuwanie plików
* Czyszczenie terminalu `clear`
* Wyświetlanie zawartości `cat`, `less`, `head`, `tail`
* Wyszukiwanie w zawartości `grep`
* Shebang
* Edycja plików `vim`, `nano`

####Zadania

Używając CLI:
Stwórz katalog o nazwie `sol` w swoim katalogu domowym. W nim katalog o nazwie `zad1_cli`. W `zad1_cli` stwórz następujące katalogi: `to do`, `in progress`, `in review`, `verified`. Wewnątrz każdego z nich stwórz po pięć plików tekstowych z dowolną treścią (minimum: 10 linii tekstu). Po utworzeniu każdego z nich sprawdź ich rozmiar i usuń największy plik każdego katalogu. **Skopiuj** zawartość katalogu `in review` do katalogu `in progress`. Usuń katalog `in review`. Zmień nazwę katalogu `verified` na `done`. Wyświetl zawartość najmniejszego pliku z `to do`. Wyświetl `2` ostatnie linie z największego pliku w `in progress`. Wyświetl `3` pierwsze linie z największego pliku w `done`.

Używając GUI:
W katalogu `~/sol/` stwórz katalog o nazwie `zad1_gui` a w nim powtórz całość wykonaną przed chwilą w CLI.

Na końcu stwórz skrypt, który wykona całą cześć z użyciem CLI. Użyj polecenia `echo` aby informować użytkowników Twojego skryptu o tym co się dzieje.
