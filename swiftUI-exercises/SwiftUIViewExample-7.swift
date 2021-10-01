//
//  SwiftUIExercises-7.swift
//  swiftUI-exercises
//
//  Created by Kürşat Şimşek on 30.09.2021.
//

import SwiftUI

struct SwiftUIViewExample_7: View {
//    Girilen 3 sayıdan en az biri 50’den büyükse “Yeterli”, aksi halde “Yetersiz” mesajı ver

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
            
            Button("Click Me!") {
                if let n1 = Int(number1), let n2 = Int(number2), let n3 = Int(number3) {
                    if (n1 > 50 || n2 > 50 || n3 > 50) {
                        result = "Yeterli"
                    } else {
                        result = "Yetersiz"
                    }
                }
            }.padding()
            
            Text(result).padding()
            
        }
    }
}

struct SwiftUIExercises_7_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewExample_7()
    }
}
