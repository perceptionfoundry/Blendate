//
//  ChatRoomView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 26/05/2021.
//

import SwiftUI

struct ChatRoomView: View {
    
    @State var isSegue = false

    var body: some View {
       
        VStack{
            Text("New Blends")
                .font(.custom("LexendDeca-Regular", size: 28))
                .foregroundColor(Color("Blue_Color"))
            
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack(spacing: 20){
                    
                    ForEach(0 ... 3, id:\.self){ i in
                        
                        ZStack{
                            Circle()
                                .stroke(i % 2 == 0 ? Color(#colorLiteral(red: 0.2444113493, green: 0.3430365324, blue: 0.8086824417, alpha: 1)) : Color.purple,lineWidth: 2)
                                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Image("sample2")
                                .resizable()
                                .frame(width: 70, height: 70, alignment: .center)
                                .clipShape(Circle())

                        }
                        
                    }
                }
                .padding(20)
            }
            .frame(height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(.horizontal)
            
            VStack(spacing:1){
            HStack{
                Text("Messages")
                    .font(.custom("LexendDeca-Regular", size: 28))
                    .foregroundColor(Color("Blue_Color"))
                
                Text("10")
                    
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Circle()
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2444113493, green: 0.3430365324, blue: 0.8086824417, alpha: 1)), Color(#colorLiteral(red: 0.6895270944, green: 0.4312193692, blue: 0.8058347106, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/))
                    
            }
           
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.2444113493, green: 0.3430365324, blue: 0.8086824417, alpha: 1)))
                .frame(width: getRect().width * 0.9, height: 1)
        }
            
            ScrollView{
            VStack{
                
                NavigationLink(
                    destination: ChatView(),
                    isActive: $isSegue,
                    label: {
                        BlendCellView(userName: "Seth mill", userImage: "sample2", message: "Hi There!", isOnline: true, unReadCount: 1, isRead: true)
                            .onTapGesture {
                                isSegue.toggle()
                            }
                    })
           
            
            BlendCellView(userName: "John", userImage: "sample1", message: "GTG ", isOnline: false, unReadCount: 0, isRead: false)
            
            BlendCellView(userName: "JANE ", userImage: "sample1", message: "Take care ", isOnline: false, unReadCount: 0, isRead: true)
        }
            .padding(.horizontal)
            }
           
            Spacer()
        }
        .offset(y: 70)
        .edgesIgnoringSafeArea(.all)
         
    }
}

struct ChatRoomView_Previews: PreviewProvider {
    static var previews: some View {
        ChatRoomView()
    }
}

struct BlendCellView: View {
    
    var userName : String
    var userImage : String
    var message : String
    var isOnline : Bool
    var unReadCount : Int
    var isRead : Bool
    
    var body: some View {
        VStack {
            HStack{
                
                Image(userImage)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .overlay(Circle()
                                .fill(isOnline ? Color.green : Color.clear)
                                .frame(width:10, height: 10)
                                .offset(x: 0, y: 5), alignment: .topTrailing)
                
                VStack(alignment: .leading) {
                    Text(userName)
                        .font(.custom("Montserrat-Semibold", size: 16))
                        .foregroundColor(Color.black)
                    Text(message)
                        .font(.custom("Montserrat-Regular", size: 12))
                        .foregroundColor(Color("Blue_Color"))
                        .opacity(0.5)
                }
                
                Spacer()
                
                if unReadCount > 0{
                    Text("10")
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Circle()
                                        .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2444113493, green: 0.3430365324, blue: 0.8086824417, alpha: 1)), Color(#colorLiteral(red: 0.6895270944, green: 0.4312193692, blue: 0.8058347106, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/))
                }
                else{
                    if isRead{
                        Image("Read")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .scaledToFill()
                    }
                }
               
                
                
            }
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .frame(width: getRect().width * 0.9, height: 0.5)
            
            
        }.padding([.top, .leading, .trailing])
    }
}
