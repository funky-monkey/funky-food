//
//  EmptyStateView.swift
//  Funky Food
//
//  Created by Sidney de Koning on 07/12/2019.
//  Copyright © 2019 Sidney de Koning. All rights reserved.
//

import SwiftUI

struct EmptyStateView: View {
    var body: some View {
        VStack {
            Text("Want to get started?")
                .font(.headline)
                .foregroundColor(.blue)
            Text("Add a project from the library")
                .font(.callout)
                .foregroundColor(.blue)
                
            Image("brewing")
                .opacity(0.5)
                .padding(50)
        }
    }
}

struct EmptyStateView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateView()
    }
}
