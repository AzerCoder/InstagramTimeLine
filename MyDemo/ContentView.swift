//
//  ContentView.swift
//  MyDemo
//
//  Created by A'zamjon Abdumuxtorov on 04/12/23.
//

import SwiftUI


struct ContentView: View {
   
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    var body: some View {
       
        VStack{
            if self.status{
                HomeView()
            }else{
                SignInView()
            }
        }.onAppear{
            let name = NSNotification.Name("status")
            NotificationCenter.default.addObserver(forName: name, object: nil, queue: .main){ (_) in
                print("Call NotificationCenter ")
                self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
            }
        }
       
    }
    
}


#Preview {
    ContentView()
}
