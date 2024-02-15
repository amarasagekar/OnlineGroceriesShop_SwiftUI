//
//  MainViewModel.swift
//  OnlineGroceriesShop
//
//  Created by AMAR on 11/02/24.
//

import SwiftUI

struct MainViewModel: ObservableObject {
    static var shared: MainViewModel = MainViewModel()
    
    @Published var txtEmail: String = ""
    @Published var txtPassword: String = ""
    
}
