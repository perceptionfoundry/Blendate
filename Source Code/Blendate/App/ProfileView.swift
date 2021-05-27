//
//  ContentView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 25/05/2021.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        ScrollView{
            VStack(alignment:.leading) {
                
                VStack {
                    Image("cp")
                        .resizable()
                        .scaledToFill()
                        .frame(height: UIScreen.main.bounds.height * 0.3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .zIndex(0)
                }.overlay(
                ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(UIColor(red: 0.345, green: 0.396, blue: 0.965, alpha: 0.6)))
                    .frame(height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
                    
                    Image("dp")
                        .resizable()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 92, height: 92, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(x: 0, y: -90.0)
                    
                    
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "pencil.circle.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        .padding(.horizontal, 30)
                        
                        Text("Ronald Richards, 39")
                            .font(.custom("LexendDeca-Regular.", size: 18))
                            .foregroundColor(.white)
                            .bold()
                        Text("New York, USA")
                            .font(.custom("LexendDeca-Regular.", size: 14))
                            .foregroundColor(.gray)
                        
                        HStack {
                            Spacer()
                            ProfileButtonView(title: "Help Center", icon: "Info", actionFunc: {
                                print("**** HElP ****")
                            })
                            .padding()
                            
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 1, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Spacer()
                                
                            ProfileButtonView(title: "Setting", icon: "Settings", actionFunc: {
                                print("**** SETTING ****")
                            }).padding()

                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 1, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Spacer()
                            ProfileButtonView(title: "Preference", icon: "Filter", actionFunc: {
                                print("**** PREFERENCE ****")
                            })
                            Spacer()
                        }
                        .padding(.horizontal, 30)
                        .padding(.bottom)
                    }
                    .padding(.top, 30)
                    
                        
                    
                
                }
                .offset(x: 0, y: 120)
                    , alignment: .bottom)
                VStack(alignment:.leading){
                Text("About Jane")
                    .font(.custom("LexendDeca-Regular.", size: 18))
                    .padding(.top, 90)
                    
                Text("Here is where you'll have your about me section")
                    .font(.custom("LexendDeca-Regular.", size: 16))
                    .foregroundColor(.accentColor)
                    .frame(width:300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
                .padding()
            
                ScrollView(.horizontal, showsIndicators: false, content: {
                    VStack{
                        HStack(alignment:.top){
                        
                        //MARKS: Personal
                    VStack(alignment:.leading){
                        HStack {
                            Text("Personal")
                                .font(.custom("LexendDeca-Regular.", size: 15))
                            Image("Emoticon")
                        }
                        Text("Married")
                            .foregroundColor(.accentColor)
                            .font(.custom("LexendDeca-Regular.", size: 14))
                        Text("Relationship Status")
                            .foregroundColor(.gray)
                            .font(.custom("LexendDeca-Regular.", size: 12))
                            .padding(.bottom)
                        
                        Text("Accountants")
                            .foregroundColor(.accentColor)
                            .font(.custom("LexendDeca-Regular.", size: 14))
                        Text("Job Title")
                            .foregroundColor(.gray)
                            .font(.custom("LexendDeca-Regular.", size: 12))
                            .padding(.bottom)
                        
                        Text("Brauch College")
                            .foregroundColor(.accentColor)
                            .font(.custom("LexendDeca-Regular.", size: 14))
                        Text("Education")
                            .foregroundColor(.gray)
                            .font(.custom("LexendDeca-Regular.", size: 12))
                            .padding(.bottom)
                        
                    }.padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: .gray, radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4))
                        
                        //MARKS: Children
                    VStack(alignment:.leading){
                        HStack {
                            Text("Children")
                                .font(.custom("LexendDeca-Regular.", size: 15))
                            Image("Child")
                        }
                        Text("Has Children")
                            .foregroundColor(.accentColor)
                            .font(.custom("LexendDeca-Regular.", size: 14))
                        Text("Parental Status")
                            .foregroundColor(.gray)
                            .font(.custom("LexendDeca-Regular.", size: 12))
                            .padding(.bottom)
                        
                        Text("3")
                            .foregroundColor(.accentColor)
                            .font(.custom("LexendDeca-Regular.", size: 14))
                        Text("# of Children")
                            .foregroundColor(.gray)
                            .font(.custom("LexendDeca-Regular.", size: 12))
                            .padding(.bottom)
                        
                        Text("5-10")
                            .foregroundColor(.accentColor)
                            .font(.custom("LexendDeca-Regular.", size: 14))
                        Text("Children's Age Range")
                            .foregroundColor(.gray)
                            .font(.custom("LexendDeca-Regular.", size: 12))
                            .padding(.bottom)
                        
                        Text("Open to all")
                            .foregroundColor(.accentColor)
                            .font(.custom("LexendDeca-Regular.", size: 14))
                        Text("Wants more Children")
                            .foregroundColor(.gray)
                            .font(.custom("LexendDeca-Regular.", size: 12))
                            
                        
                    }.padding()
                    .frame(width: 160, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: .gray, radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4))
                        
                        //MARKS:  Background
                    VStack(alignment:.leading){
                        HStack {
                            Text("Background")
                                .font(.custom("LexendDeca-Regular.", size: 15))
                            Image(systemName: "house")
                                .foregroundColor(.accentColor)
                        }
                        Text("Christian")
                            .foregroundColor(.accentColor)
                            .font(.custom("LexendDeca-Regular.", size: 14))
                        Text("Religion")
                            .foregroundColor(.gray)
                            .font(.custom("LexendDeca-Regular.", size: 12))
                            .padding(.bottom)
                        
                        Text("Conservation")
                            .foregroundColor(.accentColor)
                            .font(.custom("LexendDeca-Regular.", size: 14))
                        Text("Political View")
                            .foregroundColor(.gray)
                            .font(.custom("LexendDeca-Regular.", size: 12))
                            .padding(.bottom)
                        
                        Text("White")
                            .foregroundColor(.accentColor)
                            .font(.custom("LexendDeca-Regular.", size: 14))
                        Text("Ethnicity")
                            .foregroundColor(.gray)
                            .font(.custom("LexendDeca-Regular.", size: 12))
                            .padding(.bottom)
                       
                        
                    }.padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: .gray, radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4))
                            
                            //MARKS:  Lifestyle
                        VStack(alignment:.leading){
                            HStack {
                                Text("Lifestyle")
                                    .font(.custom("LexendDeca-Regular.", size: 15))
                                Image(systemName: "aqi.medium")
                                    .foregroundColor(.accentColor)
                            }.padding(.horizontal)
                            Text("Open to all")
                                .foregroundColor(.accentColor)
                                .font(.custom("LexendDeca-Regular.", size: 14))
                            Text("Mobility")
                                .foregroundColor(.gray)
                                .font(.custom("LexendDeca-Regular.", size: 12))
                                .padding(.bottom)
                            
                            Text("Vices")
                                .foregroundColor(.accentColor)
                                .font(.custom("LexendDeca-Regular.", size: 14))
                            Text("Coffee Drinker, Drinks, Alcohol, Late night, snacker, and Sleeping")
                                .foregroundColor(.gray)
                                .lineLimit(6)
                                .multilineTextAlignment(.leading)
                                .font(.custom("LexendDeca-Regular.", size: 12))
                                .padding(.bottom)
                            Spacer()
                        }.padding()
                        .frame(width: 160, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white)
                                        .shadow(color: .gray, radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4))
                    
                    }.padding(.horizontal)
                        Spacer()
                    }
                })
                .padding(.vertical,30)
                
                ScrollView(.horizontal, showsIndicators: true, content: {
                    
                    VStack{
                        
                        HStack{
                            
                            
                    ImageCollectionView()
                        ImageCollectionView_2()
                            ImageCollectionView()
                        }
                    }
                    
                })
                .padding()

                
                
                VStack(alignment:.leading){
                    Text("Interests")
                        .font(.custom("LexendDeca-Regular.", size: 18))
                HStack{
                    
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                            .fill(Color.white)
                                            .frame(width: UIScreen.main.bounds.width * 0.45, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .shadow(color: .gray, radius: 2, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
                            VStack{
                            Text("Travel")
                                .font(.custom("LexendDeca-Regular.", size: 16))
                                .foregroundColor(.accentColor)
                                .padding(.top)
                            Text("Kid Friendly Hotels, Travel Advice, Travel Accessories For Kids")
                                .font(.custom("LexendDeca-Regular.", size: 10))
                                .foregroundColor(.gray)
                                .frame(width: 160, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        }
                      
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                                        .fill(Color.white)
                                        .frame(width: UIScreen.main.bounds.width * 0.45, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .shadow(color: .gray, radius: 2, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
                        VStack{
                        Text("Art")
                            .font(.custom("LexendDeca-Regular.", size: 16))
                            .foregroundColor(.accentColor)
                        Text("Theater, Interior Design, Craft Art, Dance, Fashion")
                            .font(.custom("LexendDeca-Regular.", size: 10))
                            .foregroundColor(.gray)
                            .frame(width: 140, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    }
                  
                }
                    
                    HStack{
                        
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                                .fill(Color.white)
                                                .frame(width: UIScreen.main.bounds.width * 0.45, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .shadow(color: .gray, radius: 2, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
                                VStack{
                                Text("Entertainment")
                                    .font(.custom("LexendDeca-Regular.", size: 16))
                                    .foregroundColor(.accentColor)
                                Text("Movies, Music, Gaming, Podcasts, Celebrities")
                                    .font(.custom("LexendDeca-Regular.", size: 10))
                                    .foregroundColor(.gray)
                                    .frame(width: 140, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            }
                          
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                            .fill(Color.white)
                                            .frame(width: UIScreen.main.bounds.width * 0.45, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .shadow(color: .gray, radius: 2, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
                            VStack{
                            Text("Food")
                                .font(.custom("LexendDeca-Regular.", size: 16))
                                .foregroundColor(.accentColor)
                            Text("Picky Eaters, Healthy Recipes, Veganism, Vegetarianism ")
                                .font(.custom("LexendDeca-Regular.", size: 10))
                                .foregroundColor(.gray)
                                .frame(width: 140, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        }
                      
                    }
            }
                .padding(.horizontal)
               
                Rectangle()
                    .fill(Color.white)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.top)
        
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewDevice("iPhone 8")
        
        ProfileView()
            .previewDevice("iPhone 11")
    }
}



struct ProfileButtonView: View {
    var title : String
    var icon : String
    var actionFunc : () -> Void
    
    var body: some View {
        Button(action: actionFunc, label: {
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                    .font(.custom("LexendDeca-Regular.", size: 14))
                
                Image(icon)
            }
        })
    }
}

struct ImageCollectionView: View {
    var body: some View {
        VStack{
            
            ZStack{
                Image("sample1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 162, height: 213, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                Text("#myLove")
                    .font(.custom("LexendDeca-Regular.", size: 10))
                    .foregroundColor(.white)
                    .padding(.vertical, 5)
                    .padding(.horizontal)
                    .background(Capsule()
                                    .fill(Color(#colorLiteral(red: 0.1420793831, green: 0.256313622, blue: 0.69624722, alpha: 1))))
                    .offset(x: -40, y: -80)
            }
            
            ZStack{
                Image("sample2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 162, height: 171, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                Text("#myLove")
                    .font(.custom("LexendDeca-Regular.", size: 10))
                    .foregroundColor(.white)
                    .padding(.vertical, 5)
                    .padding(.horizontal)
                    .background(Capsule()
                                    .fill(Color(#colorLiteral(red: 0.1420793831, green: 0.256313622, blue: 0.69624722, alpha: 1))))
                    .offset(x: -40, y: -60)
                
            }
            
        }
    }
}


struct ImageCollectionView_2: View {
    var body: some View {
        VStack{
            
            ZStack{
                Image("sample3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 162, height: 171, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                Text("#myLove")
                    .font(.custom("LexendDeca-Regular.", size: 10))
                    .foregroundColor(.white)
                    .padding(.vertical, 5)
                    .padding(.horizontal)
                    .background(Capsule()
                                    .fill(Color(#colorLiteral(red: 0.1420793831, green: 0.256313622, blue: 0.69624722, alpha: 1))))
                    .offset(x: -40, y: -60)
                
            }
            
            ZStack{
                Image("sample4")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 162, height: 213, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                Text("#myLove")
                    .font(.custom("LexendDeca-Regular.", size: 10))
                    .foregroundColor(.white)
                    .padding(.vertical, 5)
                    .padding(.horizontal)
                    .background(Capsule()
                                    .fill(Color(#colorLiteral(red: 0.1420793831, green: 0.256313622, blue: 0.69624722, alpha: 1))))
                    .offset(x: -40, y: -80)
            }
            
        }
    }
}
