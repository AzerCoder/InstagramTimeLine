//
//  ItemPost.swift
//  MyDemo
//
//  Created by A'zamjon Abdumuxtorov on 16/12/23.
//

import SwiftUI
extension UIScreen{
    static var width = UIScreen.main.bounds.size.width
    static var height = UIScreen.main.bounds.size.height
}
struct ItemPost: View {
    var img_url = "img2"
    var body: some View {
        VStack(alignment:.leading){
            //header
            HStack{
                Image("img4")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .cornerRadius(25)
                HStack{
                    Text("A'zamjon").font(Font.system(size: 14))
                    Text("Follow").font(Font.system(size: 14)).foregroundColor(.red)
                    Spacer()
                    Image(systemName: "ellipsis")
                }
            }
            
            //post image
            HStack{
                Image(img_url)
                    .resizable()
                    .frame(width: UIScreen.width/2,height: 200)
                    .scaledToFit()
                    .padding(.leading, -20)
//                    .padding(.trailing, -20)
                    .padding(.bottom,5)
                
                Image("img4")
                    .resizable()
                    .frame(width: UIScreen.width/2,height: 200)
                    .scaledToFit()
//                    .padding(.leading, -20)
                    .padding(.trailing, -20)
                    .padding(.bottom,5)
            }
            //horizontal bar
            
            HStack(alignment: .center ){
                Image(systemName: "heart")
                Image(systemName: "message")/*.padding(5)*/
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }.padding(.bottom,5)
            //description
            Text("167 likes")
                .padding(.bottom,1)
            Text("Liked by Jony and 166 others").font(Font.system(size: 13.5))
                .padding(.bottom,1)
            Text("A'zamjon thanks for sharing this post")
                .lineLimit(4)
                .font(Font.system(size: 13.5))
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    ItemPost()
}
