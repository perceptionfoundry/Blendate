//
//  TabButton.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 26/05/2021.
//

import SwiftUI

struct TabButton: View {
    
 
    
    var imageName : String
    @Binding var selectedTab : String
    
    var body: some View {
       
    
        Button(action: {
            selectedTab = imageName
        }, label: {
            ZStack {
                Image(imageName )
                    .padding()
                
                Capsule()
                    .foregroundColor(Color(UIColor(red: 0.757, green: 0.334, blue: 0.863, alpha: 1)))
                    .frame(width: 90, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .opacity(selectedTab == imageName ? 0.1 : 0)
            }
                
        
        })
    }
}

struct TabButton_Previews: PreviewProvider {
    
    static var previews: some View {
        TabButton(imageName: "Chat", selectedTab: .constant("fav"))
            .previewLayout(.sizeThatFits)
    }
}
