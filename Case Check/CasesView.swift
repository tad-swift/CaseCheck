//
//  CasesView.swift
//  Case Check
//
//  Created by Tadreik Campbell on 9/17/22.
//

import SwiftUI

struct CasesView: View {
    var phone: Phone
    @State var list: [Case]
    @State var caseImages: [UIImage] = []
    
    var body: some View {
        let compatiblePhones = ["iPhone X","iPhone 8","iPhone 11 Pro","iPhone 12 Pro"]
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(phone.caseTypes, id: \.self) { type in
                        Button(type.rawValue.uppercased()) {
                            list = phone.caseList.filter { $0.type == type }
                        }
                        .font(.system(size: 18, weight: .medium, design: .rounded))
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    }
                }
                .padding(.horizontal)
            }
            .padding(.top, 24)
            .padding(.bottom, 50)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(list, id: \.self) { item in
                        VStack {
                            Image(uiImage: UIImage(named: item.image) ?? UIImage())
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 260, height: 260, alignment: .center)
                            Text(item.name)
                                .font(.system(size: 24, weight: .bold, design: .rounded))
                                .bold()
                                .padding(.top, 20)
                            Text(item.type.rawValue.capitalized)
                                .font(.system(size: 16, weight: .medium, design: .rounded))
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(Color.green)
                                .cornerRadius(4)
                        }
                        .padding(.top, 16)
                        .frame(width: 260)
                    }
                }
                
            }
            Spacer()
            if compatiblePhones.contains(phone.name) {
                switch phone.name {
                case "iPhone 8":
                    NavigationLink("View in 3D", destination: ModelView(sceneDirectory: "art.scnassets/iPhone 8.scn"))
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(RoundedRectangle(cornerRadius: 6).foregroundColor(Color.gray))
                case "iPhone X":
                    NavigationLink("View in 3D", destination: ModelView(sceneDirectory: "art.scnassets/iPhoneX Master.scn"))
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(RoundedRectangle(cornerRadius: 6).foregroundColor(Color.gray))
                case "iPhone 11 Pro":
                    NavigationLink("View in 3D", destination: ModelView(sceneDirectory: "art.scnassets/iPhone 11 Pro.scn"))
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(RoundedRectangle(cornerRadius: 6).foregroundColor(Color.gray))
                case "iPhone 12 Pro":
                    NavigationLink("View in 3D", destination: ModelView(sceneDirectory: "art.scnassets/iPhone 12 Pro.scn"))
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(RoundedRectangle(cornerRadius: 6).foregroundColor(Color.gray))
                default:
                    NavigationLink("View in 3D", destination: ModelView(sceneDirectory: "art.scnassets/iPhone 8.scn"))
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(RoundedRectangle(cornerRadius: 6).foregroundColor(Color.gray))
                }
            }
            Spacer()
        }
        .navigationBarTitle("\(phone.name) Cases")
        .navigationBarTitleDisplayMode(.inline)
    }
}

