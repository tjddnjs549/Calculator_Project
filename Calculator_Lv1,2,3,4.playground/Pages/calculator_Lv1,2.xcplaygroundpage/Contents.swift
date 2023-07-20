import Foundation

class Calculator {

    func calculate(_ operation: String, _ firstNumber: Double, _ secondNumber: Double) -> Double {

        switch operation {
        case "+" : return firstNumber + secondNumber
        case "-" : return firstNumber - secondNumber
        case "*" : return firstNumber * secondNumber
        case "/" : guard secondNumber != 0 else {
            print("ERROR! SECONDNUMBER IS ZERO")
            return 0
        }; return firstNumber / secondNumber
        case "%" : return firstNumber.truncatingRemainder(dividingBy: secondNumber)
        default:
            print("다시 입력해주세요!")
        }
        return 0
    }
}

let a: Double = 16
let b: Double = 8
let calculator = Calculator()
let addResult: Double = calculator.calculate("+", a, b)
let subtractResult: Double = calculator.calculate("-", a, b)
let multiplyResult: Double = calculator.calculate("*", a, b)
let divideResult: Double = calculator.calculate("/", a, b)
let remainderResult = calculator.calculate("%", a, b)

print(addResult) //24
print(subtractResult) //8
print(multiplyResult) //128
print(divideResult) //2
print(remainderResult) //0
