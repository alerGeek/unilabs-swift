import Foundation

public class zadanie6 {
    public init() {}

    public func zadanie1() -> Void {
        var arr = Array(repeating: 0, count: 10)
        print("Podaj wartość (liczbę całkowitą) zerowego elementu:")
        let input1: Int = Int(readLine()!)!
        arr[0] = input1

        print("Podaj wartość (liczbę całkowitą) kolejnego elementu:")
        let input2: Int = Int(readLine()!)!
        print("Podaj number indeksu, na który chcesz wstawić kolejną wartość:")
        let index: Int = Int(readLine()!)!
    
        if (index > arr.count) {
            arr.append(input2)
        } else {
            arr[index] = input2
        }

        print("arr= \(arr)")
    }

    public func zadanie2() -> Void {
        print("Podaj liczbę elementów nowej tablicy:")
        let size = Int(readLine()!)!
        var arr: [Int] = []
        for i in 1 ... size {
            print("Podaj \(i)) element:")
            let input: Int = Int(readLine()!)!
            arr.append(input)
        }
        print("Podaj wartość do sprawedzenia w tablicy na pierwszym i ostatnim miejscu")
        let input: Int = Int(readLine()!)!
        arr.first == input ? print("Wartość \(input) jest na pierwszym elemencie tablicy") : print("Wartość \(input) nie jest na pierwszym elemencie tablicy")
        arr.last == input ? print("Wartość \(input) jest na ostatnim elemencie tablicy") : print("Wartość \(input) nie jest na ostatnim elemencie tablicy")
        print("Posortowana tablica:", arr.sorted())
        print("Wartość max:", arr.min()!)
        print("Wartość min:", arr.max()!)
        
    }

    public func zadanie3() -> Void {
        
    }

    public func zadanie4() -> Void {
        
    }

    public func zadanie5() -> Void {
        
    }
}

public class zadanie7 {
    public init() {}

    public func zadanie1() -> Void {
        func hasDecimeter(number: Int, searched: Character) -> Bool {
            return Array(String(number)).contains(searched)
        }
        print("Powinna zawierać:", hasDecimeter(number: 123456, searched: "4"))
        print("Nie powinna zawierać:", hasDecimeter(number: 123456, searched: "8"))
    }
    
    public func zadanie2() -> Void {
        func unique(_ a1: [Int], _ a2:[Int]) -> [Int] {
            let set1: Set<Int> = Set(a1)
            let set2: Set<Int> = Set(a2)
            let diff1 = set1.symmetricDifference(set2)
            let result = diff1.compactMap{Int($0)}
            return result
        }
 
        func create() -> [Int] {
            print("Podaj rozmiar tablicy:")
            let size : Int = Int(readLine()!)!
            var arr = Array(repeating: 0, count: size)
            for i in 0 ..< size {
                print("Podaj kolejny element:", i)
                arr[i] = Int(readLine()!)!
            }
            return arr
        }

        func createStr(_ i1: String, _ i2:String) -> [Int] {
            let arr1 : [Int] = Array(i1.split(separator: " ").map {Int($0)!})
            let arr2 : [Int] = Array(i2.split(separator: " ").map {Int($0)!})
            print("Ciąg pierwszy:", arr1)
            print("Ciąg drugi:", arr2)
            return unique(arr1, arr2)
        }

        print("Podaj pierwszy ciągi liczb naturalnych, oddzielonymi spacjami")
        let input1 = readLine()!
        print("Podaj drugi ciągi liczb naturalnych, oddzielonymi spacjami")
        let input2 = readLine()!
        let result = createStr(input1, input2)
        print(result)
    }
}

public class zadanie8 {
    public init() {}

