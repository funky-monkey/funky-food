//
//  FermentationItem.swift
//  Funky Food
//
//  Created by Sidney de Koning on 06/12/2019.
//  Copyright © 2019 Sidney de Koning. All rights reserved.
//

import SwiftUI


struct FermentationCell: View {
    
    let item: FermentationItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                
                Image(item.imgPath).resizable().frame(width: 60, height: 60, alignment: .center)
            }
            
            VStack (alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                    .background(Color.yellow)
                Text(item.desc).font(.callout).bold()
                Text("Total stages: \(item.phases.count)").font(.subheadline).italic()
                Text("Difficulty: \(String(describing: item.difficulty))").font(.subheadline) 
            }
        }
        
        
        
    }
}

struct FermentationCell_Previews: PreviewProvider {
    static var previews: some View {
        FermentationCell(item: FermentationLibraryModel().items.first!)
    }
}
