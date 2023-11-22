//
//  quest.swift
//  sstincstupidathon
//
//  Created by Ang Sen Luen Matthias on 22/11/23.
//

import SwiftUI

struct quest: View {
    @State var showPopup = false
      @State var changeColour = false
      @State var math = false
      @State var hi = false
      @State var goodQuestion = false
      @State var sci = false
        @State var text = "Nothing here"
        @State var popUp1 = "You stoobid"
        @State var popUp2 = "Great choice !"
        @State var popUp3 = "That's right UWU"
        @State var popUp4 = "Your teacher hates you now"
        @State var popUp5 = "I hate you now"

        var body: some View {
            NavigationView {
                VStack {
                    List {
                        Text(text)
                            .font(.largeTitle)
                            .fontWeight(.heavy)

                        Button("Change colour"){
                            changeColour = true
                        }
                        .alert("Change text colour", isPresented: $changeColour) {
                            Button("Red") { text = "I don't want red so too bad ~" }
                            Button("Blue") { text = "Yeahhhh I can't code"}
                            Button("Yellow") { text = "Idk how to change the colour (too bad)"}
                        }

                        Button("Press"){
                            showPopup = true
                        }
                        .alert("Important message", isPresented: $showPopup) {
                            Button("No") { text = "HOW DARE YOU SAY NO" }
                            Button("Hi") { text = "bye"}
                        }
                        Button("Do math"){
                            math = true
                        }
                        .alert("x + 2y = 15, 2x + 3y = 24", isPresented: $math) {
                            Button("x = 1") { text = popUp1}
                            Button("x = -197755331") { text = popUp4}
                            Button("y = 7") {text = popUp1 }
                            Button("I don't know") { text = popUp3}

                        }
                        Button("English"){
                            hi = true
                        }
                        .alert("What are your thoughts about english ?", isPresented: $hi) {
                            Button("English is so fun") { text = popUp5}
                            Button("English is the best") { text = popUp5}
                            Button("English sucks") { text = popUp3}
                        }
                        Button("Good question"){
                            goodQuestion = true
                        }
                        .alert("Are you dumb ?", isPresented: $goodQuestion) {
                            Button("No, I am stupid") {text = popUp2 }
                            Button("Yes because I love history") {text = popUp2 }
                            Button("Yes") { text = popUp2 }
                        }
                        Button("Science is so fun"){
                            sci = true
                        }
                        .tint(.orange)
                        .alert("What is the definition of photosynthesis ?", isPresented: $sci) {
                                Button("Biology sucks") {text = popUp4 }
                            Button("The process of plants taking picture") {text = popUp1 }
                            Button("the process by which green plants and some other organisms use sunlight to synthesize nutrients from carbon dioxide and water. Photosynthesis in plants generally involves the green pigment chlorophyll and generates oxygen as a by-product.") { text = popUp3}
                        }

                    }
                    .foregroundColor(.purple)
                }
            }
        }

}

#Preview {
    quest()
}
