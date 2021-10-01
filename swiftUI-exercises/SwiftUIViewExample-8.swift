//
//  SwiftUIExercises-8.swift
//  swiftUI-exercises
//
//  Created by Kürşat Şimşek on 30.09.2021.
//

import SwiftUI

struct SwiftUIViewExample_8: View {
//    Girilen 3 sayının hepsi 0’dan büyük ve çift ise “Başarılı Giriş”, aksi halde “Başarısız giriş” mesajı veren program
    
    @State var number1: String = ""
    @State var number2: String = ""
    @State var number3: String = ""
    @State var result: String = ""
    
    var body: some View {
        VStack{
            TextField("number1", text: $number1)
                .padding()
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("number2", text: $number2)
                .padding()
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("number3", text: $number3)
                .padding()
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Calculate") {
                if let n1 = Int(number1), let n2 = Int(number2), let n3 = Int(number3) {
                    if (n1 > 0 && (n1 % 2) == 0) && ((n2 > 0 && (n2 % 2) == 0)) && (n3 > 0 && (n3 % 2) == 0) {
                        result = "Başarılı Giriş"
                    } else {
                        result = "Başarısız Giriş"
                    }
                }
            }.padding()
            
            Text(result).padding().font(.largeTitle)
        }
    }
}

struct SwiftUIExercises_8_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewExample_8()
    }
}
