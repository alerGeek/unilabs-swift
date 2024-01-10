import Foundation

public class zadanie10 {
  public init() {}

  public func zadanie1() {
    let person1: Osoba = Osoba(name: "Adam", lastname: "Nowak", birthYear: 1995)
    let person2: Osoba = Osoba(name: "Anka", lastname: "Kowalska", birthYear: 2000)

    let older: Osoba = person1.getAge().distance(to: person2.getAge()) >= 0 ? person2 : person1
    person1.printos()
    person2.printos()
    print("Starsza jest", older.name, "o", person1.getAge().distance(to: person2.getAge()))
  }

  public func zadanie2() {
    let person1: Pracownik = Pracownik(
      name: "Adam", lastname: "Kowalska", birthYear: 1995,
      company: "Politechnika Lubelska", position: Position.student,
      employedSince: 2023, hourlyRate: 1.0, hours: 40)
    let person2: Pracownik = Pracownik(
      name: "Anka", lastname: "Nowak", birthYear: 1980,
      company: "Netcompany", position: Position.senior,
      employedSince: 2023, hourlyRate: 105.50, hours: 40)

    person1.printos()
    person2.printos()
  }

  public func zadanie3() {
    let student1: Student = Student(
      name: "Adam", lastname: "Kowalska", birthYear: 1995,
      index: "80682", specialization: Specialization.IT, studyYear: 3,
      grades: [4.0, 5.0, 3.5, 4.0, 4.0])
    let student2: Student = Student(
      name: "Anka", lastname: "Nowak", birthYear: 2000,
      index: "8068215", specialization: Specialization.IT, studyYear: 3,
      grades: [3.0, 3.0, 3.0, 3.0, 3.0])

    student1.printos()
    student2.printos()
  }

  public func zadanie4() {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let student = StudentNaErasmusie(
      name: "Adam", lastname: "Kowalska", birthYear: 1995,
      index: "80682", specialization: Specialization.IT, studyYear: 3,
      grades: [4.0, 5.0, 3.0, 4.0, 4.0],
      erasmusUniversity: "Politechnika Lubelska", since: dateFormatter.date(from: "2020-10-01")!,
      to: dateFormatter.date(from: "2021-09-30")!,
      courses: [
        "Matematyka": 4.0,
        "Programowanie w jezyku Swift": 5.0,
        "Jezyk Angielski": 5.0,
      ])
    student.printos()
  }
}

private class Osoba {
  var name: String = ""
  var lastname: String = ""
  var birthYear: Int = 0
  init(name: String, lastname: String, birthYear: Int) {
    self.name = name
    self.lastname = lastname
    self.birthYear = birthYear
  }

  func getAge() -> Int {
    let currentYear: Int = Calendar.current.component(.year, from: Date())
    return currentYear - self.birthYear
  }

  func printos() {
    print(
      """
      Imie: \(self.name)
      Nazwisko: \(self.lastname)
      Wiek: \(self.getAge())
      """)
  }
}

private class Pracownik: Osoba {
  var company: String
  var position: Position
  var employedSince: Int
  var hourlyRate: Double
  var hours: Double

  init(
    name: String, lastname: String, birthYear: Int,
    company: String, position: Position,
    employedSince: Int,
    hourlyRate: Double, hours: Double
  ) {
    self.company = company
    self.position = position
    self.employedSince = employedSince
    self.hourlyRate = hourlyRate
    self.hours = hours
    super.init(name: name, lastname: lastname, birthYear: birthYear)
  }

  func getYears() -> Int {
    let currentYear: Int = Calendar.current.component(.year, from: Date())
    return currentYear - self.employedSince
  }

  func getSalary() -> Double {
    return self.hours * self.hourlyRate
  }

  override func printos() {
    super.printos()
    print("Pracodawna: \(self.company)")
    print("Stanowisko: \(self.position)")
    print("Rok zatrudnienia: \(self.employedSince)")
    print("Stawka za godzine: \(self.hourlyRate)")
    print("Ilosc przepracowanych godzin: \(self.hours)")
    print("Ilosc przepracowanych lat: \(self.getYears())")
    print("Obliczona pensja: \(formatDouble(self.getSalary()))")
  }
}

private class Student: Osoba {
  var index: String
  var specialization: Specialization
  var studyYear: Int
  var grades: [Double]

  init(
    name: String, lastname: String, birthYear: Int,
    index: String, specialization: Specialization,
    studyYear: Int,
    grades: [Double]
  ) {
    self.index = index
    self.specialization = specialization
    self.studyYear = studyYear
    self.grades = grades
    guard self.grades.count == 5 else {
      fatalError("Student musi mieć dokładnie 5 ocen!")
    }
    let gradesRange = 2.0...5.0
    guard (self.grades.allSatisfy { gradesRange.contains($0) }) else {
      fatalError("Nieprawidłowe wartości ocen!")
    }
    super.init(name: name, lastname: lastname, birthYear: birthYear)
  }

  func getAvg() -> Double {
    let sum: Double = self.grades.reduce(0, +)
    return sum / Double(self.grades.count)
  }

  override func printos() {
    super.printos()
    print("Specjalizacja: \(self.specialization)")
    print("Rok: \(self.studyYear)")
    print("Oceny: \(self.grades.map{String($0)}.joined(separator:", "))")
    print("Srednia: \(formatDouble(getAvg()))")
  }
}

private class StudentNaErasmusie: Student {
  var erasmusUniversity: String
  var since: Date
  var to: Date
  var courses: [String: Double]

  init(
    name: String, lastname: String, birthYear: Int,
    index: String, specialization: Specialization,
    studyYear: Int, grades: [Double],
    erasmusUniversity: String, since: Date, to: Date, courses: [String: Double]
  ) {
    self.erasmusUniversity = erasmusUniversity
    self.since = since
    self.to = to
    self.courses = courses
    super.init(
      name: name, lastname: lastname, birthYear: birthYear, index: index,
      specialization: specialization, studyYear: studyYear, grades: grades)
  }

  func getErasmusFinalGrade() -> Double {
    let sum = courses.values.reduce(0.0, +)
    return sum / Double(courses.count)
  }

  func getDuration() -> (years: Int, months: Int, days: Int) {
    let calendar = Calendar(identifier: .gregorian)
    let components: DateComponents = calendar.dateComponents(
      [.year, .month, .day], from: self.since, to: self.to)
    return (years: components.year!, months: components.month!, days: components.day!)
  }

  override func printos() {
    super.printos()
    print("Czas studiow w programie Erasmus: \(durationToStr())")
    print("Ocena koncowa na studiach Erasmus: \(formatDouble(getErasmusFinalGrade()))")
  }

  func durationToStr() -> String {
    return
      "lata: \(self.getDuration().years), miesiace: \(self.getDuration().months), dni: \(self.getDuration().days)"
  }
}

func formatDouble(_ double: Double) -> String {
  let formatter = NumberFormatter()
  formatter.numberStyle = .decimal
  formatter.maximumFractionDigits = 2
  return formatter.string(from: double as NSNumber)!
}

private enum Position {
  case junior
  case mid
  case senior
  case student
}

private enum Specialization {
  case IT
  case math
  case HR
}