    public func zadanie1() -> Void {
        let person = (name: "Ania", lastname: "Kowalski", year: 1995)
        print(person)
        print("name: \(person.name), lastname: \(person.lastname), year: \(person.year)")

        print("Powinno zwócić 0", compare(p1: person, p2: (name: "Asia", lastname: "Kowalska", year: 1995)))
        print("Powinno zwócić 1", compare(p1: person, p2: (name: "Asia", lastname: "Kowalska", year: 1999)))
        print("Powinno zwócić 2", compare(p1: person, p2: (name: "Asia", lastname: "Kowalska", year: 1992)))

        print("Powinno wyświetlić Anie i Asia", compare(person1: person, person2: (name: "Asia", lastname: "Kowalska", year: 1995)))
        print("Powinno wyświetlić Asie", compare(person1: person, person2: (name: "Asia", lastname: "Kowalska", year: 1999)))
        print("Powinno wyświetlić Anie", compare(person1: person, person2: (name: "Asia", lastname: "Kowalska", year: 1992)))


        func compare(p1: (name: String, lastname: String, year: Int), p2: (name: String, lastname: String, year: Int)) -> Int {
            if (p1.year == p2.year) {
                return 0
            } else if (p1.year > p2.year) {
                return 1
            } else {
                return 2
            }
        }
        func compare(person1: (name: String, lastname: String, year: Int), person2: (name: String, lastname: String, year: Int)) -> (Int, [(name: String, lastname: String, year: Int)]) {
            if (person1.year == person2.year) {
                return (0, [person1, person2])
            } else if (person1.year > person2.year) {
                return (1, [person1])
            } else {
                return (2, [person2])
            }
        }
    }

    public func zadanie2() -> Void {
        var student1 = (lastname: "Kowalski", grade1: 5.0, grade2: 3.0, grade3: 4.0, avg: 0.0)
        var student2 = (lastname: "Nowak", grade1: 3.0, grade2: 3.0, grade3: 3.0, avg: 0.0)
        var student3 = (lastname: "Kowalski", grade1: 5.0, grade2: 4.0, grade3: 5.0, avg: 0.0)
        student1.avg = (student1.grade1 + student1.grade2 + student1.grade3) / 3
        student2.avg = (student2.grade1 + student2.grade2 + student2.grade3) / 3
        student3.avg = (student3.grade1 + student3.grade2 + student3.grade3) / 3

        let arr = [student1, student2, student3]
        print(arr.sorted(by: {$0.avg > $1.avg}).map {($0.lastname, $0.avg) })
    }
    public func zadanie3() -> Void {
        print("Podaj liczbę mieszkań")
        let count: Int = Int(readLine()!)!
        var arr = [(location: "", square:  0.0, prize: 0.0, standart: Standart.low)]
        arr.removeFirst()       //hack to have definition of array of tuples
        for _ in 1 ... count {
            print("Podaj dane miszkania do dodania w formacie:")
            print("'lokalizacja' 'powierzchnia' 'cena za metr' 'standart' oddzielone ze spacją:")
            print("Standart moze przyjmowac następumjace wartości: low, medium, high")
            let input = readLine()!
            let flatArr = input.split(separator: " ")
            let standart: Standart = Standart.init(rawValue: String(flatArr[3]))!
            let flat=(location: String(flatArr[0]), square:  Double(flatArr[1])!, prize: Double(flatArr[2])!, standart: standart)
            arr.append(flat)
        }
        arr = arr.sorted(by: {$0.prize * $0.square  > $1.prize * $1.square})
        print("Najdroższe mieszkanie to:", arr.first!)
        print("Najtańsze mieszkanie to:", arr.last!)
    }
    public func zadanie4() -> Void {
        enum Month {
            case styczen
            case luty
            case marzec
            case kwiecien
            case maj
            case czerwiec
            case lipiec
            case sierpien
            case wrzesien
            case pazdziernik
            case listopad
            case grudzien
        }

        let month = Month.styczen
        switch month {
            case .grudzien, .styczen, .luty:            print("zima")
            case .marzec, .kwiecien, .maj:              print("wiosna")
            case .czerwiec, .lipiec, .sierpien:         print("lato")
            case .wrzesien, .pazdziernik, .listopad:    print("jesień")
        }
    }
    public func zadanie5() -> Void {
        //done
    }
}

public enum Standart : String {
    case high = "high"
    case medium = "medium"
    case low = "low"
}

public class zadanie9 {
    public init() {}

