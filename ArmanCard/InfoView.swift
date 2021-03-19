//
//  InfoView.swift
//  ArmanCard
//
//  Created by Arman Myrzakanurov on 19.03.2021.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        Capsule()
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: self.imageName)
                        .foregroundColor(.green)
                    Text(self.text)
                }
            )
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
