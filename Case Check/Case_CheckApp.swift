//
//  Case_CheckApp.swift
//  Case Check
//
//  Created by Tadreik Campbell on 6/8/21.
//

import SwiftUI
import SceneKit
import UIKit.UIColor

@main
struct Case_CheckApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                List(phonesList) { item in
                    NavigationLink(destination: CasesView(phone: item, list: item.caseList)) {
                        PhoneView(phone: item)
                    }
                }
                .listStyle(.plain)
                .navigationBarTitle("iPhones", displayMode: .large)
            }
        }
    }
}

enum CaseType: String, CaseIterable {
    case leather, silicone, battery
    case folio, sleeve, clear
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
            Case(name: "Cosmos Blue", type: .leather, image: "8/Leather/Cosmos Blue"),
            Case(name: "Dark Aubergine", type: .leather, image: "8/Leather/Dark Aubergine"),
            Case(name: "Electric Blue", type: .leather, image: "8/Leather/electric blue"),
            Case(name: "Midnight Blue", type: .leather, image: "8/Leather/midnight blue"),
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
            Case(name: "Charcoal Gray", type: .leather, image: "X/Leather/charcole gray"),
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
    Phone(name: "iPhone XR", image: "Xs Xr/Xr/clear",
          caseTypes: [.clear, .battery],
          caseList: [
            Case(name: "Clear", type: .clear, image: "Xs Xr/Xr/clear"),
            Case(name: "Black", type: .battery, image: "Xs Xr/Xr/black"),
            Case(name: "White", type: .battery, image: "Xs Xr/Xr/white")
          ]),
    Phone(name: "iPhone Xs", image: "Xs Xr/Xs Silicone/dragon fruit",
          caseTypes: [.battery, .folio, .leather, .silicone],
          caseList: [
            Case(name: "Black", type: .battery, image: "Xs Xr/Xs Battery/black"),
            Case(name: "Pink Sand", type: .battery, image: "Xs Xr/Xs Battery/pink sand"),
            Case(name: "White", type: .battery, image: "Xs Xr/Xs Battery/white"),
            
            Case(name: "Black", type: .folio, image: "Xs Xr/Xs Folio/Black"),
            Case(name: "Cape Cod Blue", type: .folio, image: "Xs Xr/Xs Folio/Cape Cod Blue"),
            Case(name: "cornflower", type: .folio, image: "Xs Xr/Xs Folio/cornflower"),
            Case(name: "forest green", type: .folio, image: "Xs Xr/Xs Folio/forest green"),
            Case(name: "Lilac", type: .folio, image: "Xs Xr/Xs Folio/lilac"),
            Case(name: "Peony Pink", type: .folio, image: "Xs Xr/Xs Folio/Peony Pink"),
            Case(name: "Red", type: .folio, image: "Xs Xr/Xs Folio/Red"),
            Case(name: "sunset", type: .folio, image: "Xs Xr/Xs Folio/sunset"),
            
            Case(name: "Black", type: .leather, image: "Xs Xr/Xs Leather/Black"),
            Case(name: "Cape Cod Blue", type: .leather, image: "Xs Xr/Xs Leather/cape cod blue"),
            Case(name: "Cornflower", type: .leather, image: "Xs Xr/Xs Leather/cornflower"),
            Case(name: "Forest Green", type: .leather, image: "Xs Xr/Xs Leather/Forest Green"),
            Case(name: "Lilac", type: .leather, image: "Xs Xr/Xs Leather/Lilac"),
            Case(name: "Midnight Blue", type: .leather, image: "Xs Xr/Xs Leather/Midnight Blue"),
            Case(name: "Peony Pink", type: .leather, image: "Xs Xr/Xs Leather/Peony Pink"),
            Case(name: "Red", type: .leather, image: "Xs Xr/Xs Leather/red"),
            Case(name: "Saddle Brown", type: .leather, image: "Xs Xr/Xs Leather/Saddle Brown"),
            Case(name: "Sunset", type: .leather, image: "Xs Xr/Xs Leather/sunset"),
            Case(name: "Taupe", type: .leather, image: "Xs Xr/Xs Leather/Taupe"),
            
            Case(name: "Black", type: .silicone, image: "Xs Xr/Xs Silicone/black"),
            Case(name: "Blue Horizon", type: .silicone, image: "Xs Xr/Xs Silicone/blue horizon"),
            Case(name: "Delft Blue", type: .silicone, image: "Xs Xr/Xs Silicone/Delft Blue"),
            Case(name: "Dragon Fruit", type: .silicone, image: "Xs Xr/Xs Silicone/dragon fruit"),
            Case(name: "Lavender Gray", type: .silicone, image: "Xs Xr/Xs Silicone/Lavender Gray"),
            Case(name: "Midnight Blue", type: .silicone, image: "Xs Xr/Xs Silicone/midnight blue"),
            Case(name: "Nectarine", type: .silicone, image: "Xs Xr/Xs Silicone/Nectarine"),
            Case(name: "Papaya", type: .silicone, image: "Xs Xr/Xs Silicone/papaya"),
            Case(name: "Pink Sand", type: .silicone, image: "Xs Xr/Xs Silicone/pink sand"),
            Case(name: "Red", type: .silicone, image: "Xs Xr/Xs Silicone/red"),
            Case(name: "Spearmint", type: .silicone, image: "Xs Xr/Xs Silicone/spearmint"),
            Case(name: "Stone", type: .silicone, image: "Xs Xr/Xs Silicone/Stone"),
            Case(name: "White", type: .silicone, image: "Xs Xr/Xs Silicone/white"),
          ]),
    Phone(name: "iPhone 11", image: "11/Silicone/Black",
          caseTypes: [.battery, .silicone],
          caseList: [
            Case(name: "Black", type: .battery, image: "11/Battery/black"),
            Case(name: "White", type: .battery, image: "11/Battery/Soft White"),
            Case(name: "Black", type: .silicone, image: "11/Silicone/Black"),
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
    //    Phone(name: "iPhone 12", image: "12 Series/Leather/Deep Violet",
    //          caseTypes: [.clear, .leather, .silicone, .sleeve],
    //          caseList: [])
]

struct PhoneView: View {
    var phone: Phone
    var body: some View {
        HStack {
            Image(uiImage: UIImage(named: phone.image)?.trimmed() ?? UIImage())
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

struct CasesView: View {
    var phone: Phone
    @State var list: [Case]
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
                        .background(Color.gray)
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
                            Image(uiImage: UIImage(named: item.image)?.trimmed() ?? UIImage())
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

struct ModelView: View {
    var sceneDirectory: String
    @State private var bgColor: Color = Color.black
    
    var scene: SCNScene? {
        let s = SCNScene(named: sceneDirectory)
        s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "BackCover")?.diffuse.contents = UIColor(bgColor)
        s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "CaseSides")?.diffuse.contents = UIColor(bgColor)
        if sceneDirectory.contains("11 Pro") {
            s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "mat-cam-backplate")?.diffuse.contents = UIColor(bgColor)
            s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "mat-vol-up")?.diffuse.contents = UIColor(bgColor)
            s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "mat-vol-down")?.diffuse.contents = UIColor(bgColor)
            s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "sim-slot")?.diffuse.contents = UIColor(bgColor)
            s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "mat-silencer")?.diffuse.contents = UIColor(bgColor)
            s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "mat-on-off-button")?.diffuse.contents = UIColor(bgColor)
        }
        return s
    }
    
    var cameraNode: SCNNode? {
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 6, z: 20)
        return cameraNode
    }
    
    var body: some View {
        VStack {
            SceneView(
                scene: scene,
                pointOfView: cameraNode,
                options: [
                    .allowsCameraControl,
                    .autoenablesDefaultLighting,
                    .temporalAntialiasingEnabled
                ]
            )
            ColorPicker("Set the phone color", selection: $bgColor, supportsOpacity: false)
                .padding(.horizontal)
                .frame(height: 60)
        }
    }
}

