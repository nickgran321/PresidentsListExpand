//
//  ContentView.swift
//  SwiftUIDynamicList
//
//  Created by Nicholas Grant on 03/20/2020.
//  Copyright © 2020 Rebeloper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(Service.listData) { item in
                NavigationLink(destination: ListDetailView(item: item)) {
                    ListElementView(item: item)
                }
            }.navigationBarTitle("The Presidents")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

