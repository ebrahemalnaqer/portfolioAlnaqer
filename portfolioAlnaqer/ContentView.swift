//
//  ContentView.swift
//  portfolioAlnaqer
//
//  Created by Ebraheem Alnaqer on 26/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = "Ebrahem"
    @State private var description = "Hi, I'm Ebrahem Alnaqer.i am a 2-year\n experienced web and mobile developer."
    
    let socialMediaLinks = [
        ("gitHub", "https://github.com/ebrahemalnaqer"),
        
        ("instagram", "https://www.instagram.com/4q4h_/"),
        
        ("X", "https://twitter.com/Ebraheemalnaqer1"),
        
        ("FaceBook", "https://www.facebook.com/profile.php?id=100085492867588&mibextid=LQQJ4d"),
        
        ("LinkedIn", "https://www.linkedin.com/in/ebrahem-alnaqer-064aa6244"),
        
        
    ]
    
    let items = [
        ("UI/UX Design Principles", "Learn about the fundamental principles of UI/UX design to create user-friendly and visually appealing interfaces. (https://www.example.com/ui-ux-design-principles)"),
        
        ("Front-End Web Development", "Explore front-end web development to build interactive and dynamic user interfaces for websites. (https://www.example.com/front-end-web-development)"),
        
        ("Swift Programming Language", "Get started with Swift, Apple's powerful and intuitive programming language for iOS, macOS, watchOS, and tvOS development. (https://www.example.com/swift-programming-language)"),
        
        ("Mastering SwiftUI", "Master SwiftUI, Apple's declarative framework for building user interfaces across all Apple platforms. (https://www.example.com/mastering-swiftui)"),
    ]
    
    //source code: GitHub
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ZStack {
                        VStack {
                            Text("Hi, I'm\(name)")
                                .font(.title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.gray)
                                .offset(x: 24)
                            
                            Text(description)
                                .font(.system(size: 10))
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.gray)
                                .offset(x: 45)
                        }
                        VStack {
                            Image("logo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 90, height: 90)
                                .cornerRadius(100)
                                .padding(33)
                                .offset(x: -20)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    }
                    .frame(width: 372, height: 163)
                    .background(Color(.systemBlue).opacity(0.2)) // Change the background color here
                    .cornerRadius(15)
                }
                .padding()
                
                ZStack {
                    VStack(alignment: .leading) {}
                    VStack {
                        Text("Follow Me")
                            .font(Font.custom("DIN Alternate", size: 13).weight(.bold))
                            .offset(x: -130, y: -30)
                    }
                    .frame(width: 372, height: 107)
                    .background(Color(.systemBlue).opacity(0.2)) // Change the background color here
                    .cornerRadius(15)
                    
                    VStack {
                        HStack {
                            ForEach(socialMediaLinks, id: \.0) { link in
                                Link(destination: URL(string: link.1)!) {
                                    Image(link.0)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 35, height: 35)
                                        .padding(7)
                                }
                            }
                        }
                        .offset(y: 10)
                    }
                }
                
                ZStack {
                    VStack(alignment: .leading) {}
                        .frame(width: 372, height: 474)
                        .background(Color(.systemBlue).opacity(0.2)) // Change the background color here
                        .cornerRadius(15)
                        .padding()
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Links")
                                .font(.title3)
                                .fontWeight(.bold)
                                .offset(x: 20)
                            
                            ForEach(items, id: \.0) { item in
                                HStack {
                                    Image(systemName: "link")
                                        .padding()
                                    
                                    VStack(alignment: .leading) {
                                        Text(item.0)
                                            .font(Font.custom("DIN Alternate", size: 15).weight(.semibold))
                                            .foregroundColor(.gray)
                                        Text(item.1)
                                            .font(Font.custom("DIN Alternate", size: 10))
                                            .frame(width: 228, alignment: .topLeading)
                                    }
                                }
                                .padding(2)
                            }
                        }
                        .padding(.trailing, 44)
                    }
                }
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
