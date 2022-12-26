//
//  ContentView.swift
//  RogerCard
//
//  Created by Roger Espinoza on 12/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()rgb(44, 62, 80)
        
        ZStack{
            Color(red: 0.17, green: 0.24, blue: 0.31, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("rick")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 200)
                    .clipShape(Circle())
                    .overlay( Circle().stroke(Color(red: 0.20, green: 0.29, blue: 0.37), lineWidth: 5))
                
                Text("Roger Espinoza")
                    .font(Font.custom("Noto-Sans-Regular", size: 40 ))
                    .bold()
                    .foregroundColor(.white)
                                    
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                InfoView(text: "+44 123 456 789", imageName: "phone.fill")
                InfoView(text: "rogerespinoza@mail.com", imageName: "envelope.fill")
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