    public func zadanie1() {
        struct liczbaZespolona {
            var re: Int 
            var im: Int

            init(re: Int , im: Int) {
                self.re = re
                self.im = im
            }
        }

        func dodawanie(l1: liczbaZespolona, l2: liczbaZespolona) -> liczbaZespolona {
            return liczbaZespolona(re: l1.re + l2.re, im: l1.im + l2.im)
        }

        func odejmowanie(l1: liczbaZespolona, l2: liczbaZespolona) -> liczbaZespolona {
            return liczbaZespolona(re: l1.re - l2.re, im: l1.im - l2.im)
        }

        func mnozenie(l1: liczbaZespolona, l2: liczbaZespolona) -> liczbaZespolona {
            return liczbaZespolona(re: l1.re * l2.re - l1.im * l2.im, im: l1.re * l2.im + l1.im * l2.re);
        }

        func validateInput(_ input: [String.SubSequence]) -> Bool {
            if (input.count != 2) {
                print("Nieprawidłowe wartości wejściowe.")
                return false
            } 
            return true
        }

        var exit = false
        repeat {
            print("Podaj pierwszą liczbe zespolona w formie 're im', gdzie re - część rzeczywista, im - część urojona. Części oddzielone są spacją.")
            let liczba1 = String(readLine()!)
            let liczbaArr1 = liczba1.split(separator: " ")
            if (!validateInput(liczbaArr1)){
                continue
            } 

            print("Podaj drugą liczbe zespolona w formie 're im', gdzie re - część rzeczywista, im - część urojona. Części oddzielone są spacją.")
            let liczba2 = String(readLine()!)
            let liczbaArr2 = liczba2.split(separator: " ")
            if (!validateInput(liczbaArr2)){
                continue
            } 

            let l1Re: Int = Int(String(liczbaArr1[0]))!
            let l1Im: Int = Int(String(liczbaArr1[1]))!
            let l2Re: Int = Int(String(liczbaArr2[0]))!
            let l2Im: Int = Int(String(liczbaArr2[1]))!

            let liczbaZespolona1 = liczbaZespolona(re: l1Re, im: l1Im)
            let liczbaZespolona2 = liczbaZespolona(re: l2Re, im: l2Im)
            print("""
            Podaj operację do wykonania:
            1 - dodawanie
            2 - odejmowanie
            3 - mnożenie
            0 - wyjście z programu
            """)
            let operation = Int(readLine()!)
            switch operation {
                case 0: print("Wyjście z programu."); exit = true
                case 1: print(dodawanie(l1: liczbaZespolona1, l2: liczbaZespolona2))
                case 2: print(odejmowanie(l1: liczbaZespolona1, l2: liczbaZespolona2))
                case 3: print(mnozenie(l1: liczbaZespolona1, l2: liczbaZespolona2))
                default: print("Nieznana operacja")
            }
        } while (!exit)
    }

    public func zadanie2() {
        struct flight {
            var departureLocation: [Int: String]
            var arrivalLocation: [Int: String]
            var duration: Int            

            init(departureLocation:[Int: String], arrivalLocation: [Int: String], duration :Int) {
                self.departureLocation = departureLocation
                self.arrivalLocation = arrivalLocation
                self.duration = duration
            }
        }
        let locations: [Int: String] = [1: "WAW", 2: "LU", 3: "GD", 4: "KR"]
        var flights: [flight] = []

        print("Podaj ilość lotów, które chcesz utworzyć:")
        let count = Int(readLine()!)!
        for i in 1 ... count {
            print("Podaj dane \(i) lotu w formie: miejsce odlotu, miejsce przylotu, czas trwania")            
            let input = readLine()!
            let data = input.split(separator: " ")

            let departureLocationStr: String = String(data[0])
            let arrivalLocationStr: String = String(data[1])
            let duration = Int(String(data[2]))!    
            var departureLocation: [Int: String] = [:]
            var arrivalLocation: [Int: String] = [:]
            for (key, value) in locations {
                if (departureLocationStr == value) {
                    departureLocation = [key: value] 
                }
            for (key, value) in locations {
                if (arrivalLocationStr == value) {
                    arrivalLocation = [key: value] 
                }
            }
        }
        let flight = flight(departureLocation: departureLocation, arrivalLocation: arrivalLocation, duration: duration)
        flights.append(flight)
        }
        let sum = flights.map {$0.duration}.reduce(0, +)
        let avg = Double(sum) / Double(flights.count)
        print("Srednia dlugosci lotów", avg)
        flights.removeAll(where: {Double($0.duration) < avg})
        flights.forEach {
            print("Odlot: \($0.departureLocation), przylot: \($0.arrivalLocation), czas: \($0.duration)")
        }
    }

