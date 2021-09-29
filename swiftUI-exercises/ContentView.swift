//
//  ContentView.swift
//  swiftUI-exercises
//
//  Created by Kürşat Şimşek on 28.09.2021.
//

import SwiftUI

struct ContentView: View {
// Ekrandan girilen sayıyı 1.18 le çarpıp ekrana yaz

    @State var result: Float = 0
    @State var number: String = ""
    
    var body: some View {
        VStack{
            TextField("Sayı Giriniz", text:$number)
                .padding()
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .border(Color.gray, width: 2)
                .keyboardType(.numberPad)
            
            Button("1.18 Katını Hesapla") {
                result = (number as NSString).floatValue * 1.18
            }.padding()
            .border(Color.blue, width: 2)
            .cornerRadius(5)
            
            Text(String(result))
                .padding()
                .foregroundColor(.red)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
