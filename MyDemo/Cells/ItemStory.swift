//
//  ItemStory.swift
//  MyDemo
//
//  Created by A'zamjon Abdumuxtorov on 16/12/23.
//

import SwiftUI

struct ItemStory: View {
    var body: some View {
        VStack{
            Image("img3").resizable().frame(width: 70,height: 70)
                .cornerRadius(35)
                .overlay(RoundedRectangle(cornerRadius: 35 ).stroke(.red,lineWidth: 2) )
            Text("A'zamjon").font(Font.system(size: 13.5))
        }.padding(.trailing,10).frame(height: 100 )
    }
}

#Preview {
    ItemStory()
}
