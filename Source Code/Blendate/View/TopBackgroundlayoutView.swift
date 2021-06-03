//
//  TopBackgroundlayoutView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 03/06/2021.
//

import SwiftUI

struct TopBackgroundlayoutView: View {
    var imageTitle : String
    var body: some View {
        ZStack{
            
            Color("BG_Color")
                .ignoresSafeArea()
            VStack{
                
                ZStack(alignment:.center){
                    
                    
                    Image("Ellipse_Top")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .frame(height: UIScreen.main.bounds.height * 0.45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Image(imageTitle)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 270, height: 226 , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                Spacer()
            }
            
        }
    }
}

struct TopBackgroundlayoutView_Previews: PreviewProvider {
    static var previews: some View {
        TopBackgroundlayoutView(imageTitle: "Birthday")
    }
}
