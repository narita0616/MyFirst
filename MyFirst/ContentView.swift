//
//  ContentView.swift
//  MyFirst
//
//  Created by 成田陸人 on 2023/12/09.
//

import SwiftUI

struct ContentView: View {
    
    @State var jankenNumber: Int = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            
            if(jankenNumber == 0){
                Text("これからじゃんけんをします！")
                    .padding(.bottom)
            }else if(jankenNumber == 1){
                Image(.gu)
                    .resizable()
                    .scaledToFit()
                Text("グー")
                    .padding(.bottom)
            }else if(jankenNumber == 2){
                Image(.choki)
                    .resizable()
                    .scaledToFit()
                Text("チョキ")
                    .padding(.bottom)
            }else{
                Image(.pa)
                    .resizable()
                    .scaledToFit()
                Text("パー")
                    .padding(.bottom)
            }
            
            Button(action: {
                var newJankenNumber: Int = 0
                
                repeat {
                    newJankenNumber = Int.random(in: 1...3)
                } while jankenNumber == newJankenNumber
                
                jankenNumber = newJankenNumber
            }, label: {
                Text("じゃんけんをする！")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .background(.pink)
                    .foregroundColor(.white)
            })
        }
        
    }
}

#Preview {
    ContentView()
}
