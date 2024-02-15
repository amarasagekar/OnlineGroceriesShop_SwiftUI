//
//  LineTextField.swift
//  OnlineGroceriesShop
//
//  Created by AMAR on 15/02/24.
//

import SwiftUI

struct LineTextField: View {
    @Binding var txt: String
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    @State var keyBoardType: UIKeyboardType = .default
    @State var isPassword: Bool = false
    
    var body: some View {
        VStack{
            Text(title)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            
            TextField(placeholder, text:$txt)
                    .keyboardType(keyBoardType)
                    .disableAutocorrection(true)
                    .frame(height: 40)
            
            
            Divider()
                
        }
    }
}

struct LineSecureField: View {
    @Binding var txt: String
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    
    @Binding var isShowPassword: Bool
    
    var body: some View {
        VStack{
            Text(title)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            if(isShowPassword){
                TextField(placeholder, text:$txt)
                    .disableAutocorrection(true)
                    .modifier(ShowButton(isShow: $isShowPassword))
                    .frame(height: 40)
            }else{
                SecureField(placeholder, text: $txt)
                    .modifier(ShowButton(isShow: $isShowPassword))
                    .frame(height: 40)
            }
            
            Divider()
                
        }
    }
}

//#Preview {
//    @State var txt: String = ""
//    LineTextField(txt: "")
//       
//}
