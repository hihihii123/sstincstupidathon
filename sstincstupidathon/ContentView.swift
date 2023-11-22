//
//  ContentView.swift
//  sstincstupidathon
//
//  Created by Ang Sen Luen Matthias on 22/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var time = 10
    @State var timee = 1...10
    @State var popup = false
    @State var premium = false
    @State var fakePremium = false
    


    var body: some View {
        if !popup && !fakePremium{
            
            let _ = Timer.scheduledTimer(withTimeInterval: Double.random(in: premium ? 3...7 : 6...14 ), repeats: false) { timer in
                
                popup = true
            }
        }
        NavigationStack {
            VStack {
                
                List {
                    NavigationLink {
                        笨一(premium: $premium, bindedFakePremium: $fakePremium)
                    } label: {
                        Label(
                            title: { Text("Buy premium for less ads and more features") },
                            icon: { Image(systemName: "crown.fill") }
                        )
                    }
                    .navigationTitle("lol")
                    .navigationBarTitleDisplayMode(.large)
                    
                    if premium {
                        NavigationLink {
                            
                            stoopid_calculator()
                        } label: {
                            Text("Calculator")
                        }
                        NavigationLink {
                            quest()
                        } label: {
                            Text("Interactive Quiz")
                        }
                    } else {
                        Text("Calculator requires premium")
                        Text("Interactive Quiz requires premium")
                    }
                    
                }
            }
        }
        .sheet(isPresented: $popup, content: {
            Link(destination: URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")!, label: {
                let rando = Int.random(in: 0...1)
                if rando == 0 {
                    VStack {
                        Spacer()
                        Text("GREAT SINGAPORE SALE!!!")
                            .bold()
                        VStack {
                            
                            Label(
                                title: { VStack {Text("Office Chair")
                                    Text("$69.99")
                                    Image("new-icon-1497910_640")
                                        .resizable()
                                    .scaledToFit()} },
                                icon: { Image("pexels-hormel-2762247")
                                        .resizable()
                                    .scaledToFit()} )
                            Label(
                                title: { Image("Apple-MacBook-Pro-2up-231030")
                                        .resizable()
                                    .scaledToFit()},
                                icon: { VStack {Text("Macbook Pro 14 inch M3 Max")
                                    VStack {
                                        Text("Used to be")
                                        Text("S$4699")
                                            .strikethrough()
                                    }
                                    Text("NOW: S$3699")
                                        .bold()
                                    
                                    
                                } }
                            )
                        }
                        
                        Spacer()
                        Text("BUY NOW BEFORE ALL SOLD OUT LIAO")
                            .bold()
                    }
                    .background(.yellow)
                    
                } else if rando == 1 {
                    Link(destination: URL(string: "https://www.google.com/search?client=safari&rls=en&q=monopoly+go&ie=UTF-8&oe=UTF-8&safe=active")!, label: {
                        Image("11513503393_9dabbda7cd_k")
                            .resizable()
                            .scaledToFit()
                    })
                }
            })
        })
    }
}

#Preview {
    ContentView()
}

