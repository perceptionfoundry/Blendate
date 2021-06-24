//
//  InterestView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 22/06/2021.
//

import SwiftUI

struct InterestView: View {
    
    
    @State var isSegue = false
    @State var isCommunity = false
    @State var isDating = true
    @State var isBoth = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack{
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("Back_Arrow")
            })
                Spacer()
                
               
                        Button(action: {
                           
                        }, label: {
                            Text("")
                                .font(.custom("Montserrat-Bold", size: 16))
                                .foregroundColor(Color("Blue_Color"))
                          
                        })
                    

            }.padding(.horizontal)
            
            
            VStack {
                Text("Interested")
                    .font(.custom("Montserrat-SemiBold", size: 24))
                    .foregroundColor(Color.white)
                    .padding(.bottom, 3)
                Text("Select your interests for better blending")
                    .font(.custom("Montserrat-Regular", size: 16))
                    .foregroundColor(Color.white)
                    .opacity(0.7)
                    .frame(width: getRect().width * 0.6)
                  
            }
            .multilineTextAlignment(.center)
            .frame(width: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(.bottom)
          
            VStack{
            //Traval && Child Care
            HStack{
            InterestRightView(title: "Travel", description: "Kid Friendly Hotels, Travel Advice, Travel Accessories For Kids", isSelected: true)
            
            InterestLeftView(title: "Child Care", description: "Babysitters, Childhood Education, After-School Programs", isSelected: false)
        }
         
            
            HStack{
            InterestRightView(title: "Entertainment", description: "Movies, Music, Gaming, Podcasts, Celebrities", isSelected: true)
            
            InterestLeftView(title: "Food", description: "Picky Eaters, Healthy Recipes, Veganism, Vegetarianism", isSelected: false)
        }
            
            HStack{
            InterestRightView(title: "Entrepreneurship", description: "Stocks, Small Businesses, Advice, Hustlers", isSelected: true)
            
            InterestLeftView(title: "International Affair", description: "Economics, Current Events, Climate, Social Issues", isSelected: true)
        }
            
            HStack{
            InterestRightView(title: "Art", description: "Theater, Interior Design, Craft Art, Dance, Fashion", isSelected: true)
            
            InterestLeftView(title: "Sports", description: "Baseball, Soccer, Basketball, Football, Tennis, MMA", isSelected: true)
        }
            
            HStack{
            InterestRightView(title: "Identity", description: "Special Needs, Gender Identity, Puberty, Birds & Bees", isSelected: true)
        }
        }
            
            
            NavigationLink(
                destination: TabMainView(),
                isActive: $isSegue,
                label: {
                    Button(action: {
                        isSegue.toggle()
                    }, label: {
                        Text("Start Blending")
                            .foregroundColor(.white)
                    })
                    .frame(width: getRect().width * 0.45, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Capsule()
                                    .fill(Color(#colorLiteral(red: 0.3446457386, green: 0.3975973725, blue: 0.9629618526, alpha: 1)))
                                    .shadow(color: Color(#colorLiteral(red: 0.3446457386, green: 0.3975973725, blue: 0.9629618526, alpha: 0.2406952713)), radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5))

                    .padding()
                })
           
            Spacer()
          
        }.background(
            TopBackgroundlayoutView(imageTitle: "")
            
        )
       
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
                       
    }
}

struct InterestView_Previews: PreviewProvider {
    static var previews: some View {
        InterestView()
    }
}

struct InterestRightView: View {
    
    var title: String
    var description:String
    var isSelected : Bool
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(Color.white)
                .frame(width: getRect().width * 0.45, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
            VStack{
                Text(title)
                    .font(.custom("Montserrat-Bold", size: 16))
                    .foregroundColor(Color("Blue_Color"))
                
                Text(description)
                    .font(.custom("Montserrat-Regular", size: 12))
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(Color.gray)
                
            }
            .frame(width: getRect().width * 0.425, height: 85, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .overlay(Image(isSelected ? "PlusCircle" : "MinusCircle")
                    .offset(x: -15, y: 25), alignment: .topLeading)
    }
}


struct InterestLeftView: View {
    
    var title: String
    var description:String
    var isSelected : Bool
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(Color.white)
                .frame(width: getRect().width * 0.45, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
            VStack{
                Text(title)
                    .font(.custom("Montserrat-Bold", size: 16))
                    .foregroundColor(Color("Blue_Color"))
                
                Text(description)
                    .font(.custom("Montserrat-Regular", size: 12))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.gray)
                
            }
            .frame(width: getRect().width * 0.425, height: 85, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .overlay(Image(isSelected ? "PlusCircle" : "MinusCircle")
                    .offset(x: 15, y: 25), alignment: .topTrailing)
    }
}
