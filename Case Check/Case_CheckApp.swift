//
//  Case_CheckApp.swift
//  Case Check
//
//  Created by Tadreik Campbell on 6/8/21.
//

import SwiftUI

@main
struct Case_CheckApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                List(phonesList) { item in
                    NavigationLink(destination: CasesView(phone: item)) {
                        PhoneView(phone: item)
                    }
                }
                .listStyle(PlainListStyle())
                .navigationBarTitle("iPhones", displayMode: .large)
            }
        }
    }
}

struct App_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List(phonesList) { item in
                NavigationLink(destination: CasesView(phone: item)) {
                    PhoneView(phone: item)
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("iPhones", displayMode: .large)
        }
        .previewDevice("iPhone 12")
    }
}
