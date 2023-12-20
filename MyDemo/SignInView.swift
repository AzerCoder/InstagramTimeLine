//
//  PushingView.swift
//  MyDemo
//
//  Created by A'zamjon Abdumuxtorov on 07/12/23.
//

import SwiftUI

struct SignInView: View {
   
    @State var isModal = false
    @State var email = ""
    @State var pasword = ""
    var body: some View {
        VStack{
            Spacer()
            Image("img2").resizable()
                .frame(width: 100,height: 100)
                .cornerRadius(50)
            TextField("Email:", text: $email)
                .frame(height: 45).padding(.leading,10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            SecureField("Password:", text: $pasword)
                .frame(height: 45).padding(.leading,10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            Button(action: {
                
                UserDefaults.standard.set(true,forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                
            }, label: {
                Spacer()
                Text("Sign In").foregroundColor(.white)
                Spacer()
            })
              .frame(height: 45)
              .background(Image("wal2").resizable())
              .cornerRadius(25)
            Spacer()
            HStack{
                Text("Don't have an account?")
                    .foregroundColor (Color.blue)
                Button("Sign In"){
                    isModal = true
                }.sheet(isPresented: $isModal, content: {
                    SignUpView()
                })  .font(.system(size: 18))
                    
            }
            
        }.padding()
       
    }
}

#Preview {
    SignInView()
}
