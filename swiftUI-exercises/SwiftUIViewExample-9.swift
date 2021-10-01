//
//  SwiftUIExercises-9.swift
//  swiftUI-exercises
//
//  Created by Kürşat Şimşek on 30.09.2021.
//

import SwiftUI

struct SwiftUIViewExample_9: View {
//    Girilen iki sayıyı karşılaştıran ve büyük, küçük ya da eşit olma durumunu gösteren program. Örneğin “2. Girdiğiniz sayı 1. den büyük” gibi
    
    @State var number1: String = ""
    @State var number2: String = ""
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
            
            Button("Compare") {
                if let n1 = Int(number1), let n2 = Int(number2) {
                    if n1 > n2 {
                        result = "ilk sayı ikinci sayıdan büyük"
                    } else if n1 == n2 {
                        result = "Sayılar eşit"
                    } else {
                        result = "İkinci sayı birinci sayıdan büyük"
                    }
                }
            }.padding().border(Color.blue, width: 2).cornerRadius(14.0)
            
            Text(result).padding().font(.largeTitle).multilineTextAlignment(.center)
            
        }
    }
}

struct SwiftUIExercises_9_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewExample_9()
    }
}
