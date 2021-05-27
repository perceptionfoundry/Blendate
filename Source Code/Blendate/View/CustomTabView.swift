//
//  CustomTabView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 26/05/2021.
//

import SwiftUI

struct CustomTabView: View {
    
    var tabs = ["Blendate","Chat","Fav","Profile"]
    
    @State var selectedTab = "dashboard"
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            
            
            TabView(selection: $selectedTab){
                DashboardView()
                    .tag("Blendate")
                ChatRoomView()
                    .tag("Chat")
                FavoriteView()
                    .tag("Fav")
                ProfileView()
                    .tag("Profile")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea(.all, edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
            
            
            
            HStack{
                ForEach(tabs, id:\.self){ Value in
                Spacer()
        TabButton(imageName: Value, selectedTab: $selectedTab)
                 Spacer()
                }
            }
//            .padding(.horizontal, 5)
            .padding(.vertical,10)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .clipShape(Capsule())
        }
       
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
