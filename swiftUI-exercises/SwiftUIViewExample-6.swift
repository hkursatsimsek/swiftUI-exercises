//
//  SwiftUIExample-6.swift
//  swiftUI-exercises
//
//  Created by Kürşat Şimşek on 29.09.2021.
//

import SwiftUI

struct SwiftUIViewExample_6: View {
//    İki ürünün fiyatı girildiğinde toplam fiyat 200 TL’den fazla ise, 2.üründen %25 indirim yaparak ödenecek tutarı göster

    @State var prodcutPrice1 : Float?
    @State var productPrice2 : Float?
    @State var total: Float = 0
    @State var result: String = "asd"
    
    let formatter: NumberFormatter = {
       let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
       return formatter
    }()
    
    var body: some View {
        VStack{
            TextField("Product-1 Price", value: $prodcutPrice1, formatter: formatter)
                .padding()
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
            
            TextField("Product-2 Price", value: $productPrice2, formatter: formatter)
                .padding()
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)

            Button("Checkout") {
                if let p1 = prodcutPrice1, let p2 = productPrice2 {
                    total = p1 + p2
                    if total > 200 {
                        result = String(p1 + ((3*p2)/4))
                    } else {
                        result = String(total)
                    }
                }
            }.padding()
            
            Text(result).padding().foregroundColor(.red)
            

        }
    }
}

struct SwiftUIExample_6_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewExample_6()
    }
}
