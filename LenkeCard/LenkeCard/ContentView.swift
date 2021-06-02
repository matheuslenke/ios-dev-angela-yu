//
//  ContentView.swift
//  LenkeCard
//
//  Created by Matheus Lenke on 02/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("profile").resizable().aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Matheus Lenke").bold()
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                Text("iOS Developer").foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+55 (27) 9 9940-5527", imageName: "phone.fill")
                InfoView(text: "matheuslenke@icloud.com", imageName: "envelope.fill")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

