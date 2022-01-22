//
//  ClassSelection.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-21.
//
// Make sure that when someone selects a class, its added to the database

import SwiftUI
import simd
import Firebase

struct ClassSelection: View {
    func databaseUpdate(){
        let db = Firestore.firestore()
        let user = Auth.auth().currentUser
        if user == nil{
            return
        }
        print(user!.email!)
        let tempArr = Array(selected)
        db.collection("Users").document(user!.email!).updateData(["Classes": tempArr])
    }

    var columns = Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    
    @Namespace var namespace
    

    @State var selected: Set<String> = []
    
    @State var Classes: [SchoolClass] = [
        SchoolClass(id: 1, code: "COMP 102", symbol: "💻"),
        SchoolClass(id: 2, code: "COMP 189", symbol: "💻"),
        SchoolClass(id: 3, code: "COMP 199", symbol: "💻"),
        SchoolClass(id: 4, code: "COMP 208", symbol: "💻"),
        SchoolClass(id: 5, code: "COMP 322", symbol: "💻"),
        SchoolClass(id: 6, code: "COMP 303", symbol: "💻"),
        SchoolClass(id: 7, code: "MATH 150", symbol: "💻"),
        SchoolClass(id: 8, code: "MATH 151", symbol: "💻"),
        SchoolClass(id: 9, code: "MATH 180", symbol: "💻"),
        SchoolClass(id: 10, code: "MATH 235", symbol: "💻"),
        SchoolClass(id: 12, code: "BIEN 219", symbol: "💻"),
        SchoolClass(id: 13, code: "BEIN 300", symbol: "💻"),
        SchoolClass(id: 14, code: "BEIN 314", symbol: "💻"),
        SchoolClass(id: 15, code: "FACC 100", symbol: "💻"),
        SchoolClass(id: 16, code: "FACC 203", symbol: "💻"),
        SchoolClass(id: 17, code: "PHIl 201", symbol: "💻"),
        SchoolClass(id: 18, code: "PHIl 310", symbol: "💻"),
        SchoolClass(id: 19, code: "DANK 420", symbol: "💻")
    ]
    var body: some View {
        NavigationView {
            ZStack{
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(0..<Classes.count) {index in
                            Image(systemName: "book")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .overlay(
                                    Text(Classes[index].code)
                                        .foregroundColor(.black)
                                ).foregroundColor(.white)
                                
                                .frame(width: 180, height: 180)
                                .background(Classes[index].isSelected ? .pink : Color("bg_purple"))
                                .cornerRadius(35)
                                .layoutPriority(1)
                                .matchedGeometryEffect(id: Classes[index].id, in: self.namespace)
                                .onTapGesture {
                                    Classes[index].isSelected.toggle()
                                    print(Classes[index])
                                    if Classes[index].isSelected{
                                        selected.insert(Classes[index].code)
                                    }else{
                                        selected.remove(Classes[index].code)
                                    }
                                    
                            }
                        }
                    }.padding(10)
                }.navigationTitle("Classes")
                Button(action: databaseUpdate){
                    Text("Confirm")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(width: 300)
                        .padding(10)
                        .background(Color("nav_black"))
                        .cornerRadius(40)
                }.offset(y: 325)
            }
        }
    }
}


struct SchoolClass: Identifiable, Hashable {
    var id: Int
    var code: String
    var symbol: String
    var isSelected: Bool = false
}

struct ClassSelection_Previews: PreviewProvider {
    static var previews: some View {
        ClassSelection()
    }
}
