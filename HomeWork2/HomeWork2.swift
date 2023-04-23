//
//  Exercise1.swift
//  LearnSwift
//
//  Created by Nguyen Trung on 4/20/23.
//

import Foundation

class HomeWork2 {
    /**
     Cho một mảng số nguyên. Kiểm tra nếu trong mảng có phần tử âm thì thay thế nó bằng 0.
     */
    func exercise1() {
        var intArray = [1, -1, -2, 2, 3, -3, 4, 5, 6, -6, -5, -4]
        for i in 0 ..< intArray.count {
            if intArray[i] < 0 {
                intArray[i] = 0
            }
        }
        print("Int array converted: \(intArray)")
    }
    
    /**
     Trả về Vị trí đầu tiên của số lẻ, vị trí cuối cùng của số chẵn trong mảng bất kì.
     */
    func exercise2() {
        let numberArray = [1, -1, -2, 2, 3, -3, 4, 5, 6, -6, -5, -7]
        var firstIndex: Int?
        var lastIndex: Int?
        
        let checking = 1.2
        if checking.truncatingRemainder(dividingBy: 0.2) == 0 {
            print("Even number")
        } else {
            print("Odd number")
        }
        
        for i in 0 ..< numberArray.count {
            if firstIndex == nil && numberArray[i] % 2 != 0 {
                firstIndex = i
            }
            
            if numberArray[i] % 2 == 0 {
                lastIndex = i
            }
        }
        
        if firstIndex == nil {
            print("Không tồn tại số lẻ trong mảng")
        } else {
            print("Vị trí đầu tiên của số lẻ: \(firstIndex!)")
        }
        
        if lastIndex == nil {
            print("Không tồn tại số chẵn trong mảng")
        } else {
            print("Vị trí cuối cùng của số chẵn: \(lastIndex!)")
        }
    }
    
    
    /**
     In một chuỗi cho trước theo thứ tự ngược lại (Ví dụ: Hello in thành olleH)
     */
    func exercise3() {
        let str = "Hello world!"
        print(String(str.reversed()))
    }
    
    /**
     Tính trung bình cộng của một dãy số cho trước
     */
    func exercise4() {
        let numberArray = [10, 100.23, 324.9, 7.1, 96, 645, -90.2, -80, 20]
        var total = 0.0
        
        numberArray.forEach { number in
            total += number
        }
        print("Sum number of array = \(total)")
    }
    
    /**
     Tìm số nhỏ nhất và lớn nhất trong mảng số nguyên
     */
    func exercise5() {
        let intArray = [1, -1, -2, 2, 3, -3, 4, 5, 6, -6, -5, -4]
        var min = 0
        var max = 0
        
        for (index, number) in intArray.enumerated() {
            if index == 0 {
                min = number
                max = number
            } else {
                if number < min {
                    min = number
                }
                
                if number > max {
                    max = number
                }
            }
        }
        
        print("Số nhỏ nhất trong mảng là: \(min)")
        print("Số lớn nhất trong mảng là: \(max)")
    }
    
    /**
     Tìm số lớn thứ 2 trong mảng số nguyên
     */
    func exercise6() {
        let intArray = [1, -1, -2, 2, 3, -3, 4, 8, 7, -6, -5, -4]
        var max1 = 0
        var max2 = 0
        
        for (index, number) in intArray.enumerated() {
            if index == 0 {
                max1 = number
                max2 = number
            } else if max1 == max2 {
                if number > max1 {
                    max1 = number
                }
            } else {
                if number > max1 {
                    max2 = max1
                    max1 = number
                } else if number > max2 {
                    max2 = number
                }
            }
        }
        print("Số lớn thứ 2 trong mảng: \(max2)")
    }
    
