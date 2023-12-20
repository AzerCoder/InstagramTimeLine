//
//  PresentView.swift
//  MyDemo
//
//  Created by A'zamjon Abdumuxtorov on 07/12/23.
//

import SwiftUI

struct SignUpView: View {
    
    @Environment(\.presentationMode) var presentation
    
    @State var email = ""
    @State var pasword = ""
    @State var fulname = ""
    @State var phone = ""
    
    var body: some View {
        VStack{
            Spacer()
            TextField("Fulname:", text: $fulname)
                .frame(height: 45).padding(.leading,10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            TextField("Email:", text: $email)
                .frame(height: 45).padding(.leading,10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            TextField("Phone:", text: $phone)
                .frame(height: 45).padding(.leading,10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            SecureField("Password:", text: $pasword)
                .frame(height: 45).padding(.leading,10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            Button(action: {
                presentation.wrappedValue.dismiss()
            }, label: {
                Spacer()
                Text("Sign Up").foregroundColor(.white)
                Spacer()
            })
              .frame(height: 45)
              .background(Image("wal5").resizable())
              .cornerRadius(25)
            Spacer()
            HStack{
                Text("Already have an account?")
                    .foregroundColor (Color.blue)
                Button(action: {
                    presentation.wrappedValue.dismiss()
                }, label: {
                    Text("Sign In")
                })
            
                    .font(.system(size: 18))
                    
            }
            
        }.padding()
    }
}

#Preview {
    SignUpView()
}
