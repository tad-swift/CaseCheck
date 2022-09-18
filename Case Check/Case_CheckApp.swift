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
            NavigationStack {
                List(Array(phonesList.enumerated()), id: \.element) { index, item in
                    NavigationLink(destination: CasesView(phone: item, list: item.caseList)) {
                        PhoneView(phone: item, image: images[index])
                    }
                }
                .listStyle(.plain)
                .scrollIndicators(.hidden)
                .navigationBarTitle("iPhones", displayMode: .large)
            }
        }
    }
}

struct PhoneView: View {
    var phone: Phone
    var image: UIImage
    
    var body: some View {
        HStack {
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 140, alignment: .center)
            Text("\(phone.name) cases")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .bold()
                .padding(.leading, 12)
            Spacer()
        }
    }
}
