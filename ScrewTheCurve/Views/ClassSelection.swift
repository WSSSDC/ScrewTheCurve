//
//  ClassSelection.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-21.
//

import SwiftUI

struct ClassSelection: View {

    var columns = Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    
    @Namespace var namespace
    

    @State var selected: [SchoolClass] = []
    
    @State var Hobbies: [SchoolClass] = [
        SchoolClass(id: 1, code: "COMP102"),
        SchoolClass(id: 2, code: "COMP189"),
        SchoolClass(id: 3, code: "COMP199"),
        SchoolClass(id: 4, code: "COMP208"),
        SchoolClass(id: 5, code: "COMP322"),
        SchoolClass(id: 6, code: "COMP303"),
        SchoolClass(id: 7, code: "MATH150"),
        SchoolClass(id: 8, code: "MATH151"),
        SchoolClass(id: 9, code: "MATH180"),
        SchoolClass(id: 10, code: "MATH235"),
        SchoolClass(id: 12, code: "BIEN219"),
        SchoolClass(id: 13, code: "BEIN300"),
        SchoolClass(id: 14, code: "BEIN314"),
        SchoolClass(id: 15, code: "FACC100"),
        SchoolClass(id: 16, code: "FACC203"),
        SchoolClass(id: 17, code: "PHIl201"),
        SchoolClass(id: 18, code: "PHIl310"),
        SchoolClass(id: 19, code: "DANK420")
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                if !self.Hobbies.isEmpty {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(self.Hobbies) { SchoolClass in
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
                                    self.Hobbies.removeAll { (code) -> Bool in
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
                                self.Hobbies.append(SchoolClass)
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
    
}

struct ClassSelection_Previews: PreviewProvider {
    static var previews: some View {
        ClassSelection()
    }
}