    public func zadanie3() {
        var cars : Set<String> = Set(arrayLiteral: "opel", "renault", "tesla", "volvo", "toyota", "kia", "mazda")
        print(cars.joined(separator: ", "))
        cars.forEach {
            print($0)
        }
        print("Podaj markę, którą chcesz usunąć:")
        let input = readLine()!
        if (cars.contains(input)) {
            print("Usuwam element:", input)
            cars.remove(input)
        } else {
            print("Nie ma w kolekcji:", input)
        }
    }

    public func zadanie4() {
        struct rzutOszczepem {
            var id : String
            var try1: Double
            var try2: Double
            var try3: Double

            init(id: String, try1: Double, try2: Double, try3: Double) {
                self.id = id
                self.try1 = try1
                self.try2 = try2
                self.try3 = try3
            }
        }

        let osoba1 = rzutOszczepem(id: "1", try1: 100.0, try2: 200.0, try3: 100.0)
        let osoba2 = rzutOszczepem(id: "2", try1: 150.0, try2: 100.0, try3: 150.0)
        let osoba3 = rzutOszczepem(id: "3", try1: 100.0, try2: 100.0, try3: 100.0)
        let osoba4 = rzutOszczepem(id: "4", try1: 200.0, try2: 250.0, try3: 100.0)

        let arr = [osoba1, osoba2, osoba3, osoba4]
        // ($0.try1 + $0.try2 + $0.try3) / Double(3)
        var arrSorted = arr.sorted {
            let sum1 = ($0.try1 + $0.try2 + $0.try3) / Double(3)
            let sum2 = ($1.try1 + $1.try2 + $1.try3) / Double(3)
            let avg1 = sum1 / 3.0
            let avg2 = sum2 / 3.0
            return avg1 >= avg2
        }
        print("Osoba z największą średnią:", arrSorted.first!)
        print("Osoba z najmniejszą średnią:", arrSorted.last!)
        arrSorted = arrSorted.dropLast()
        print("Lista zawodników po usunięciu najsłabsazego:")
        arrSorted.forEach {
            print($0)
        }
    }

    public func zadanie5() {
        var students: [String: String] = [:]
        var i = 1
        while i <= 5 {
            print("\(i). Podaj dane studentas w formie: 'imie' 'id' (np. jan 123)")
            let input: String = readLine()!
            let data = input.split(separator: " ")
            if (data.count != 2) {
                print("Nieprawidłowy format, sprawdź dane i wprowadź ponownie!")
                continue
            }
            let name = String(data[0])
            let id = String(data[1])
            if (students.keys.contains(id)) {
                print("Student o podanych id już istnieje w bazie, sprawdź dane i wprowadź ponownie!")
                continue            
            }
            students.updateValue(name, forKey: id)
            i+=1
        }
        
        print("Dodani studenci:")
        for (key, value) in students {
            print("id=\(key), imię=\(value)")
        }

        print("Podaj dane studenta, którego chcesz wyszukać. Forma: 'imie' 'id' (np. jan 123)")
        let input: String = readLine()!
        let data = input.split(separator: " ")
        let name = String(data[0])
        let id = String(data[1])
        if (data.count != 2) {
            print("Nieprawidłowy format, sprawdź dane i wprowadź ponownie!")
            return
        }
        for (key, value) in students {
            if (key == id && value == name) {
                students.removeValue(forKey: id)
                print("Wyszukiwany student został usunięty")
                break
            } else {
            }
            print("Podany student nie istnieje")
        }
    }
}