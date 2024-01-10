import Foundation

public class zadanie4 {
    public init() {}

    public func zadanie1() -> Void {
        print("Podaj rok, aby sprawdzić czy jest przestępny czy nie:")
        let year: Int = Int(readLine()!)!

        if (year % 4 == 0 && year % 100 != 0) {
            print("Rok jest przestępny")
        } else if (year % 400 == 0) {
            print("Rok jest przestępny")
        }
        else {
            print("Rok nie jest przestępny")
        }
    }

    public func zadanie2() -> Void {
        print("Podaj rok, aby w jakim był wieku:")
        let input: Int = Int(readLine()!)!
        var year: Int = input
        guard (year >= 2 && year <= 3010) else {
            fatalError("Rok jest poza dozolonym zasięgiem!")
        }

        var age = ""    
        while(year / 1000 >= 1) {
            year -= 1000
            age += "X"
            print("Rok \(year), \(age)")
        }

        print(year)
        guard (year <= 1000) else {
            fatalError("Rok nie może być powyżej 100 w tym momencie!")
        }

        switch year {
            case 0 ..< 100: age +=  "I"
            case 100 ..< 200: age += "II"
            case 200 ..< 300: age += "III"
            case 300..<400: age += "IV"
            case 400..<500: age += "V"
            case 500..<600: age += "VI"
            case 600..<700: age += "VII"
            case 700..<800: age += "VIII"
            case 800..<900: age += "IX"
            case 900...1000: age += "X"
                
            default:
                print("Niezana wartość")
        }
        print("Rok \(input) jest w \(age)")
    }

    public func zadanie3() -> Void {
        print("Podaj srednia ze studiow")
        let input : Float = Float(readLine()!)!

        var stypendium = 0.0
        switch(input) {
            case 4.5 ... 5.0 :         stypendium = 200.0
            case 4.0 ..< 4.5:   stypendium = 150.0
            case 3.0 ..< 4.0:   stypendium = 100.0
            case 0 ..< 3.0:       stypendium = 0.0
            default: print("Bledna srednia")
        }
        print("stypendium=", stypendium)
    }

    public func zadanie4() -> Void {
        print("Podaj pierwszą liczbę całkowitą:")
        guard let input1 = Int(readLine()!) else {
            fatalError("Podana liczba musi być całkowitą!")
        }
        print("Podaj drugą liczbę całkowitą:")
        guard let input2 = Int(readLine()!) else {
            fatalError("Podana liczba musi być całkowitą!")
        }
        
        print("""
        Podaj wybraną operację:
        1 - dodawanie
        2 - odejmowanie
        3 - mnożenie
        4 - dzielenie
        """)
        let choice = Int(readLine()!) 
        switch choice {
        case 1: print("wynik=", input1 + input2)
        case 2: print("wynik=", input1 - input2)
        case 3: print("wynik=", input1 * input2)
        case 4: input2 == 0 ? print("Nie można dzielić przez 0!") : print("wynik=", Float(input1)/Float(input2))
        default: print("Nieznana komenda.")
        }
    }
    public func zadanie5() {
        print("Not implemented!")
    }

    public func zadanie6() {
        print("Not implemented!")
    }

    public func zadanie7() {
        print("Not implemented!")
    }
}
    
public class zadanie5 {
    public init() {}

    public func zadanie1() -> Void {
        print("Podaj liczbę elementów ciągu licz losowych:")
        let count: Int = Int(readLine()!)!
        var sum: Int = 0
        var maxValue: Int = 0
        var maxCount: Int = 0

        var previos = 0
        var isAscending = true
        for i in 1 ... count {
            let a = Int.random(in: 1...100)
            if (isAscending || i == 1) {
                isAscending = previos < a
            }
            if (a >= maxValue) {
                if (a != maxValue) {
                    maxCount = 0
                }
                maxValue = a
                maxCount += 1
            }
            
            previos = a
            sum += a
            print("Wylosowano liczbę \(a)")
        }
        print("suma= \(sum)")
        print("avg=", Double(sum) / Double(count))
        print("Ciąg jest rosnący?", isAscending)
        print("Największa liczba to \(maxValue) w ilości \(maxCount)")
    }

    public func zadanie2() -> Void {
        print("Podaj maksymalną wartość elementu ciągu Fibbonaciego")
        let max: Int = Int(readLine()!)!
        var n: Int = 0
        var f_n: Int = 0
        var f_n1 = 0
        var f_n2 = 0
        repeat {
            if (n == 0) {
                f_n = 0
            } else if  (n == 1) {
                f_n = 1
            } else {
                f_n = f_n1 + f_n2
            }
        n += 1
        f_n2 = f_n1
        f_n1 = f_n
        print("Element \(n-1)=\(f_n)")
        } while max > f_n
        print(f_n)
    }


    public func zadanie3() -> Void {
        print("Podaj liczbę, którą chcesz sprawdzić czy jest pierwsza")
        let input: Int = Int(readLine()!)!
        for i in stride(from: 2, to: sqrt(Double(input)), by: 1){
            if(input % Int(i) == 0) {
                print("Liczna nie jest pierwsza")
                return
            }
        }
        print("Liczna jest pierwsza")
    }

    public func zadanie4() -> Void {
        var input: Int
        repeat {
            print("Podaj liczbę conajmniej 3 cyfrową:")
            input = Int(readLine()!)!
        } while input < 100
        print("Ilość cyfr:", String(input).count)
        print("Suma cyfr:", String(describing: input).compactMap { Int(String($0)) }.reduce(0, +))
    }

    public func zadanie5() -> Void {
        print("Podaj ciąg znaków, aby sprawdzić czy jest palindronem:")
        let input: String = readLine()!
        let arr = Array(input)
        var arrReversed = Array(input)
        arrReversed.reverse()
        arr == arrReversed ? print("Ciąg jest palindronem") : print("Ciąg nie jest palindronem")
    }

    public func zadanie6() -> Void {
        var sum = 0 
        var i = 0 
        while i <= 7 { 
            if i % 2 == 0 { 
                i+=1
                continue
            } 
            print("Dodano", i)
            sum += i
            i+=1 
        } 
        print("Suma elementów wynosi \(sum)")
    }
}
