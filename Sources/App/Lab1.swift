import Foundation

public class zadanie1 {
    public init() {}

    public func zadanie1() -> Void {
        var arr: [Int] = []
        var avg: Float = 0.0
        var sum: Int = 0
        for _ in 1 ... 5 
        {
            let rand = Int.random(in: 1 ... 100)
            arr.append(rand)
            sum += rand
        }
        avg = Float(sum) / Float(arr.count)
        print("Wylosowane liczby", arr)
        print("suma=", sum)
        print("avarage=", avg)        
    }
}

public class zadanie2 {
    public init() {}

    public func zadanie1() -> Void {
        print("Funkcja do obliczania wieku.")
        print("Podaj rok urodzenia:")
        let input: Int = Int(readLine()!)!
        let currentYear: Int = Calendar.current.component(.year, from: Date())
        let age: Int = currentYear - input
        print("Podany rok urodzenia: \(input). ", "Masz \(age) lat")
    }

    public func zadanie2() -> Void {
        print("Funkcja do obliczania pola i obwodu koła.")
        print("Podaj ppomień okręgu:")
        let r: Float = Float(readLine()!)!
        let pi: Float = Float(String(format: "%.2f", 3.1415))!
        let pole: Float = pi * r * r
        let obw = 2 * pi * r
        print("""
        pi=\(String(format: "%.2f", pi))
        r=\(String(format: "%.2f", r))
        pole=\(String(format: "%.2f", pole))
        obw=\(String(format: "%.2f", obw))
        """)
    }

    public func zadanie3() -> Void {
        let arr: [Int] = [Int.random(in: 1 ... 9), Int.random(in: 1 ... 9), Int.random(in: 1 ... 9)]
        var avg: Float = 0.0
        var sum: Int = 0
        sum = arr.reduce(0, +)
        avg = Float(sum) / Float(arr.count)
        print("Wylosowane liczby", arr)
        print("suma=", sum)
        print("avarage=", avg)        
    }
}

public class zadanie3 {
    public init() {}

    public func zadanie1() -> Void {
        let oneline: String = "To jest łańcuch jednoliniowy."
        let multiline: String = """
        To
         jest łańcuch wieloliniowy.
        """
        print(oneline)
        print(multiline)        
    }

    public func zadanie2() -> Void {
        print("Podaj imię:")
        let name: String = readLine()!
        print("Podaj drugie imię:")
        let secondname: String = readLine()!
        print("Podaj nazwisko:")
        let lastname: String = readLine()!
        print("Podaj rok urodzenia:")
        let year: Int = Int(readLine()!)!
        let seperator = " "
        let result = [name, secondname, lastname, String(year)].joined(separator: seperator)
        print(result)

        var changed = result
        let firstSeperatorIndex = changed.firstIndex(of: " ")!
        let secondnameStartIndex  = changed.index(after: firstSeperatorIndex)
        let range = secondnameStartIndex ..< changed.index(secondnameStartIndex, offsetBy: secondname.count + 1)
        changed.removeSubrange(range)
        print("Ciąg po usunięciu drugiego imienia: ", changed)

        let yearStartIndex = changed.index(after: changed.lastIndex(of: " ")!)
        let yearRange = yearStartIndex ..< changed.endIndex
        changed.removeSubrange(yearRange)
        changed.append(String(2023 - year))
        print("Ciąg po usunięciu roku i dodaniu wieku: ", changed)
    }

    public func zadanie3() {
        print("Podaj dowolny ciąg znaków")
        let input :String = readLine()!
        print("Podaj dowolny znak, który chcesz odnaleźć w ciągu:")
        let char: Character = Character(readLine()!)
        print("Podaj numer indexu, na który chcesz sprawdzić znak w ciągu:")
        let index : Int = Int(readLine()!)!

        if(input.first == char) {
            print("Znak znajduje się na początku ciągu.")
        }
        if(input.last == char) {
            print("Znak znajduje się na końcu ciągu.")
        }
        if(input[input.index(input.startIndex, offsetBy: index)] == char) {
            print("Znak znajduje się na indeksie oddalonym o \(index) od początku ciągu.")
        }
        if(input[input.index(input.endIndex, offsetBy: -index)] == char) {
            print("Znak znajduje się na indeksie oddalonym o \(index) od końca ciągu.")
        }
    }

    public func zadanie4() -> Void {
        print("Podaj pierwszy ciag znaków:")
        let input1 = readLine()!
        print("Podaj drugi ciag znaków:")
        let input2 = readLine()!
        input1 == input2 ? print("Ciągi są identyczne.") : print("Ciągi są różne")

        print("Podaj prekis do sprawdzenia w podanych ciągach")
        let prefix = readLine()!
        input1.hasPrefix(prefix) ? print("Prefix jest ciągu 1.") : print("Prefix'u nie ma w ciągu 1.")
        input2.hasPrefix(prefix) ? print("Prefix jest ciągu 2.") : print("Prefix'u nie ma w ciągu 2.")

        print("Podaj suffix do sprawdzenia w podanych ciągach")
        let sufix = readLine()!
        input1.hasSuffix(sufix) ? print("Sufix jest ciągu 1.") : print("Sufix'u nie ma w ciągu 1.")
        input2.hasSuffix(sufix) ? print("Sufix jest ciągu 2.") : print("Sufix'u nie ma w ciągu 2.")

    }

    public func zadanie5() -> Void {
        print("Not implemented!")
    }

    public func zadanie6() -> Void {
        print("Not implemented!")
    }

    public func zadanie7() -> Void {
        print("Not implemented!")
    }
}