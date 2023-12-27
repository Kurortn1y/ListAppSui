//
//  NumbersView.swift
//  ListAppSui
//
//  Created by Roman on 27.12.23.
//

import SwiftUI

struct NumbersView: View {
    
    @Binding var contacts: [Person]
    
    var body: some View {
        List(contacts) { contact in
            Section(header: Text(contact.fullName)) {
                HStack {
                    Image(systemName: "phone.fill")
                    Text("Phone: \(contact.number)")
                }
                HStack {
                    Image(systemName: "envelope.fill")
                    Text("Email: \(contact.mail)")
                }
            }
        }
        .listStyle(.plain)
    }
}
