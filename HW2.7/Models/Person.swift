//
//  Persons.swift
//  HW2.7
//
//  Created by Admin on 20.02.2020.
//  Copyright © 2020 UshakovAndrey. All rights reserved.
//

import Foundation

public struct Person {
    var name: String
    var lastName: String
    var email: String
    var phoneNumber: String
    
    static func newPerson() -> [Person] {
        
        var persons: [Person] = []
        
        
        for index in 0..<PersonsData.personInfo.names.count{
            let person = Person(name: PersonsData.personInfo.names[index],
                                lastName: PersonsData.personInfo.lastNames[index],
                                email: PersonsData.personInfo.emails[index],
                                phoneNumber: PersonsData.personInfo.phoneNumbers[index])
            
            persons.append(person)
        }
        return persons
    }
    
}
