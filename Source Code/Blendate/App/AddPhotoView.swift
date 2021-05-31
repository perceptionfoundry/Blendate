//
//  AddPhotoView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 29/05/2021.
//

import SwiftUI

struct AddPhotoView: View {
    
    @State var showImagePicker: Bool = false
    @State var isSegue = false
    @State var profileDP: UIImage? = UIImage(named: "Add Image")
    @State var coverDP: UIImage? = UIImage(named: "Add Image")
    @State var selectedImage = ""
    var body: some View {
        
        VStack{
            HStack {
                Button(action: {
                    
                }, label: {
                    Image("Back_Arrow_Blue")
            })
                Spacer()
                
                NavigationLink(
                    destination: AboutMeView(),
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
            
       
                Text("Add Photos")
                    .font(.custom("Montserrat-SemiBold", size: 32))
                    .foregroundColor(Color("Blue_Color"))
                    .padding(.top, 20)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
          
            
            HStack{
                VStack{
                    Text("Profile Photo")
                        .foregroundColor(Color("Blue_Color"))
                        .font(.custom("Montserrat-Regular", size: 14))
                        .padding(.bottom, 1)
                    
                    Button(action: {
                        selectedImage = "PROFILE"
                        showImagePicker.toggle()
                    }, label: {
                        Image(uiImage: profileDP!)
                            .resizable()
                            .frame(width: 160, height: 214, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .scaledToFill()
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    })
                   
                }
                .padding(.trailing)
                
                VStack{
                    Text("Cover Photo")
                        .foregroundColor(Color("Blue_Color"))
                        .font(.custom("Montserrat-Regular", size: 14))
                        .padding(.bottom, 1)
                   
                    Button(action: {
                        selectedImage = "COVER"
                        showImagePicker.toggle()
                    }, label: {
                        Image(uiImage: coverDP!)
                            .resizable()
                            .frame(width: 160, height: 214, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .scaledToFill()
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    })
                }
            }
            .padding()
            .padding(.bottom, 70)
            
           
            VStack{
                Text("Add up to 6 photos to your gallery ")
                    .foregroundColor(Color.white)
                    .font(.custom("Montserrat-Regular", size: 14))
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    
                    HStack {
                        ForEach(1 ... 6, id:\.self){index  in
                            Image("Add Image")
                                .resizable()
                                .frame(width: 100, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                        }
                    }
                    .padding()
                })
                
                Text("Hold and drag photos to rearrange  ")
                    .foregroundColor(Color.white)
                    .font(.custom("Montserrat-Regular", size: 14))
            }
        
          
          Spacer()
            
            Text("As part of our Community Guidelines; pictures of minors are prohibited, unless accompanied by an adult")
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .font(.custom("Montserrat-Regular", size: 14))
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
                        
                }
                    
                }
                
            })
        .sheet(isPresented: $showImagePicker) {
            ImagePickerView(sourceType: .photoLibrary) { (getImage) in
                
                if selectedImage == "PROFILE"{
                self.profileDP = getImage
                }else if selectedImage == "COVER"{
                    self.coverDP = getImage
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
                       
    }
}

struct AddPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        AddPhotoView()
    }
}
