//
//  Employee.swift
//  BankManagerConsoleApp
//
//  Created by 고은 on 2021/12/24.
//

import Foundation

class Employee {
    private let speaker = Speaker()
    var customerCount = 0
    
    func work(for customer: Customer) {
            speaker.speakStart(for: customer.waitingNumber, workType: customer.requestedWork)
            
            Thread.sleep(forTimeInterval: customer.requestedWork.requiredTime)
            customerCount += 1
            
            speaker.speakFinish(for: customer.waitingNumber, workType: customer.requestedWork)
        }
}