extension Color {
    static var gray = Color(.sRGB, red: 0.95, green: 0.95, blue: 0.95, opacity: 1)
}

extension UIImage {

    func trimmed() -> UIImage {
        let newRect = self.cropRect
        if let imageRef = self.cgImage!.cropping(to: newRect) {
            return UIImage(cgImage: imageRef)
        }
        return self
    }

    var cropRect: CGRect {
        let cgImage = self.cgImage
        let context = createARGBBitmapContextFromImage(inImage: cgImage!)
        if context == nil {
            return CGRect.zero
        }

        let height = CGFloat(cgImage!.height)
        let width = CGFloat(cgImage!.width)

        let rect = CGRect(x: 0, y: 0, width: width, height: height)
        context?.draw(cgImage!, in: rect)

        //let data = UnsafePointer<CUnsignedChar>(CGBitmapContextGetData(context))
        guard let data = context?.data?.assumingMemoryBound(to: UInt8.self) else {
            return CGRect.zero
        }

        var lowX = width
        var lowY = height
        var highX: CGFloat = 0
        var highY: CGFloat = 0

        let heightInt = Int(height)
        let widthInt = Int(width)
        //Filter through data and look for non-transparent pixels.
        for y in (0 ..< heightInt) {
            let y = CGFloat(y)
            for x in (0 ..< widthInt) {
                let x = CGFloat(x)
                let pixelIndex = (width * y + x) * 4 /* 4 for A, R, G, B */

                if data[Int(pixelIndex)] == 0  { continue } // crop transparent

                if data[Int(pixelIndex+1)] > 0xE0 && data[Int(pixelIndex+2)] > 0xE0 && data[Int(pixelIndex+3)] > 0xE0 { continue } // crop white

                if (x < lowX) {
                    lowX = x
                }
                if (x > highX) {
                    highX = x
                }
                if (y < lowY) {
                    lowY = y
                }
                if (y > highY) {
                    highY = y
                }

            }
        }

        return CGRect(x: lowX, y: lowY, width: highX - lowX, height: highY - lowY)
    }

