//
//  AgeView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 27/05/2021.
//

import SwiftUI

struct AgeView: View {
    
    @State var isPickerOpen = false
    @State var selectedDate = Date()
    @State var monthValue = "December"
    @State var dateValue = "21"
    @State var yearValue = "2021"
    @State var isSegue = false
    var body: some View {
        
        VStack{
            HStack {
                Button(action: {
                    
                }, label: {
                    Image("Back_Arrow_Blue")
            })
                Spacer()
                
                NavigationLink(
                    destination: ChoiceView(),
                    isActive: $isSegue,
                    label: {
                        Button(action: {
                            isSegue.toggle()
                        }, label: {
                            Text("Next")
                                .font(.custom("Montserrat-Bold", size: 16))
                                .foregroundColor(Color("Blue_Color"))
                          
                        })
                    })

            }.padding(.horizontal)
            .padding(.top)
            
            Text("What is your Birthate?")
                .font(.custom("Montserrat-SemiBold", size: 32))
                .foregroundColor(Color("Blue_Color"))
                .padding(.top, 65)
                .multilineTextAlignment(.center)
                .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                isPickerOpen = true
            }, label: {
                HStack{
                    Spacer()
                           
                        ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(Color.white.opacity(0.8))
                                        .frame(width: 85, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .shadow(radius: 1)
                                    
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(.white)
                                        .frame(width: 100, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .shadow(radius: 2)
                            
                            Text(monthValue)
                                .font(.custom("Montserrat-Regualr", size: 16))
                                .foregroundColor(Color("Blue_Color"))
                                }
                    
                    
                    Spacer()
                    ZStack{
                            
                            RoundedRectangle(cornerRadius: 6)
                                .foregroundColor(Color.white.opacity(0.8))
                                .frame(width: 45, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .shadow(radius: 1)
                            
                            RoundedRectangle(cornerRadius: 6)
                                .foregroundColor(.white)
                                .frame(width: 60, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .shadow(radius: 2)
                        
                        Text(dateValue)
                            .font(.custom("Montserrat-Regualr", size: 16))
                            .foregroundColor(Color("Blue_Color"))
                        }
                    Spacer()
                    
                 ZStack{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.white.opacity(0.8))
                                .frame(width: 65, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .shadow(radius: 1)
                            
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .shadow(radius: 2)
                    
                    Text(yearValue)
                        .font(.custom("Montserrat-Regualr", size: 16))
                        .foregroundColor(Color("Blue_Color"))
                        }
                    Spacer()
                }
                .padding(.horizontal)
            })
            .padding(.top, 40)
           
           
            Spacer()
            if isPickerOpen{
                DatePicker("", selection: $selectedDate,in: ...Date(), displayedComponents: .date)
                    .labelsHidden()
                    
                    .datePickerStyle(WheelDatePickerStyle())
                    .padding()
                    .overlay(Button(action: {
                        
                        
                           let formatter = DateFormatter()
                           formatter.dateFormat = "yyyy-MM-dd HH:mm:ss 'UTC'"
                         

                           formatter.dateFormat = "yyyy"
                           yearValue = formatter.string(from: selectedDate)
                           formatter.dateFormat = "MMMM"
                           monthValue = formatter.string(from: selectedDate)
                           formatter.dateFormat = "dd"
                           dateValue = formatter.string(from: selectedDate)
                        
                        isPickerOpen = false
                    }, label: {
                        Text("Done").bold()
                            .font(.custom("Montserrat-Regualr", size: 24))
                            .foregroundColor(Color("Blue_Color"))
                            
                    }), alignment: .bottom)
                    
                    .background(Rectangle()
                                    .fill(Color.white.opacity(0.9))
                                    .frame(width: UIScreen.main.bounds.width,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .ignoresSafeArea()
                    )
            }
            
        
            
            
          
          
          
        }.background(
            ZStack{
                
                Color("BG_Color")
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                ZStack(alignment:.center){
                
                    
                    Image("Ellipse_Bottom")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .frame(height: UIScreen.main.bounds.height * 0.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    Image("Birthday")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 270, height: 226 , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                    
                }
                
            })
        .onAppear(){
            
            let today = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd HH:mm:ss 'UTC'"
          

            formatter.dateFormat = "yyyy"
            yearValue = formatter.string(from: today)
            formatter.dateFormat = "MMMM"
            monthValue = formatter.string(from: today)
            formatter.dateFormat = "dd"
            dateValue = formatter.string(from: today)
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
                       
    }
}

struct AgeView_Previews: PreviewProvider {
    static var previews: some View {
        AgeView()
    }
}