    /**
     In ra họ và tên của một họ tên cho trước. (Ví dụ Phan Thanh Hoa -> In ra: Phan Hoa)
     */
    func exercise7() {
        print("Enter full name:")
        let fullName = readLine()
        if let fullName = fullName {
            let nameArray = fullName.split(separator: " ")
            
            if nameArray.count >= 2 {
                print("\(nameArray[0]) \(nameArray[nameArray.count - 1])")
            } else if (nameArray.count == 1){
                print("\(nameArray[0])")
            } else {
                print("Name format error")
            }
        } else {
            print("Name format error")
        }
    }
    
    /**
     Viết hàm cho phép người dùng chọn đáp án
     Question: Đâu không phải là một ngôn ngữ lập trình?
     a - Golang
     b - Swift
     c - Ruby
     d - Daily

     Cho người dùng chọn a, b, c, d để trả lời! Yêu cầu người dùng chọn lại đáp án nếu input không đúng, (không đúng nếu input khác a, b, c, d)
     In ra trả lời sai nếu đáp án không đúng
     In ra trả lời đúng nếu đáp án đúng
     */
    func exercise8() {
        let question = "Đâu không phải là một ngôn ngữ lập trình?\na - Golang\nb - Swift\nc - Ruby\nd - Daily"
        print(question)
        
        handleInputAnswer()
    }
    
    private func handleInputAnswer() {
        let answer = readLine() ?? ""
        
        switch answer.lowercased() {
        case "d":
            print("Trả lời đúng!")
            break
        default:
            print("Trả lời sai, vui lòng chọn lại đáp án")
            handleInputAnswer()
            break
        }
    }
    
    /**
     Hai anh em nhà cừu không có gì chơi, thằng anh mới đố thằng em: “Tao cho mày 1 số, nếu nó chẵn thì chia đôi, nó lẻ thì nhân 3 cộng 1. Đố mày biết sau bao nhiêu phép tính thì nó ra 1 ???”.
     Ông em ngẩn tò te không biết trả lời như nào. Bạn hãy giúp chú bé 1 tay với. In ra đáp án hoặc “-1” nếu ko có số nào hợp lệ.
     */
    func exercise9() {
        print("Nhập 1 số: ", terminator: "")
        let number = Int(readLine() ?? "0") ?? 0
        
        if number == 0 || number == 1 {
            print("-1")
        } else {
            var x = number
            var count = 0
            
            while(x != 1) {
                if x % 2 == 0 {
                    x /= 2
                } else {
                    x = 3 * x + 1
                }
                count += 1
            }
            print("Sau \(count) phép tính thì số đã cho: \(number) bằng 1")
        }
    }
    
    /**
     Viết một minigame random các số từ 1 đến 100, cho người dùng đoán số nhập dữ liệu từ bàn phím.

     Nếu số nhập vào đúng với số được random thì in ra message chúc mừng
     Nếu số nhập vào bé hơn số được random thì in ra message là bé quá
     Nếu số nhập vào lớn hơn số được random thì in ra message là lớn quá
     */
    func exercise10() {
        let randomNumber = Int.random(in: 1 ... 100)
        print("Máy tính đã lấy ngẫu nhiên 1 số nguyên trong khoảng từ 1 đến 100, hãy đoán thử vận may bằng cách nhập 1 số và ấn enter")
        handleInputAnserNumber(randomNumber)
    }
    
    private func handleInputAnserNumber(_ randomNumber: Int) {
        let answerNumber = Int(readLine() ?? "") ?? 0
        
        if answerNumber < 1 && answerNumber > 100 {
            print("Số bạn nhập không hợp lệ")
        } else {
            if answerNumber == randomNumber {
                print("Chúc mừng bạn đã đoán đúng")
            } else if answerNumber < randomNumber {
                print("Số bạn nhập bé hơn số ngẫu nhiên")
                handleInputAnserNumber(randomNumber)
            } else {
                print("Số bạn nhập lớn hơn số ngẫu nhiên")
                handleInputAnserNumber(randomNumber)
            }
        }
    }
}
