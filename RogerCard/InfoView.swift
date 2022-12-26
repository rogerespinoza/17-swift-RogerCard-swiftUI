//
//  InfoView.swift
//  RogerCard
//
//  Created by Roger Espinoza on 25/12/22.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
        
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                Text(text)
            })
            .padding(.all)
            .foregroundColor(.black)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "text example", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
        
    }
}
