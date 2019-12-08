//
//  ContentView.swift
//  Funky Food
//
//  Created by Sidney de Koning on 06/12/2019.
//  Copyright © 2019 Sidney de Koning. All rights reserved.
//

import SwiftUI

enum AppState {
    case empty
    case loading
    case loaded
}
struct ContentView: View {
    
    @State var state: AppState = .empty
    @State var items = [FermentationCell]()
    
    var body: some View {
        
        TabView {
            NavigationView {
                    EmptyStateView().navigationBarTitle("Nothing Fermenting")
                }.tabItem {
                    Text("My Funky Food")
                    Image(systemName: "hare")
            }
            NavigationView {
                FermentationList().navigationBarTitle("Fermentation Library")
            }.tabItem {
                Text("Library")
                Image(systemName: "book")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
