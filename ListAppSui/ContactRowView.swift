//
//  ContactRowView.swift
//  ListAppSui
//
//  Created by Roman on 27.12.23.
//

import SwiftUI


struct ContactRowView: View {
    
    let contact: Person
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
        
                Text(contact.fullName)
                        .font(.system(size: 32))
                        .bold()
                        .lineSpacing(16)
                         .padding(.leading, 20)
            
            
                List {
                    HStack {
                        Spacer()
                        Label("", systemImage: "person.fill")
                            .font(.system(size: 90))
                            .frame(alignment: .center)
                            .foregroundColor(.black)
                        Spacer()
                    }
                        HStack {
                            Image(systemName: "envelope.fill")
                                .font(.headline)
                            Text("\(contact.mail)")
                        }
                    HStack {
                        Image(systemName: "phone.fill")
                            .font(.headline)
                        Text("\(contact.number)")
                    }
            }
//                .listStyle(PlainListStyle())
        }
        .listStyle(.insetGrouped)
        .background(Color(.secondarySystemBackground))
    }
}

#Preview {
    ContentView()
}

