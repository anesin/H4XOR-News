//
//  ContentView.swift
//  H4XOR News
//
//  Created by 이재영 on 1/22/25.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("H4XOR NEWS")
        }
    }
    
}


struct Post: Identifiable {
    
    let id: Int  // Hasable
    let title: String
    
}


let posts = [
    Post(id: 1, title: "Hello"),
    Post(id: 2, title: "Bonjour"),
    Post(id: 3, title: "Hola")
]


#Preview {
    ContentView()
}
