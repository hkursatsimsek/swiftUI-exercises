//
//  SwiftUIViewExample-3.swift
//  swiftUI-exercises
//
//  Created by Kürşat Şimşek on 29.09.2021.
//

import SwiftUI

struct SwiftUIViewExample_3: View {
//    Ekrandan girilen sayı 100 den büyükse ekrana “PAHALI ” yazdır

    @State var price: String = ""
    @State var result: String = ""
    
    var body: some View {
        VStack{
            TextField("Fiyat", text: $price)
                .padding()
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("HESAPLA") {
                if (price as NSString).intValue > 100 {
                    result = "PAHALI"
                } else if (price as NSString).intValue < 0 {
                    result = "Pozitif tam sayı giriniz.!"
                } else if Int(price) == 100 {
                    result = "Girilen Sayı 100"
                } else {
                    result = "Sayi : \(price)"
                }
            }.padding()
            
            Text(result)
                .padding()
                .font(.largeTitle)
                .foregroundColor(.red)
            
        }
    }
}

struct SwiftUIViewExample_3_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewExample_3()
    }
}
