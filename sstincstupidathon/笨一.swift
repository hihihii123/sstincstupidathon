//
//  笨一.swift
//  sstincstupidathon
//
//  Created by Ang Sen Luen Matthias on 22/11/23.
//

import SwiftUI

struct 笨一: View {
    @Binding var premium: Bool
    @State var idiot = false
    @State var idiotII = false
    @State var idiotIII = false
    @State var hahaha = false
    @State var sad = false
    @Binding var bindedFakePremium: Bool
    var body: some View {
        VStack {
            Text("Premium enables new features and reduces ads.")
            if !premium {
                Button {
                    hahaha = true
                    bindedFakePremium = true
                
                } label: {
                    Image("premium")
                }
                
            } else {
                Text("Thank you for buying premium.")
            }
            
        }
        .alert("Paynow to 1800-PAY-6969 $69.99 for premium", isPresented: $hahaha) {
            Button("Paid") {
                idiot = true
                premium = true
                
            }
            Button("Cancel") {
                idiotII = true
                premium = false
            }
        }
        .alert("Thank you for buying premium", isPresented: $idiot) {
            Button("Refund", role:.destructive) {
                idiotIII = true
                premium = false
                bindedFakePremium = false
            }
            Button("Accept", role: .cancel){bindedFakePremium = false}
        }
        .alert("haiyaa why no premium you know we have a family to support, children to feed, house to buy, all from income from this ONE app and you dont give us our income??? YOU WANT US DIE FROM STARVATION AH??? 你什么公德心都没有！你父母离你，你爷爷奶奶外婆外公都为了你就杀死自己，你还这么坏人！！！", isPresented: $idiotII){
            Button("Buy") {
                idiot = true
                premium = true
            }
            Button{sad = true}label: {
                Text("Dont't Buy")
            }
            
        }
        .alert("Ok here your $0 refund (0% of cost)", isPresented: $idiotIII){}
        .alert("why... you this evil of a person...", isPresented: $sad) {
            Button("Buy") {
                idiot = true
                premium = true
                
            }
            Button("Don't Buy") {
                idiotII = true
            }
        }
    }
}

#Preview {
    笨一(premium: .constant(false), bindedFakePremium: .constant(false))
}
