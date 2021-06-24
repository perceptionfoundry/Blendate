//
//  ChatView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 24/06/2021.
//

import SwiftUI

struct ChatView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    
    let dummyMsg = [msgData(id: 0,image:"avatar1",user: "jetson", msg: "Hi there!", myMsg: false),
                    msgData(id: 1,image:"avatar2",user: "me", msg: "How are you?", myMsg: true),
                    msgData(id: 2,image:"avatar1",user: "jetson", msg: "New Album is Going to be Release", myMsg: false),
                    msgData(id: 3,image:"avatar2",user: "me", msg: "Have you added to any online store?? Have you added to any online store?? Have you added to any online store?? Have you added to any online store??", myMsg: true)]
    
    
    var body: some View {
       
        VStack{
            //...  TOP AREA

            HStack {
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("Back_Arrow_Blue")
            })
                .padding(.trailing)
                
                ZStack{
                    Circle()
                        .stroke(Color(#colorLiteral(red: 0.2444113493, green: 0.3430365324, blue: 0.8086824417, alpha: 1)),lineWidth: 2)
                        .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Image("sample2")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipShape(Circle())

                }
                
                VStack(alignment: .leading) {
                    Text("Seth Mill")
                        .font(.custom("Montserrat-Bold", size: 18))
                        .foregroundColor(Color("Blue_Color"))
                    Text("Last active at 10:45 PM")
                        .font(.custom("Montserrat-Regular", size: 12))
                        .foregroundColor(Color("Blue_Color"))
                        .opacity(0.5)
                }
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    VStack(spacing: 2) {
                        Circle()
                            .frame(width: 5, height: 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Circle()
                            .frame(width: 5, height: 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                      
                    }
                })
            }
            .padding(.horizontal)
            
            
            //... MAIN AREA
//            VStack(){
            ScrollView{
                
                Text("You matched with Kristin!")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2444113493, green: 0.3430365324, blue: 0.8086824417, alpha: 1)), Color(#colorLiteral(red: 0.6895270944, green: 0.4312193692, blue: 0.8058347106, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .clipShape(Capsule())
                    .offset(y:20)
                    .padding(.bottom, 50)
                
                
                ForEach(0...3, id:\.self){ i in
                    
                    
                    ChatCellView(data: dummyMsg[i])
                    
                }
                
            }
            .background(RoundedRectangle(cornerRadius: 25.0)
                                        .fill(Color.white)
                                        .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 10, y: -8))
            .offset(y:10)
//                        .frame(height: getRect().height * 0.75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
           
                
            Spacer()
               
            
            //.... BOTTOM AREA
              
                    ZStack {
                        Rectangle()
                            .fill(Color.white)
                            
                            .frame(width: getRect().width , height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        HStack {
                            HStack{
                                    
                                    Image("attachment")
                                    
                                    TextField("Type your message", text: .constant(""))
                                    
                                    
                                    Button(action: {
                                        
                                    }, label: {
                                        Image("happy")
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                    })
                                    
                                }.padding()
                                .background(Capsule().fill(Color(#colorLiteral(red: 0.9490118623, green: 0.9489287734, blue: 0.9575280547, alpha: 1))))
                            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Image("Mic")
                                .resizable()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        .padding(.horizontal)
                    }
            
            
            .ignoresSafeArea(/*@START_MENU_TOKEN@*/.keyboard/*@END_MENU_TOKEN@*/, edges: .bottom)
            
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
//        .overlay(
//
//            ZStack {
//                Rectangle()
//                    .fill(Color.white)
//
//                    .frame(width: getRect().width , height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                HStack {
//                    HStack{
//
//                            Image("attachment")
//
//                            TextField("Type your message", text: .constant(""))
//
//
//                            Button(action: {
//
//                            }, label: {
//                                Image("happy")
//                                    .resizable()
//                                    .frame(width: 20, height: 20)
//                            })
//
//                        }.padding()
//                        .background(Capsule().fill(Color(#colorLiteral(red: 0.9490118623, green: 0.9489287734, blue: 0.9575280547, alpha: 1))))
//                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//                    Image("Mic")
//                        .resizable()
//                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                }
//                .padding(.horizontal)
//            }
//
//            , alignment: .bottom)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}



struct msgTail : Shape{
    var myMsg : Bool
    
    func path(in rect: CGRect) -> Path{
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight,!myMsg ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 25, height: 25))
        
      
       
        return Path(path.cgPath)
    }
}

struct ChatCellView: View {
    
    var data : msgData
    
    
    var body: some View {
        
        //SENDER
        if data.myMsg {
            HStack {
                VStack(alignment:.leading) {
                    
                    HStack(alignment:.bottom) {
                      
                        VStack(alignment:.leading) {
                          
                            
                            Text(data.msg)
                                .font(.subheadline)
                                .foregroundColor( Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        }
                        .padding()
                        
                        .background(msgTail(myMsg: data.myMsg).stroke(Color("Blue_Color"), lineWidth: 2))
                        
                    }
                    Text("12:00 PM")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                }
                Spacer()
            }
            .padding(.trailing, 35)
            .padding()
        }
        //Receiver
        else{
            HStack {
                Spacer()
                VStack(alignment:.trailing) {
                    
                    HStack(alignment:.bottom) {
                        
                        
                        VStack(alignment:.leading) {
                         
                            Text(data.msg)
                                .font(.subheadline)
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        }
                        .padding()
                        .background(msgTail(myMsg: data.myMsg).stroke(Color.purple, lineWidth: 2))
//
                       
                        
                    }
                    HStack{
                        Image("Read")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .scaledToFill()
                        Text("12:00 PM")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                }
                
            }
            .padding(.leading, 35)
            .padding()
        }
    }
}


// MODEL:

struct msgData {
    var id : Int
    var image:String
    var user : String
    var msg : String
    var myMsg : Bool
}


extension Shape {
    func fill<Fill: ShapeStyle, Stroke: ShapeStyle>(_ fillStyle: Fill, strokeBorder strokeStyle: Stroke, lineWidth: CGFloat = 1) -> some View {
        self
            .stroke(strokeStyle, lineWidth: lineWidth)
            .background(self.fill(fillStyle))
    }
}

extension InsettableShape {
    func fill<Fill: ShapeStyle, Stroke: ShapeStyle>(_ fillStyle: Fill, strokeBorder strokeStyle: Stroke, lineWidth: CGFloat = 1) -> some View {
        self
            .strokeBorder(strokeStyle, lineWidth: lineWidth)
            .background(self.fill(fillStyle))
    }
}
