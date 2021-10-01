//
//  SwiftUIExample-5.swift
//  swiftUI-exercises
//
//  Created by Kürşat Şimşek on 29.09.2021.
//

import SwiftUI

struct SwiftUIViewExample_5: View {
//    Girilen sayının negatif, pozitif veya sıfır olduğunu ekranda belirt

    @State var number: String = ""
    @State var result: String = ""
    
    var body: some View {
        VStack{
            TextField("Sayı giriniz", text: $number)
                .padding()
                .multilineTextAlignment(.center)
                .border(Color.black,width: 2)
            
            Button("Sayı Sorgula") {
                if let s = Int(number) {
                    if s > 0 {
                        result = "Sayı Pozitif"
                    } else if s < 0 {
                        result = "Sayı Negatif"
                    } else {
                        result = "Sayı \(number)"
                    }
                }
            }.padding()
            
            Text(result).padding().font(.largeTitle)
            
            
        }
    }
}

struct SwiftUIExample_5_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewExample_5()
    }
}
