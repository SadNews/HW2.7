//
//  PersonsInfo.swift
//  HW2.7
//
//  Created by Admin on 20.02.2020.
//  Copyright © 2020 UshakovAndrey. All rights reserved.
//

import Foundation

class PersonsData {
    
    static var personInfo = PersonsData()
    
    let names = ["Alex", "John", "Jane", "Ivan",
                 "Neivan", "Andrey", "Alexey"].shuffled()
    let lastNames = ["Petrov", "Smith", "Cooper", "Booper",
                     "Sidorov", "Ivanov", "Bond"].shuffled()
    let emails = ["11111@ya.ru", "2222@ya.ru", "33333@ya.ru", "4444@ya.ru",
                  "5555@ya.ru", "66666@ya.ru", "77777@ya.ru"].shuffled()
    let phoneNumbers = ["811111111", "82222222", "833333333", "8444444444",
                        "855555555", "86666666", "88005553535"].shuffled()
    
}
