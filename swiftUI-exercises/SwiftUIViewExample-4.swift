//
//  SwiftUIExample-4.swift
//  swiftUI-exercises
//
//  Created by Kürşat Şimşek on 29.09.2021.
//

import SwiftUI

struct SwiftUIViewExample_4: View {
//    Ekrandan 2 adet not bilgisi girildikten sonra, ortalama 50 ve üzerinde ise ekrana “Geçti” değilse “Kaldı” yazdır

    @State var not1 : String = ""
    @State var not2 : String = ""
    @State var sonuc : String = ""
    
    
    var body: some View {
        VStack{
            TextField("Not-1", text: $not1)
                .padding()
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Not-2", text: $not2)
                .padding()
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Not Durum Hesapla") {
                if let n1 = Int(not1) , let n2 = Int(not2) {
                    if (n1 >= 0 && n1 <= 100) && (n2 >= 0 && n2 <= 100) {
                        if (n1+n2)/2 >= 50 {
                            sonuc = "GEÇTİNİZ."
                        } else {
                            sonuc = "KALDINIZ.!"
                        }
                    } else {
                        sonuc = "Düzgün Sayılar Giriniz!!"
                    }
                }
                
            }.padding()
            
            Text(sonuc).padding().font(.largeTitle)
            
        }
    }
}

struct SwiftUIExample_4_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewExample_4()
    }
}
