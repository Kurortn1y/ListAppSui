//
//  Person.swift
//  ListAppSui
//
//  Created by Roman on 27.12.23.
//

import Foundation


struct Person: Identifiable {
    

    let name: String
    let surname: String
    let number: String
    let mail: String
    let id: Int
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        
        var personsList: [Person] = []
        
        for index in 0..<DataStore.shared.names.count {
            let person = Person(
                name: DataStore.shared.randomNames[index],
                surname: DataStore.shared.randomSurnames[index],
                number: DataStore.shared.randomNumbers[index],
                mail: DataStore.shared.randomMails[index],
                id: index
            )
            personsList.append(person)
        }
        
        return personsList
    }
}
