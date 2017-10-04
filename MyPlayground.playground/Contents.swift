////: Playground - noun: a place where people can play
//
//import UIKit
//
//var str = "Hello, playground"
//
//print(str)
//func getNames()->(String){
//    return ("yatheesh"+"Ysh")
//}
//
//getNames()
//
//var myString = "Hello, World!"
//print(myString)
//
//typealias Feet = Int
//var distance:Feet = 100
//print(distance)
//var varA = "This is hello"
//print(varA)
//
//var varA1 = 42
//print(varA1)
//
//// varB is inferred to be of type Double
//var varB = 3.14159
//print(varB)
//
//// varC is also inferred to be of type Double
//var varC = 3 + 0.14159
//print(varC)
//
//var lngth = 4.2
//print(lngth)
//
//var width:Float
//width = 3.14
//print(width)
//
//print("length is \(lngth) and width is \(width)")
//
//var area:Float?
//print(area)
//
//var myStr:String!
//myStr = "Hello Swift"
//print(myStr)
//
//if let urStr = myStr{
//    print("my Str is \(myStr)")
//}else{
//    print("Optional value is nil")
//}
//
//let constA = "hero"
//print(constA)
//
//let constB:Float
//constB = 4.9
//print(constB)
//print("constA is \(constA) and constB is \(constB)")
//
//let cons1 = 20
//var cons2 = 30
//print("addition is:\(cons1+cons2)")
//print("diff is \(cons2-cons1)")
//print("multiply is \(cons1*cons2)")
//print("div is \(cons2/cons1)")
//print("% is \(cons2%cons1)")
//cons2 = ++cons2
//print("++ is \(++cons2)")
//
//var intArr:[Int] = [20,10,15,30,40]
//
//for value in intArr{
//    print("value is \(value)")
//}
//for var  i = 0; i < intArr.count; ++i {
//    print("value is \(intArr[i])")
//
//}
//
//var i=0
////while i<intArr.count{
////    print("value is \(intArr[i])")
////    i++
////}
//repeat {
//    print("value is \(intArr[i])")
//    i++
//
//}while i<intArr.count
//
//
////var strA : String = "f"
//let strA : String = "gh"
//if strA.isEmpty{
//    print("strA is empty")
//}else{
//    print("strA is not empty")
//}
//
//var strB = "Default string"
//strB += " is Hello Swift!"
//print(strB)
//
//var strC = String("my string")
//strC = strC + " is Hello Swift!"
////print("count is \(count(strB))")
//
//var comp1 = "hello swift"
//var comp2 = "hello swift2"
//if comp1 == comp2{
//    print("matched")
//}else{
//    print("not matched")
//}
//
//var unicodeString   = "Dog‼🐶"
//
//print("UTF-8 Codes: ")
//for code in unicodeString.utf8 {
//    print("\(code) ")
//}
//
//print("\(comp2.isEmpty)")
//print("\(comp2.hasPrefix("hello"))")
//print("\(comp2.hasSuffix("hello"))")
//
//
//var intStr = "30"
//var num = Int(intStr)
//
//

//var intStr:[Character] = ["h","e","l","l","o"]
//for ch in intStr{
//    print(ch)
//}

//var str:String = "welcome"
//var chr: Character = "5"
//str.append(chr);
//print("\(str)")


/* arrays*/
// var arr = [Int]()
//arr.append(10)
//arr.append(20)
//for str in arr{
//    print(str)
//}
//
//print(arr[0])
//print(arr[1])
//
//arr += [30]
//print("3rd element is \(arr[2])")
//
//
//arr[2] = 40
//print("3rd element is \(arr[2])")
//
//var arr2 = [Int](count : 3, repeatedValue : 5)
//
//
//var arr3 = arr + arr2
//print(arr3[1])
//print(arr3[2])
//print(arr3[5])
//if(!arr3.isEmpty){
//    print(arr3.count)
//}
//
//var arr4 = [Int](arrayLiteral: 10,30,40)
//
//print(arr4.count)


/*Dictionaries*/
//var dict:[Int:String] = [1:"one",2:"two",3:"three",4:"four"]
//print(dict[1])
//dict[1] = "ONE"
//print(dict[1]!)
//dict.removeValueForKey(1)
//print(dict[1])
//
//for (key, value) in dict{
//    print("\(key):\(value)")
//}
//
//dict.updateValue("TWO", forKey: 2)
//print(dict[2]!)
//
//dict.isEmpty
//dict.count



/*Functions*/

//func student(name : String) -> String{
//    return name
//}
//print(student("yatheesh"))
//
//
//
//func add(a:Int, b:Int) ->Int{
//    return a+b
//}
//print(add(10, b: 30))
//
//func retNull()->String{
//    return "Null"
//}
//
//retNull()

//func sl(arr: [Int])->(large:Int, small:Int){
//    var lar = arr[0]
//    var sml = arr[0]
//    for value in arr{
//        if(lar < value){
//            lar = value
//        }
//        if(sml > value){
//            sml = value
//        }
//    }
//    return (lar, sml)
//}
//
//let num = sl([10,30,15,5,17,45])
//print(num.large)
//print(num.small)
//
//func vari<N>(members: N...) {
//    for i in members {
//        print(i)
//    }
//}
//vari(4,3,5,6)
//vari(4.5, 3.1, 5.6)
//vari("Swift", "Enumerations", "Closures")
//


//let divide = {(a:Int, b:Int) -> Int in
//    return a/b
//}
//
//print(divide(200,10))
//
//let prnt = {print("Hello Closure")}
//print(prnt())

//func ascend(s1:String, s2:String) -> Bool{
//    return s1>s2
//}
//let res = ascend("hggj", s2: "gfhgh")
////ascend("Swift", "Hello")
//print(res)

//
//var shorthand: (String, String, String) -> String
//shorthand = {$2}
//print(shorthand("100", "200", "300"))
//
//enum Climate {
//    case India
//    case America
//    case Africa
//    case Australia
//}
//
//var season = Climate.India
//switch season {
//case .India:
//    print("Climate is Hot")
//case .America:
//    print("Climate is Cold")
//case .Africa:
//    print("Climate is Moderate")
//case .Australia:
//    print("Climate is Rainy")
//}
//

//enum Student {
//    case Name(String)
//    case Mark(Int,Int,Int)
//}
//var studDetails = Student.Name("Swift")
//var studMarks = Student.Mark(98,97,95)
//switch studMarks {
//case .Name(let studName):
//    print("Student name is: \(studName).")
//case .Mark(let Mark1, let Mark2, let Mark3):
//    print("Student Marks are: \(Mark1),\(Mark2),\(Mark3).")
//}
//
//

//struct markStruct {
//    var mark1: Int
//    var mark2: Int
//    var mark3: Int
//}
//
//var marks = markStruct(mark1: 98, mark2: 96, mark3:100)
//print(marks.mark1)
//print(marks.mark2)
//print(marks.mark3)

//
//class SampleClass: Equatable {
//    let myProperty: String
//    init(s: String) {
//        myProperty = s
//    }
//}
//func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {
//    return lhs.myProperty == rhs.myProperty
//}
//
//let spClass1 = SampleClass(s: "Hello")
//let spClass2 = SampleClass(s: "Hello")
//
//spClass1 === spClass2 // false
//print("\(spClass1)")
//
//spClass1 !== spClass2 // true
//print("\(spClass2)")
//

//struct Number {
//    var digits: Int = 3
//    var numbers = 3.1415
//}
//
//var n = Number()
//n.digits = 67
//
//print("\(n.digits)")
//print("\(n.numbers)")
//n.numbers = 8.7
//print("\(n.numbers)")


