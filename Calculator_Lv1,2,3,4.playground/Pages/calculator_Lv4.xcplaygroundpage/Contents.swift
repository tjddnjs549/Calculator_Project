import Foundation

class Calculator {
    var operation: String
    
    init(operation: String) {
        self.operation = operation
    }
    
    func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        switch self.operation {
        case "+" :
            return AddOperation().operation(firstNumber, secondNumber)
        case "-" :
            return SubtractOperation().operation(firstNumber, secondNumber)
        case "*" :
            return MultiplyOperation().operation(firstNumber, secondNumber)
        case "/" : guard secondNumber != 0 else {
            print("ERROR! SECONDNUMBER IS ZERO")
            break
        }; return DivideOperation().operation(firstNumber, secondNumber)
        default : print("다시 입력해주세요") 
        }
        return 0
    }
}

class AbstractOperation {
    func operation(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return 0
    }
}
class AddOperation: AbstractOperation {
    override func operation(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}
class SubtractOperation: AbstractOperation {
    override func operation(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}
class MultiplyOperation: AbstractOperation {
    override func operation(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
}
class DivideOperation: AbstractOperation {
    override func operation(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
}
let addResult = Calculator(operation: "+").calculate(10, 10)
let subtractResult = Calculator(operation: "-").calculate(10, 10)
let multiplyResult = Calculator(operation: "*").calculate(10, 10)
let divideResult = Calculator(operation: "/").calculate(10, 10)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")

/*
 의존성 역전 원칙(DIP)
 개념 : 핵심 부분을 담당하는 모듈의 제어흐름과 다른 모듈들의 의존 방향이 반대
 
 방법: 변동성이 큰 구현체에 의존하지 않고 추상 클래스에만 의존해야 한다는 정의
 */
