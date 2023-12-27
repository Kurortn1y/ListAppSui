//
//  FullListView.swift
//  ListAppSui
//
//  Created by Roman on 27.12.23.
//

import SwiftUI

struct FullListView: View {
    
    @Binding var contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: ContactRowView(contact: contact)) {
                    Text("\(contact.fullName)")
                }
                .navigationTitle("Contact List")
            }
        }
        .listStyle(.plain)
    }
}

