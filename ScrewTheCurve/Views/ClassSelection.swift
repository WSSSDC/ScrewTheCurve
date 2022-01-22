//
//  ClassSelection.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-21.
//
// Make sure that when someone selects a class, its added to the database

import SwiftUI
import simd

struct ClassSelection: View {

    var columns = Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    
    @Namespace var namespace
    

    @State var selected: [SchoolClass] = []
    
    @State var Classes: [SchoolClass] = [
        SchoolClass(id: 1, code: "COMP102", symbol: "💻"),
        SchoolClass(id: 2, code: "COMP189", symbol: "💻"),
        SchoolClass(id: 3, code: "COMP199", symbol: "💻"),
        SchoolClass(id: 4, code: "COMP208", symbol: "💻"),
        SchoolClass(id: 5, code: "COMP322", symbol: "💻"),
        SchoolClass(id: 6, code: "COMP303", symbol: "💻"),
        SchoolClass(id: 7, code: "MATH150", symbol: "💻"),
        SchoolClass(id: 8, code: "MATH151", symbol: "💻"),
        SchoolClass(id: 9, code: "MATH180", symbol: "💻"),
        SchoolClass(id: 10, code: "MATH235", symbol: "💻"),
        SchoolClass(id: 12, code: "BIEN219", symbol: "💻"),
        SchoolClass(id: 13, code: "BEIN300", symbol: "💻"),
        SchoolClass(id: 14, code: "BEIN314", symbol: "💻"),
        SchoolClass(id: 15, code: "FACC100", symbol: "💻"),
        SchoolClass(id: 16, code: "FACC203", symbol: "💻"),
        SchoolClass(id: 17, code: "PHIl201", symbol: "💻"),
        SchoolClass(id: 18, code: "PHIl310", symbol: "💻"),
        SchoolClass(id: 19, code: "DANK420", symbol: "💻")
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                if !self.Classes.isEmpty {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(self.Classes) { SchoolClass in
                            Text(SchoolClass.code)
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                                .frame(width: 180, height: 180)
                                .offset(y:55)
                                .background(Color("bg_purple"))
                                .cornerRadius(35)
                                .layoutPriority(1)
                                .matchedGeometryEffect(id: SchoolClass.id, in: self.namespace)
                                .onTapGesture {
                                    self.selected.append(SchoolClass)
                                    self.Classes.removeAll { (code) -> Bool in
                                        if code.id == SchoolClass.id {return true}
                                        else
                                        {return false}
                            }
                        }
                    }
                }.padding(8)
            }
                HStack {
                    Text("Current Classes")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Spacer()
                }
                .padding(.horizontal)
                
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(self.selected) { SchoolClass in
                        Text(SchoolClass.code)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .frame(width: 180, height: 180)
                            .offset(y:55)
                            .background(Color.pink)
                            .cornerRadius(35)
                            .layoutPriority(1)
                            .matchedGeometryEffect(id: SchoolClass.id, in: self.namespace)
                            .onTapGesture {
                                self.Classes.append(SchoolClass)
                                self.selected.removeAll {
                                    (code) -> Bool in
                                    if code.id == SchoolClass.id
                                    {return true}
                                    else
                                    {return false}
                            }
                        }
                    }
                }.padding(.all)
            }.navigationTitle("Classes")
            
        }
    }
}

struct SchoolClass: Identifiable {
    var id: Int
    var code: String
    var symbol: String
    
}

struct ClassSelection_Previews: PreviewProvider {
    static var previews: some View {
        ClassSelection()
    }
}
