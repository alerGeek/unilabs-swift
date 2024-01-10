import App
import Foundation

let zad1 = zadanie1()
let zad2 = zadanie2()
let zad3 = zadanie3()
let zad4 = zadanie4()
let zad5 = zadanie5()
let zad6 = zadanie6()
let zad7 = zadanie7()
let zad8 = zadanie8()
let zad9 = zadanie9()
let zad10 = zadanie10()


var input: String = ""
repeat {
    let args = CommandLine.arguments
    let addArgs = args.filter{ $0.hasPrefix("--zadanie")}
    if (addArgs.isEmpty) {
        print("Wybierz zadanie do uruchomienia w formacie. np.: '10.4' badz 2.1")
        input = readLine()!
    } else {
        input = addArgs.first!
    }
    
    switch input {
        case "0", "exit", "": print("Wyjscie z programu")
        case "1":   zad1.zadanie1()
        case "2.1": zad2.zadanie1()
        case "2.2": zad2.zadanie2()
        case "2.3": zad2.zadanie3()
        case "3.1": zad3.zadanie1()
        case "3.2": zad3.zadanie2()
        case "3.3": zad3.zadanie3()
        case "3.4": zad3.zadanie4()
        case "3.5": zad3.zadanie5()
        case "4.1": zad4.zadanie1()
        case "4.2": zad4.zadanie2()
        case "4.3": zad4.zadanie3()
        case "4.4": zad4.zadanie4()
        case "4.5": zad4.zadanie5()
        case "4.6": zad4.zadanie6()
        case "4.7": zad4.zadanie7()
        case "5.1": zad5.zadanie1()
        case "5.2": zad5.zadanie2()
        case "5.3": zad5.zadanie3()
        case "5.4": zad5.zadanie4()
        case "5.5": zad5.zadanie5()
        case "5.6": zad5.zadanie6()
        case "6.1": zad6.zadanie1()
        case "6.2": zad6.zadanie2()
        case "6.3": zad6.zadanie3()
        case "6.4": zad6.zadanie4()
        case "6.5": zad6.zadanie5()
        case "7.1": zad7.zadanie1()
        case "7.2": zad7.zadanie2()
        case "8.1": zad8.zadanie1()
        case "8.2": zad8.zadanie2()
        case "8.3": zad8.zadanie3()
        case "8.4": zad8.zadanie4()
        case "8.5": zad8.zadanie5()
        case "9.1": zad9.zadanie1()
        case "9.2": zad9.zadanie2()
        case "9.3": zad9.zadanie3()
        case "9.4": zad9.zadanie4()
        case "9.5": zad9.zadanie5()
        case "10.1": zad10.zadanie1()
        case "10.2": zad10.zadanie2()
        case "10.3": zad10.zadanie3()
        case "10.4": zad10.zadanie4()
        default: print("Nieznany numer zadania. Podaj ponownie w formie np.'2.2' lub '10.1'")
    }
    print()
} while (!["0", "exit", ""].contains(input))
