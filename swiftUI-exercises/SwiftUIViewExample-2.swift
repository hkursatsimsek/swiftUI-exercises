//
//  SwiftUIViewExample-2.swift
//  swiftUI-exercises
//
//  Created by Kürşat Şimşek on 29.09.2021.
//

import SwiftUI

struct SwiftUIViewExample_2: View {
//    Ekrandan girilen iki sayıyı toplayıp ekrana yaz
    @State var number1: String = ""
    @State var number2: String = ""
    @State var result: Int = 0
    
    var body: some View {
        VStack{
            TextField("Sayı1", text: $number1)
                .padding()
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
            TextField("Sayı2", text: $number2)
                .padding()
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
            Button(action: {
                result = Int(((number1 as NSString).intValue) + ((number2 as NSString).intValue))
            }, label: {
                Text("Sayıları Topla")
            }).padding()
            .border(Color.gray, width: 2)
            .cornerRadius(10)
            .shadow(radius: 4)
            Text(String(result))
                .padding()
                .font(.largeTitle)
        }
    }
}

struct SwiftUIViewExample_2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewExample_2()
    }
}
