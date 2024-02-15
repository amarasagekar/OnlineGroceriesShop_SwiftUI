//
//  MainViewModel.swift
//  OnlineGroceriesShop
//
//  Created by AMAR on 11/02/24.
//

import SwiftUI

class MainViewModel: ObservableObject {
    static var shared: MainViewModel = MainViewModel()
    
    @Published var txtEmail: String = ""
    @Published var txtPassword: String = ""
    @Published var isShowPassword: Bool = false
    
}
