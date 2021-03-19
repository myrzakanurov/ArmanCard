//
//  ContentView.swift
//  ArmanCard
//
//  Created by Arman Myrzakanurov on 19.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(UIColor(red: 0.09, green: 0.63, blue: 0.52, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("arman")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Myrzakanurov Arman")
                    .font(Font.custom("Pacifico-Regular", size: 32))
                    .bold()
                    .foregroundColor(.white)
                Text("IOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+7 702 204 7777", imageName: "phone.fill")
                InfoView(text: "myrzakanurov.a@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
