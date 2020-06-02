//
//  ContentView.swift
//  SwiftUI-CallingPhoneNumber
//
//  Created by Ceren on 2.06.2020.
//  Copyright © 2020 ceren. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var txt_GSM = ""
   
    var body: some View {
        VStack{
            
            TextField("0(5xx)-xxx-xx-xx", text: self.$txt_GSM)
                .background(Color.white)
                .keyboardType(.phonePad)
            
            Button(action: {
                
                guard let number = URL(string: "tel://" + self.txt_GSM) else { return }
                
                UIApplication.shared.open(number)
            }){
                Text("Ara")
                    .bold()
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