    func createARGBBitmapContextFromImage(inImage: CGImage) -> CGContext? {

        let width = inImage.width
        let height = inImage.height

        let bitmapBytesPerRow = width * 4
        let bitmapByteCount = bitmapBytesPerRow * height

        let colorSpace = CGColorSpaceCreateDeviceRGB()

        let bitmapData = malloc(bitmapByteCount)
        if bitmapData == nil {
            return nil
        }

        let context = CGContext (data: bitmapData,
                                 width: width,
                                 height: height,
                                 bitsPerComponent: 8,      // bits per component
            bytesPerRow: bitmapBytesPerRow,
            space: colorSpace,
            bitmapInfo: CGImageAlphaInfo.premultipliedFirst.rawValue)

        return context
    }
    
    func remove(color: UIColor) -> UIImage? {
        
        let cgColor = color.cgColor
        let components = cgColor.components
        var r = components?[0] ?? 0.0
        var g = components?[1] ?? 0.0
        var b = components?[2] ?? 0.0
        
        r = r * 255.0
        g = g * 255.0
        b = b * 255.0
        
        let colorMasking: [CGFloat] = [r, r, g, g, b, b]
        
        let image = UIImage(data: self.jpegData(compressionQuality: 1.0)!)!
        let rawImageRef: CGImage = image.cgImage!
        
        UIGraphicsBeginImageContext(image.size);
        
        let maskedImageRef = rawImageRef.copy(maskingColorComponents: colorMasking)
        UIGraphicsGetCurrentContext()?.translateBy(x: 0.0,y: image.size.height)
        UIGraphicsGetCurrentContext()?.scaleBy(x: 1.0, y: -1.0)
        UIGraphicsGetCurrentContext()?.draw(maskedImageRef!, in: CGRect.init(x: 0, y: 0, width: image.size.width, height: image.size.height))
        let result = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        return result
    }
}
