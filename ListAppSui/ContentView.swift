//
//  ContentView.swift
//  ListAppSui
//
//  Created by Roman on 27.12.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var contacts = Person.getPersons()
    
    var body: some View {
        NavigationView {
            TabView {
                    FullListView(contacts: $contacts)
                        .tabItem { Label("Contacts", systemImage: "person.2.fill") }
                    NumbersView(contacts: $contacts)
                        .tabItem { Label("Numbers", systemImage: "phone") }
            }
        }
    }
}

#Preview {
    ContentView()
}
