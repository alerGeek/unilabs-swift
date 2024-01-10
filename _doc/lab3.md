<!-- TOC -->
* [Description](#description)
* [Tasks](#tasks)
  * [Zadanie 6.1.](#zadanie-61)
  * [Zadanie 6.2.](#zadanie-62)
  * [Zadanie 6.3.](#zadanie-63-)
  * [Zadanie 6.4.](#zadanie-64)
  * [Zadanie 6.5.](#zadanie-65)
  * [Zadanie 7.1.](#zadanie-71)
  * [Zadanie 7.2.](#zadanie-72)
  * [Zadanie 8.1](#zadanie-81)
  * [Zadanie 8.2.](#zadanie-82)
  * [Zadanie 8.3.](#zadanie-83)
  * [Zadanie 8.4.](#zadanie-84)
  * [Zadanie 8.5.](#zadanie-85)
  * [Zadanie 9.1.](#zadanie-91)
  * [Zadanie 9.2.](#zadanie-92)
  * [Zadanie 9.3.](#zadanie-93)
  * [Zadanie 9.4.](#zadanie-94)
  * [Zadanie 9.5.](#zadanie-95)
<!-- TOC -->

# Description
The document description of each tasks, that should be done. Task's descriptions are written in polish.

# Tasks
## Zadanie 6.1.
1. Napisz program konsolowy, który zdefiniuje tablicę elementów całkowitych o wartościach domyślnych. Rozmiar tej tablicy należy ustawić na 10.
2. Dodaj wczytaną od użytkownika liczbę całkowitą na zerowy element tablicy.
3. Dodaj wczytaną od użytkownika liczbę całkowitą na indeksie tabeli, który poda użytkownik. Jeżeli taki indeks nie istnieje, należy ją dodać na koniec tablicy.
4. Wyświetl elementy otrzymanych tablic.

## Zadanie 6.2.
Napisz program konsolowy, który wczyta od użytkownika liczbę elementów tablicy oraz jej elementy całkowite. Następnie:
1. Sprawdzi i wyświetli, czy wczytana liczba całkowita:
   1. jest pierwszym elementem tablicy, 
   2. jest ostatnim elementem tablicy.
2. Posortuje elementy tablicy i je wyświetli.
3. Wyświetli najmniejszą i największą liczbę w tej tablicy.

## Zadanie 6.3. 
1. Napisz program konsolowy, który wczyta od użytkownika liczbę elementów tablicy i jej elementy całkowite, a następnie:
2. Wyświetli najdłuższy podciąg rosnący. Jeśli taki podciąg nie istnieje, należy wyświetlić odpowiednią informację.
3. Sprawdzi, czy elementy tablicy tworzą ciąg malejący.

## Zadanie 6.4.
1. Napisz program konsolowy, który zdefiniuje tablicę dwuwymiarową, przypisze jej wartości, a następnie wyświetli ją w postaci macierzy.

## Zadanie 6.5.
1. Napisz program konsolowy, który wczyta od użytkownika liczbę wierszy i kolumn macierzy oraz jej elementy całkowite.
2. Sprawdź, w którym wierszu występują elementy o największej sumie. Jeśli istnieje więcej takich wierszy, należy wyświetlić pierwszy.

## Zadanie 7.1.
1. Napisz program konsolowy, w którym zdefiniowana zostanie funkcja, która zwraca wartość prawda, jeżeli wśród cyfr podanej liczby jest podana cyfra oraz fałsz w przeciwnym wypadku.
2. Należy w pętli, aż do podania liczby 0, pobierać od użytkownika pary: liczba oraz cyfra i wyświetlać użytkownikowi informację, czy podana cyfra jest jedną z cyfr podanej liczby.    public func zadanie1() -> Void {

## Zadanie 7.2.
1. Napisać funkcję, która jako parametry dostaje dwie tablice złożone z liczb całkowitych, a jako wynik wyda tablicę złożoną z unikalnych elementów należących do co najmniej jednej z tablic. Nagłówek funkcji powinien uwzględniać fakt, iż przy wywołaniu funkcji nie podajemy nazw parametrów.
2. Napisać funkcję, która pobiera od użytkownika poprawny rozmiar tablicy oraz jej elementy i zwraca tablice jako wynik. Nagłówek funkcji powinien uwzględniać fakt, iż przy wywołaniu funkcji nie podajemy nazwy parametru.
3. Napisać program, w którym użytkownik podaje dwa ciągi liczb całkowitych i utworzony zostanie ciąg złożony z unikalnych elementów należących do co najmniej jednego z ciągów. Użyć zdefiniowanych wcześniej funkcji.

## Zadanie 8.1
1. Napisz program konsolowy, który zdefiniuje krotkę osoba składającą się z elementów takich jak: imię, nazwisko, rok urodzenia.
2. Napisz funkcję, która dostaje jako parametry wejściowe dwie zmienne typu osoba i jako wynik zwraca wartość:
3. Utwórz dwie krotki typu osoba. Wyświetl, osobę starszą lub obie, jeśli są w takim samym wieku. Użyj zdefiniowanej wyżej funkcji

## Zadanie 8.2.
1. Napisz program konsolowy, który zdefiniuje krotkę student składającą się z elementów takich jak: nazwisko, trzy oceny, średnia ocen. Należy zapewnić poprawne wprowadzenie ocen.
2. Wczytaj dane n studentów. Wyświetl dane studentów w kolejności malejącej według uzyskanej średniej. Należy zapewnić poprawne wprowadzenie ocen.

## Zadanie 8.3.
1. Wprowadź od użytkownika liczbę mieszkań, a następnie wczytaj dane mieszkań do tablicy. Każde mieszkanie składa się z elementów takich jak: lokalizacja, powierzchnia oraz cena za metr.
2. Wyświetl mieszkanie najdroższe oraz najtańsze.

## Zadanie 8.4.
1. Zdefiniuj typ wyliczeniowy Miesiac, który zawiera 12 miesięcy.
2. Dopasuj porę roku dla danego miesiąca za pomocą instrukcji switch. Załóż, że dany miesiąc jest przyporządkowany do jednej pory roku.

## Zadanie 8.5.
1. Zdefiniuj typ wyliczeniowy Standard dla mieszkania (wysoki, średni, niski).
2. Zmodyfikuj zad. 8.3 uzupełniając dane o standardzie mieszkania.    

## Zadanie 9.1.
1. Napisz program konsolowy, który zdefiniuje strukturę liczbaZespolona składającą się z części rzeczywistej i urojonej liczby.
2. Napisz funkcje, które będą implementowały działania na dwóch liczbach zespolonych:
   1. dodawanie dwóch liczb zespolonych. 
   2. odejmowanie dwóch liczb zespolonych. 
   3. mnożenie dwóch liczb zespolonych
3. Opracuj menu dla zaimplementowanych funkcjonalności. Najpierw użytkownik powinien podać dwie liczby zespolone, a później wybrać działanie. Wszystko powinno być realizowane w pętli, aż użytkownik nie zechce zakończyć programu.

## Zadanie 9.2.
1. Napisz program konsolowy, który zdefiniuje strukturę loty składającą z: 
   1. miejsca wylotu (jako słownik: numer lotniska i jego nazwa),
   2. miejsca docelowego (jako słownik: numer lotniska i jego nazwa)
   3. oraz czasu podróży w minutach.
2. Wczytaj dane dla n lotów do tablicy (n – podaje użytkownik). Należy sprawdzić poprawność danych.
3. Wyświetl dane wszystkich lotów.
4. Wyświetl dane wszystkich lotów, które trwają dłużej niż średnia wszystkich. Do obliczenia średniej długości lotów zdefiniować funkcję.
5. Usuń dane wszystkich lotów, które trwają krócej niż średnia wszystkich lotów.
6. Wyświetl dane lotów.

## Zadanie 9.3.
1. Napisz program konsolowy, który zdefiniuje zbiór samochody składający się z modeli samochodów.
2. Wprowadź nazwy dla 6 samochodów.
3. Wyświetl wszystkie elementy zbioru.
4. Wczytaj model samochodu od użytkownika i jeżeli istnieje w zbiorze, to należy go usunąć. Wyświetlić informację dla użytkownika o wykonanej operacji.

## Zadanie 9.4.
1. Napisz program konsolowy, który zdefiniuje strukturę rzutOszczepem składającą się z identyfikatora osoby, trzech prób rzutów.
2. Wczytaj dane dla czterech zawodników.
3. Wyświetl zawodnika, który uzyskał największą średnią swoich rzutów.
4. Usuń zawodnika, który uzyskał najmniejszą średnią swoich rzutów.

## Zadanie 9.5.
1. Napisz program konsolowy, który zdefiniuje słownik student, który zawiera nazwisko i identyfikator studenta.
2. Dodaj 5 studentów na podstawie wczytanych danych od użytkownika.
3. Wyświetl wszystkie dane.
4. Wczytaj dane studenta i wyszukaj go. Jeśli istnieje należy wyświetlić dane. W przeciwnym wypadku wyświetl odpowiednią informację.
5. Wczytaj dane studenta i jeśli istnieje, należy go usunąć.
