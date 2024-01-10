<!-- TOC -->
* [Description](#description)
* [Tasks](#tasks)
  * [Zadanie 10.2. Utwórz klasę Pracownik](#zadanie-102-utwórz-klasę-pracownik)
  * [Zadanie 10.3. Utwórz klasę Student](#zadanie-103-utwórz-klasę-student)
  * [Zadanie 10.4. Utwórz klasę StudentNaErasmusie](#zadanie-104-utwórz-klasę-studentnaerasmusie)
<!-- TOC -->

# Description
The document description of each tasks, that should be done. Task's descriptions are written in polish.

# Tasks

## Zadanie 10.2. Utwórz klasę Pracownik
1. Utwórz klasę Pracownik, dziedziczącą po klasie Osoba i zawierającą: rok zatrudnienia, stanowisko, stawkę za godzinę i liczbę zrealizowanych godzin oraz nazwę firmy. Stanowisko powinno być z góry zdefiniowane jako typ wyliczeniowy.
2. Utwórz metodę init() korzystając z tej z klasy Osoba.
3. Utwórz funkcję zwracającą liczbę lat pracy w danej firmie.
4. Utwórz funkcję zwracającą wysokość pensji za przeprowadzone godziny, według podanej stawki. 
5. Utwórz funkcję wyświetlającą dane pracownika, nadpisując funkcję z klasy Osoba. 
6. Przetestuj utworzone funkcje dla dwóch pracowników.

## Zadanie 10.3. Utwórz klasę Student
1. Utwórz klasę Student, dziedziczącą po klasie Osoba (zad. 10.1) i scharakteryzowaną przez: numer indeksu, kierunek studiów, rok studiów, oceny z 5 przedmiotów.
2. Utwórz metodę init(). Kierunek studiów powinien być zdefiniowany jako typ wyliczeniowy. Należy zapewnić poprawność danych wprowadzonych ocen. 
3. Utwórz funkcję wyznaczającą średnią studenta na podstawie jego ocen. 
4. Utwórz funkcję wyświetlającą dane studenta. 
5. Utwórz tablicę studentów. Liczbę studentów należy pobrać od użytkownika. Należy wczytać dane studentów. Należy utworzyć odpowiednią funkcję. 
6. Wyświetl wszystkich studentów studiujących na podanym przez użytkownika kierunku. Należy utworzyć odpowiednią funkcję.


## Zadanie 10.4. Utwórz klasę StudentNaErasmusie
1. Utwórz klasę StudentNaErasmusie, dziedziczącą po klasie Student (zad. 10.3) i scharakteryzowaną przez: nazwę uczelni za granicą, datę rozpoczęcia Erasmusa, datę zakończenia Erasmusa oraz kursy, w których student brał udział (w postaci tablicy zawierającej nazwę kursu oraz uzyskane oceny).
2. Utwórz metodę init().
3. Utwórz funkcję wyświetlającą dane studenta na Erasmus, korzystając z funkcji dziedziczonych.
4. Utwórz funkcję wyznaczającą czas spędzony na Erasmusie.
5. Utwórz funkcję wyznaczającą ocenę studenta na podstawie uczestnictwa w kurach.
