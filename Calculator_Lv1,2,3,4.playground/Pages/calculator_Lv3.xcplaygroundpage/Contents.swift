import Foundation


class AddOperation {
    func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}
class SubtractOperation {
    func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}
class MultiplyOperation {
    func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
}
class DivideOperation {
    func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        guard secondNumber != 0 else {
                    print("ERROR! SECONDNUMBER IS ZERO")
                    return 0
                }; return firstNumber / secondNumber
    }
}

class Calculator {
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    

    func calculate(_ operation: String, _ firstNumber: Double, _ secondNumber: Double) -> Double {
        switch operation {
        case "+" :
            return addOperation.operate(firstNumber, secondNumber)
        case "-" :
            return subtractOperation.operate(firstNumber, secondNumber)
        case "*" :
            return multiplyOperation.operate(firstNumber, secondNumber)
        case "/" : guard secondNumber != 0 else {
            print("ERROR! SECONDNUMBER IS ZERO")
            return 0
        }; return divideOperation.operate(firstNumber, secondNumber)
        default:
            print("다시 입력해주세요!")
        }
        return 0
    }
}


var calculator = Calculator()


let addResult = calculator.calculate("+", 10, 10) // 덧셈 연산
let subtractResult = calculator.calculate("-", 10, 10)// 뺄셈 연산
let multiplyResult = calculator.calculate("*", 10, 10)// 곱셈 연산
let divideResult = calculator.calculate("/", 10, 10)// 나눗셈 연산


print("addResult : \(addResult)") //addResult : 20.0
print("subtractResult : \(subtractResult)") //subtractResult : 0.0
print("multiplyResult : \(multiplyResult)") //multiplyResult : 100.0
print("divideResult : \(divideResult)") //divideResult : 1.0
