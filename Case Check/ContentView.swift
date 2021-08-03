//
//  ContentView.swift
//  Case Check
//
//  Created by Tadreik Campbell on 6/8/21.
//

import SwiftUI

enum CaseType: String {
    case leather
    case silicone
    case battery
    case folio
    case sleeve
    case clear
}

struct Case: Hashable {

    let name: String
    let type: CaseType
    let image: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(image)
    }
    
    static func ==(lhs: Case, rhs: Case) -> Bool {
        return lhs.image == rhs.image
    }
}

struct Phone: Identifiable {
    let name: String
    let image: String
    let caseTypes: [CaseType]
    let caseList: [Case]
    let id = UUID()
}

let phonesList: [Phone] = [
    Phone(name: "iPhone 6", image: "6/Leather/brown",
          caseTypes: [.leather, .silicone],
          caseList: [
            Case(name: "Brown", type: .leather, image: "6/Leather/brown"),
            Case(name: "Midnight Blue", type: .leather, image: "6/Leather/midnight blue"),
            Case(name: "Product Red", type: .leather, image: "6/Leather/product red"),
            Case(name: "Saddle Brown", type: .leather, image: "6/Leather/saddle brown"),
            Case(name: "Taupe", type: .leather, image: "6/Leather/taupe"),
            Case(name: "Black", type: .silicone, image: "6/Silicone/black"),
            Case(name: "Blue", type: .silicone, image: "6/Silicone/blue"),
            Case(name: "Green", type: .silicone, image: "6/Silicone/green"),
            Case(name: "Pink", type: .silicone, image: "6/Silicone/pink"),
            Case(name: "White", type: .silicone, image: "6/Silicone/white"),
          ]
    ),
    Phone(name: "iPhone 6s", image: "6s/Leather/marigold",
          caseTypes: [.leather, .silicone, .battery],
          caseList: [
            Case(name: "Black", type: .leather, image: "6s/Leather/black"),
            Case(name: "Brown", type: .leather, image: "6s/Leather/brown"),
            Case(name: "Marigold", type: .leather, image: "6s/Leather/marigold"),
            Case(name: "Midnight Blue", type: .leather, image: "6s/Leather/midnight blue"),
            Case(name: "Product Red", type: .leather, image: "6s/Leather/product red"),
            Case(name: "Saddle Brown", type: .leather, image: "6s/Leather/saddle brown"),
            Case(name: "Rose Gray", type: .leather, image: "6s/Leather/rose gray"),
            Case(name: "Sea Blue", type: .leather, image: "6s/Leather/sea blue"),
            Case(name: "Antique White", type: .silicone, image: "6s/Silicone/Antique White"),
            Case(name: "Apricot", type: .silicone, image: "6s/Silicone/Apricot"),
            Case(name: "Blue", type: .silicone, image: "6s/Silicone/blue"),
            Case(name: "Charcoal Gray", type: .silicone, image: "6s/Silicone/charcoal gray"),
            Case(name: "Gray", type: .silicone, image: "6s/Silicone/gray"),
            Case(name: "Lavender", type: .silicone, image: "6s/Silicone/lavender"),
            Case(name: "Light Pink", type: .silicone, image: "6s/Silicone/light pink"),
            Case(name: "Midnight Blue", type: .silicone, image: "6s/Silicone/midnight blue"),
            Case(name: "Mint", type: .silicone, image: "6s/Silicone/mint"),
            Case(name: "Orange", type: .silicone, image: "6s/Silicone/orange"),
            Case(name: "Pink Sand", type: .silicone, image: "6s/Silicone/pink sand"),
            Case(name: "Product Red Sil", type: .silicone, image: "6s/Silicone/product red sil"),
            Case(name: "Royal Blue", type: .silicone, image: "6s/Silicone/royal blue"),
            Case(name: "Stone", type: .silicone, image: "6s/Silicone/stone"),
            Case(name: "Turquoise", type: .silicone, image: "6s/Silicone/Turquoise"),
            Case(name: "white", type: .silicone, image: "6s/Silicone/white"),
            Case(name: "Yellow", type: .silicone, image: "6s/Silicone/yellow"),
            Case(name: "Charcoal Gray", type: .battery, image: "6s/Battery/charcoal gray"),
            Case(name: "White", type: .battery, image: "6s/Battery/white")
          ]
    ),
    Phone(name: "iPhone 7", image: "7/Leather/berry",
          caseTypes: [.leather, .silicone, .battery],
          caseList: [
            Case(name: "Berry", type: .leather, image: "7/Leather/berry"),
            Case(name: "Black", type: .leather, image: "7/Leather/black"),
            Case(name: "Midnight Blue", type: .leather, image: "7/Leather/midnight blue"),
            Case(name: "Product Red", type: .leather, image: "7/Leather/product red"),
            Case(name: "Sapphire", type: .leather, image: "7/Leather/sapphire"),
            Case(name: "Sea Blue", type: .leather, image: "7/Leather/sea blue"),
            Case(name: "Storm Gray", type: .leather, image: "7/Leather/storm gray"),
            Case(name: "Tan", type: .leather, image: "7/Leather/tan"),
            Case(name: "Taupe", type: .leather, image: "7/Leather/taupe"),
            Case(name: "Saddle Brown", type: .leather, image: "7/Leather/saddle brown"),
            Case(name: "Sea Blue", type: .silicone, image: "7/Silicone/sea blue"),
            Case(name: "Azure", type: .silicone, image: "7/Silicone/Azure"),
            Case(name: "Camelia", type: .silicone, image: "7/Silicone/camelia"),
            Case(name: "Midnight Blue", type: .silicone, image: "7/Silicone/midnight blue"),
            Case(name: "Ocean Blue", type: .silicone, image: "7/Silicone/ocean blue"),
            Case(name: "Pebble", type: .silicone, image: "7/Silicone/pebble"),
            Case(name: "Pink Sand", type: .silicone, image: "7/Silicone/pink sand"),
            Case(name: "Product Red", type: .silicone, image: "7/Silicone/product red"),
            Case(name: "Stone", type: .silicone, image: "7/Silicone/stone"),
            Case(name: "White", type: .silicone, image: "7/Silicone/white"),
            Case(name: "Black", type: .battery, image: "7/Battery/black"),
            Case(name: "Product Red", type: .battery, image: "7/Battery/product red"),
            Case(name: "Black", type: .battery, image: "7/Battery/white"),
          ]
    ),
    Phone(name: "iPhone 8", image: "8/Leather/black",
          caseTypes: [.leather, .silicone],
          caseList: [
            Case(name: "Black", type: .leather, image: "8/Leather/black"),
            Case(name: "Bright Orange", type: .leather, image: "8/Leather/bright orange"),
            Case(name: "Charcoal Gray", type: .leather, image: "8/Leather/charcoal gray"),
            Case(name: "Cosmos Blue", type: .leather, image: "8/Leather/cosmos blue"),
            Case(name: "Dark Aubergine", type: .leather, image: "8/Leather/dark aubergine"),
            Case(name: "Electric Blue", type: .leather, image: "8/Leather/black"),
            Case(name: "Midnight Blue", type: .leather, image: "8/Leather/black"),
            Case(name: "Pink Fuchsia", type: .leather, image: "8/Leather/pink fuchsia"),
            Case(name: "Red", type: .leather, image: "8/Leather/red"),
            Case(name: "Saddle Brown", type: .leather, image: "8/Leather/saddle brown"),
            Case(name: "Soft Pink", type: .leather, image: "8/Leather/soft pink"),
            Case(name: "Spring Yellow", type: .leather, image: "8/Leather/spring yellow"),
            Case(name: "Taupe", type: .leather, image: "8/Leather/taupe"),
            Case(name: "Black", type: .silicone, image: "8/Silicone/black")
          ]
    ),
    Phone(name: "iPhone X", image: "X/Leather/bright orange",
          caseTypes: [.folio, .leather, .silicone],
          caseList: [
            Case(name: "Black", type: .leather, image: "X/Leather/black"),
            Case(name: "Bright Orange", type: .leather, image: "X/Leather/bright orange"),
            Case(name: "Charcoal Gray", type: .leather, image: "X/Leather/charcoal gray"),
            Case(name: "Cosmos Blue", type: .leather, image: "X/Leather/cosmos blue"),
            Case(name: "Dark Aubergine", type: .leather, image: "X/Leather/Dark Aubergine"),
            Case(name: "Electric Blue", type: .leather, image: "X/Leather/electric blue"),
            Case(name: "Midnight Blue", type: .leather, image: "X/Leather/midnight blue"),
            Case(name: "Pink Fuchsia", type: .leather, image: "X/Leather/pink fuchsia"),
            Case(name: "Product Red", type: .leather, image: "X/Leather/product red"),
            Case(name: "Saddle Brown", type: .leather, image: "X/Leather/saddle brown"),
            Case(name: "Soft Pink", type: .leather, image: "X/Leather/soft pink"),
            Case(name: "Spring Yellow", type: .leather, image: "X/Leather/spring yellow"),
            Case(name: "Taupe", type: .leather, image: "X/Leather/Taupe"),
            
            Case(name: "Berry", type: .folio, image: "X/Folio/berry"),
            Case(name: "Charcoal Gray", type: .folio, image: "X/Folio/charcole gray"),
            Case(name: "Electric Blue", type: .folio, image: "X/Folio/electric blue"),
            Case(name: "Red", type: .folio, image: "X/Folio/red"),
            Case(name: "Soft Pink", type: .folio, image: "X/Folio/soft pink"),
            
            Case(name: "Black", type: .silicone, image: "X/Silicone/black"),
            Case(name: "Cobalt Blue", type: .silicone, image: "X/Silicone/cobalt blue"),
            Case(name: "Cosmos Blue", type: .silicone, image: "X/Silicone/cosmos blue"),
            Case(name: "Denim Blue", type: .silicone, image: "X/Silicone/denim blue"),
            Case(name: "Midnight Blue", type: .silicone, image: "X/Silicone/midnight blue"),
            Case(name: "Ultra Violet", type: .silicone, image: "X/Silicone/ultra violet"),
            Case(name: "Dark Olive", type: .silicone, image: "X/Silicone/dark olive"),
            Case(name: "Flash", type: .silicone, image: "X/Silicone/flash"),
            Case(name: "Lemonde", type: .silicone, image: "X/Silicone/lemonade"),
            Case(name: "Pink Sand", type: .silicone, image: "X/Silicone/pink sand"),
            Case(name: "Product Red", type: .silicone, image: "X/Silicone/product red"),
            Case(name: "Raspberry Red", type: .silicone, image: "X/Silicone/raspberry red"),
            Case(name: "Rose Red", type: .silicone, image: "X/Silicone/rose red"),
            Case(name: "Spicy Orange", type: .silicone, image: "X/Silicone/spicy orange"),
            Case(name: "White", type: .silicone, image: "X/Silicone/white"),
            
          ]),
    Phone(name: "iPhone 11", image: "11/Leather/black",
          caseTypes: [.battery, .silicone],
          caseList: [
            Case(name: "Black", type: .battery, image: "11/Battery/black"),
            Case(name: "White", type: .battery, image: "11/Battery/Soft White"),
            Case(name: "Black", type: .silicone, image: "11/Silicone/black"),
            Case(name: "Soft White", type: .silicone, image: "11/Silicone/Soft White"),
            Case(name: "Clear", type: .silicone, image: "11/Silicone/Clear"),
            Case(name: "Vitamin C", type: .silicone, image: "11/Silicone/Vitamin C"),
          ]
         ),
    Phone(name: "iPhone 11 Pro", image: "11 Pro/Leather/black",
          caseTypes: [.folio, .leather, .silicone],
          caseList: [
            Case(name: "Aubergine", type: .folio, image: "11 Pro/Folio/Aubergine"),
            Case(name: "Black", type: .folio, image: "11 Pro/Folio/black"),
            Case(name: "Deep Sea Blue", type: .folio, image: "11 Pro/Folio/Deep Sea Blue"),
            Case(name: "Peacock", type: .folio, image: "11 Pro/Folio/Peacock"),
            Case(name: "Raspberry", type: .folio, image: "11 Pro/Folio/raspberry"),
            Case(name: "Black", type: .leather, image: "11 Pro/Leather/black"),
            Case(name: "Forest Green", type: .leather, image: "11 Pro/Leather/Forest Green"),
            Case(name: "Meyer Lemon", type: .leather, image: "11 Pro/Leather/Meyer Lemon"),
            Case(name: "Midnight Blue", type: .leather, image: "11 Pro/Leather/midnight blue"),
            Case(name: "Red", type: .leather, image: "11 Pro/Leather/red"),
            Case(name: "Saddle Brown", type: .leather, image: "11 Pro/Leather/saddle brown"),
            Case(name: "Alaskan Blue", type: .silicone, image: "11 Pro/Silicone/Alaskan Blue"),
            Case(name: "Beryl", type: .silicone, image: "11 Pro/Silicone/Beryl"),
            Case(name: "Black", type: .silicone, image: "11 Pro/Silicone/black"),
            Case(name: "Cactus", type: .silicone, image: "11 Pro/Silicone/Cactus"),
            Case(name: "Clementine", type: .silicone, image: "11 Pro/Silicone/Clementine"),
            Case(name: "Grapefruit", type: .silicone, image: "11 Pro/Silicone/Grapefruit"),
            Case(name: "Linen Blue", type: .silicone, image: "11 Pro/Silicone/Linen Blue"),
            Case(name: "Midnight Blue", type: .silicone, image: "11 Pro/Silicone/Midnight Blue"),
            Case(name: "Pink Sand", type: .silicone, image: "11 Pro/Silicone/Pink Sand"),
            Case(name: "Pomegranate", type: .silicone, image: "11 Pro/Silicone/Pomegranate"),
            Case(name: "Red", type: .silicone, image: "11 Pro/Silicone/red"),
            Case(name: "Seafoam", type: .silicone, image: "11 Pro/Silicone/Seafoam"),
            Case(name: "Surf Blue", type: .silicone, image: "11 Pro/Silicone/Surf Blue"),
            Case(name: "Vitamin C", type: .silicone, image: "11 Pro/Silicone/Vitamin C"),
            Case(name: "White", type: .silicone, image: "11 Pro/Silicone/white")
          ]
         ),
    
]

struct ContentView: View {
    var body: some View {
        List(phonesList) { item in
            NavigationLink(destination: CasesView(phone: item)) {
                PhoneView(phone: item)
            }
        }
        .navigationBarTitle("iPhones", displayMode: .large)
    }
}

struct PhoneView: View {
    var phone: Phone
    var body: some View {
        HStack {
            Image(uiImage: UIImage(named: phone.image)!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70, alignment: .center)
            Text("\(phone.name) cases")
                .font(.title2)
                .bold()
                .padding(.leading, 12)
            Spacer()
        }
    }
}

struct CasesView: View {
    var phone: Phone
    @State private var section = 0
    var body: some View {
        TabView {
            ForEach(phone.caseList, id: \.self) { item in
                VStack {
                    Image(uiImage: UIImage(named: item.image) ?? UIImage())
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200, alignment: .center)
                    Text(item.name)
                        .font(.title)
                        .bold()
                        .padding(.top, 20)
                    Text(item.type.rawValue.capitalized)
                        .font(.body)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.green)
                        .cornerRadius(4)
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .navigationBarTitle("\(phone.name) Cases")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}




