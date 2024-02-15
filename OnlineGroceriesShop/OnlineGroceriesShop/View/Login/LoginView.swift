//
//  LoginView.swift
//  OnlineGroceriesShop
//
//  Created by AMAR on 10/02/24.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var loginVM = MainViewModel.shared;
    
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .padding(.bottom, .screenWidth * 0.1)
                
               
                
                Text("Loging")
                    .font(.customfont(.semibold, fontSize: 26))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 4)
                
                Text("Enter your email and password")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.12)
                
                LineTextField(txt: $loginVM.txtEmail, title: "Email", placeholder: "Enter Your email address", keyBoardType: .emailAddress)
                    .padding(.bottom, .screenWidth * 0.07)
                
                LineSecureField(txt: $loginVM.txtPassword, title: "Password", placeholder: "Enter Your Password", isShowPassword: $loginVM.isShowPassword)
                    .padding(.bottom, .screenWidth * 0.02)
                
                Button{
                    
                }label: {
                    Text("Forgot Password?")
                        .font(.customfont(.semibold, fontSize: 16))
                        .foregroundColor(.primaryText)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom, .screenWidth * 0.03)
                
                RoundButton(title: "Login"){
                    
                }
                .padding(.bottom, .screenWidth * 0.05)
                
                HStack{
                    Text("Don't have an account?")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundColor(.primaryText)
                    
                    Text("Signup")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundColor(.primaryApp)
                }
                   
                Spacer()
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
            
            
            VStack{
                HStack{
                    Button{
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)

        }
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    LoginView()
}
