//
//  ContentView.swift
//  SwiftUITableView
//
//  Created by Tony Chen on 13/1/2024.
//

import SwiftUI

struct Data: Identifiable {
    var id = UUID()
    let title: String
    let imageName: String
    let imageDescription: String
    let imageTakenDate: String
}

struct ContentView: View {
    @State private var title = "Photos"
    var items = [Data]()
    
    var body: some View {
        NavigationView{
            List(items) { data in
                NavigationLink(destination: DataView(data: data)) {
                    HStack {
                        Image(data.imageName)
                            .resizable().frame(width: 100,
                                               height: 100,
                                               alignment: .center)
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 10.0,
                                                        style: .continuous))
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Text(data.title)
                            .foregroundStyle(.primary)
                            .fontWeight(.bold)
                    }
                }
            }
            
            .navigationTitle(title)
        }
    }
}

struct DataView: View {
    @State private var title = "Photos"
    var data: Data
    
    var body: some View {
        VStack {
            Image(data.imageName)
                .resizable().frame(width: 400,
                                   height: 300,
                                   alignment: .center)
                .aspectRatio(contentMode: .fit)
            Text(data.imageDescription)
                .padding(5)
            //Spacer()
            Text(data.imageTakenDate)
                .padding(5)
            
        }
        .navigationTitle(data.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentView(items: [
        Data(title: "Flower Photo",
             imageName: "Flowers",
             imageDescription: "This is a flower. This is a flower. This is a flower. This is a flower. This is a flower. This is a flower. This is a flower. This is a flower. This is a flower. This is a flower. This is a flower.",
             imageTakenDate: "1/10/2023"),
        
        Data(title: "Landscape Photo",
             imageName: "Landscape",
             imageDescription: "This is a Landscape",
             imageTakenDate: "2/10/2023"),
        
        Data(title: "Nature Photo",
             imageName: "Nature",
             imageDescription: "This is a Nature",
             imageTakenDate: "3/10/2023"),
        
        Data(title: "Oak Tree Photo",
             imageName: "OakTree",
             imageDescription: "This is a Oak Tree",
             imageTakenDate: "4/10/2023"),
        
        Data(title: "Rose Flower Photo",
             imageName: "Rose",
             imageDescription: "This is a Rose flower",
             imageTakenDate: "5/10/2023"),
        
        Data(title: "Ship Photo",
             imageName: "Ship",
             imageDescription: "This is a Ship",
             imageTakenDate: "6/10/2023"),
        
        Data(title: "Tree Photo",
             imageName: "Tree",
             imageDescription: "This is a Tree",
             imageTakenDate: "7/10/2023")
    ])
    //.environment(\.colorScheme, .dark)
}
