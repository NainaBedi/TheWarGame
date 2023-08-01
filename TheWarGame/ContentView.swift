//
//  ContentView.swift
//  TheWarGame
//
//  Created by Nayana Sharma on 6/14/23.
//

import SwiftUI

struct ContentView: View {
    //State changes how the interface of the cards looks
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack
        {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack
            {
              Spacer()
              Image("logo")
                
            HStack
                {
                    Spacer()
                    Image(playerCard)
                    
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button
                {
                    deal()
                }
            label:
                {
                    Image("button")
                }
                .foregroundColor(.white)

                
                Spacer()
                HStack
                {
                    Spacer()
                    VStack
                    {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                        //actual scoring here
                    }
                    Spacer()
                    VStack
                    {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
            }
            
        }
        
    }
    
     func deal()
    {
        //Randomize the player's card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomize the cpus card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //Update the scores
        if playerCardValue > cpuCardValue
        {
            //Add 1 to player score
            playerScore += 1
            
        }
        else if cpuCardValue > playerCardValue
        {
            //Add 1 to cpu score
            cpuScore += 1
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
