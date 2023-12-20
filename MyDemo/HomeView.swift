//
//  HomeView.swift
//  MyDemo
//
//  Created by A'zamjon Abdumuxtorov on 11/12/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            List{
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        AddStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                    }
                }.frame(height: 100)
                ItemPost(img_url: "img1")
                ItemPost(img_url: "img2")
                ItemPost(img_url: "img3")
               
                
            }.listStyle(PlainListStyle())
            .navigationBarItems(leading: Image(systemName: "camera"),trailing: Button(action: {
                UserDefaults.standard.set(false,forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
            }, label: {
                Image(systemName: "person").foregroundColor(.black)
            }))
                .navigationBarTitle("Instagram",displayMode: .inline)
        }
    }
}

#Preview {
    HomeView()
}
