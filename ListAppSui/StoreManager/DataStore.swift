//
//  DataStore.swift
//  ListAppSui
//
//  Created by Roman on 27.12.23.
//

import Foundation

final class DataStore {
    
   static let shared = DataStore()
    
    
        let names = ["Егор", "Андрей", "Сергей", "Илья", "Квинси", "Денис", "Игорь", "Василий"]
        
        let surnames = ["Титов", "Тихонов", "Игнашевич", "Цимбаларь", "Промес", "Колодин", "Березуцкий", "Акинфеев"]
        
        let telephoneNumbers = ["+79883335544","+789833311122","+783899022321","+788899977655","+73831115533","+79893337755","+791863622255","+79090005511"]
        
        let mails = ["Titov@mail.ru","Tichonov@mail.ru","Ignash@mail.ru","Cimbalar@mail.ru","Promes@mail.ru","Kolodin@mail.ru","Bereza@mail.ru","Akinfeev@mail.ru"]
    
    
    lazy var randomNames: [String] = {
        names.shuffled()
    }()
    
    lazy var randomSurnames: [String] = {
        surnames.shuffled()
    }()
    
    lazy var randomNumbers: [String] = {
        telephoneNumbers.shuffled()
    }()
    
    lazy var randomMails: [String] = {
        mails.shuffled()
    }()
    
    
    private init() {}
    
}
