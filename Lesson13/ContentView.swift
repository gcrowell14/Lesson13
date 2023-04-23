//
//  ContentView.swift
//  Lesson13
//
//  Created by Grace Crowell on 4/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            VStack(alignment: .center, spacing: 50) {
                Text("Home Screen")
                    .font(.title)
                    .fontWeight(.heavy)
                
                NavigationLink(destination: Text("About This App ℹ️")) {
                    Text("ℹ️About Page")
                    //how do I add an "enter" here?
                    NavigationLink(destination: Text("Contact this page for information")) {
                        Text("📇Contact Page")
                            .padding(20)
                        
                        NavigationLink(destination: Text("Help me navigate the app")) {
                            Text("🚨Help")
                            
                        }
                        .navigationTitle("Home")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarHidden(true)
                        
                    }
                    .toolbar {
                        NavigationLink(destination: SecondView()) {
                            Text("About")
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
}

