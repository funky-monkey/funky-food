//
//  FermentationList.swift
//  Funky Food
//
//  Created by Sidney de Koning on 06/12/2019.
//  Copyright © 2019 Sidney de Koning. All rights reserved.
//

import SwiftUI

struct FermentationList: View {
    var body: some View {
        
        
            List {
                ForEach(0..<FermentationLibraryModel().items.count) {
                    FermentationCell(item: FermentationLibraryModel().items[$0])
                }
            }
        
        
    }
}

struct FermentationList_Previews: PreviewProvider {
    static var previews: some View {
        FermentationList()
    }
}
